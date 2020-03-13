# # Copyright (c) 2018-2020, NVIDIA CORPORATION.

# from libcpp.memory cimport unique_ptr
# from cudf._libxx.move cimport move

# from cudf._libxx.cpp.column.column cimport column
# from cudf._libxx.cpp.scalar.scalar cimport scalar
# from cudf._libxx.cpp.types cimport size_type
# from cudf._libxx.cpp.column.column_view cimport column_view
# from cudf._libxx.cpp.nvtext.ngrams_tokenize cimport (
#     ngrams_tokenize as cpp_ngrams_tokenize
# )
# from cudf._libxx.column cimport Column
# from cudf._libxx.scalar cimport Scalar


# def ngrams_tokenize(
#     Column strings,
#     int ngrams,
#     Scalar delimiter,
#     Scalar separator
# ):
#     cdef column_view c_strings = strings.view()
#     cdef size_type c_ngrams = ngrams
#     cdef scalar* c_separator = separator.c_value.get()
#     cdef scalar* c_delimiter = delimiter.c_value.get()
#     cdef unique_ptr[column] c_result

#     with nogil:
#         c_result = move(
#             cpp_ngrams_tokenize(
#                 c_strings,
#                 c_ngrams,
#                 c_delimiter[0],
#                 c_separator[0]
#             )
#         )

#     return Column.from_unique_ptr(move(c_result))
