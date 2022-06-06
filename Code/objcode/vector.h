#ifndef __vector__
#define __vector__

#define vector(x) typedef struct vector__##x{\
    int length, pos, size;\
    x* a;\
}vector__##x;\
typedef vector__##x* vector_##x;

#define init_v(x) static void init_v_##x(vector_##x* vec){\
    *vec = malloc(sizeof(vector__##x));\
    (*vec)->length = 0;\
    (*vec)->pos = 0;\
    (*vec)->size = 16;\
    (*vec)->a = malloc(sizeof(x) * 16);\
}

#define push_back_v(x) static void push_back_v_##x(vector_##x vec, x val){\
     if (vec->length + 1> vec->size){\
         vec->size *= 4;\
         x* b = malloc(sizeof(x) * vec->size);\
         for(int i = 0; i < vec->length; i++){\
            b[i] = vec->a[i];\
        }\
        free(vec->a);\
        vec->a = b;\
    }\
    vec->a[vec->length++] = val;\
}

#define resize_v(x) static void resize_v_##x(vector_##x vec, int size){\
    for(int i = 0; i < size; i++) push_back_v_##x(vec, 0);\
}

#define pop_v(x)  static x pop_v_##x(vector_##x vec){\
    if (vec->pos  >= vec->length) return -1;\
    else return vec->a[vec->pos++];\
}

#define top_v(x) static x top_v_##x(vector_##x vec){\
     return vec->a[vec->pos];\
}

#define del_v(x) static void del_v_##x(vector_##x vec, x val){\
    for(int i = 0; i < vec->length; i++){\
        if (vec->a[i] == val){\
            for(int j = i; j < vec->length - 1; j++){\
                vec->a[j] = vec->a[j + 1];\
            }\
            vec->length--;\
            break;\
        }\
    }\
}

#define free_v(x) static void free_x_##x(vector_##x vec){\
    free(vec->a);\
}
#define isEmpty_v(x) static int isEmpty_v_##x(vector_##x vec){\
    return vec->pos  >= vec->length;\
}

#define h_init_v(x) void init_v_##x(vector_##x* vec);
#define h_push_back_v(x) void push_back_v_##x(vector_##x vec, x val);
#define h_resize_v(x) void resize_v_##x(vector_##x vec, int size);
#define h_pop_v(x)  x pop_v_##x(vector_##x vec);
#define h_top_v(x) x top_v_##x(vector_##x vec);
#define h_del_v(x) void del_v_##x(vector_##x vec, x val);
#define h_free_v(x) void free_x_##x(vector_##x vec);
#define h_isEmpty_v(x) int isEmpty_v_##x(vector_##x vec);

#define h_gen_v(x) vector(int)\
h_init_v(int)\
h_push_back_v(int)\
h_resize_v(int)\
h_pop_v(int)\
h_top_v(int)\
h_del_v(int)\
h_free_v(int)\
h_isEmpty_v(int)

#define gen_v(x) init_v(int)\
push_back_v(int)\
resize_v(int)\
pop_v(int)\
top_v(int)\
del_v(int)\
free_v(int)\
isEmpty_v(int)


//h_gen_v(int)
#endif