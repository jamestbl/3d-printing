#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

typedef struct {
    enum {
	MOVE,
	START_TOWER,
	END_TOWER,
	SET_E,
	DONE
    } t;
    union {
	struct {
	    double z, e;
	} move;
	double e;
    } x;
} token_t;

static char buf[1024*1024];

static int
find_arg(const char *buf, char arg, double *val)
{
    size_t i;

    for (i = 0; buf[i]; i++) {
	if (buf[i] == ' ' && buf[i+1] == arg) {
	     if (sscanf(&buf[i+2], "%lf", val) > 0) {
		return 1;
	     }
	     return 0;
	}
    }
}

#define STRNCMP(a, b) strncmp(a, b, strlen(b))

static token_t
get_next_token()
{
    token_t t;

    while (fgets(buf, sizeof(buf), stdin) != NULL) {
	if (STRNCMP(buf, "G1 ") == 0) {
	    t.t = MOVE;
	    if (! find_arg(buf, 'Z', &t.x.move.z)) t.x.move.z = NAN;
	    if (! find_arg(buf, 'E', &t.x.move.e)) t.x.move.e = NAN;
	    return t;
	}
	if (STRNCMP(buf, "; finishing tower layer") == 0 ||
	    STRNCMP(buf, "; finishing sparse tower layer") == 0) {
	    t.t = START_TOWER;
	    return t;
	}
	if (STRNCMP(buf, "; leaving transition tower") == 0) {
	    t.t = END_TOWER;
	    return t;
	}
	if (STRNCMP(buf, "G92 ") == 0) {
	    t.t = SET_E;
	    if (find_arg(buf, 'E', &t.x.e)) return t;
	}
    }

    t.t = DONE;
    return t;
}

static double last_z = 0, start_e = 0, last_e = 0, acc_e = 0;

static void
accumulate()
{
    acc_e += (last_e - start_e);
}

static void
reset_state()
{
    start_e = last_e;
    acc_e = 0;
}

int main(int argc, char **argv)
{
    while (1) {
	token_t t = get_next_token();
	switch(t.t) {
	case MOVE:
	    if (t.x.move.e > last_e) last_e = t.x.move.e;
	    if (! isnan(t.x.move.z) && t.x.move.z != last_z) {
		accumulate();
		if (acc_e > 0) printf("Z %.02f E %.02f\n", last_z, acc_e);
		last_z = t.x.move.z;
		reset_state();
	    }
	    break;
	case START_TOWER:
	    accumulate();
	    if (acc_e) printf("Z %.02f E %.02f\n", last_z, acc_e);
	    printf("> %.02f\n", last_z);
	    reset_state();
	    break;
	case END_TOWER:
	    accumulate();
	    printf("< %.02f E %.02f\n", last_z, acc_e);
	    reset_state();
	    break;
	case SET_E:
	    accumulate();
	    start_e = t.x.e;
	    last_e = t.x.e;
	    break;
	case DONE:
	    return 0;
	}
    }
}