Й
ь7С7
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
[
BucketizeWithInputBoundaries

input"T

boundaries

output"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
я
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-0-ga6d8ffae098тТ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
o
'ParseExample/ParseExample/sparse_keys_0Const*
valueB Bcompany*
dtype0*
_output_shapes
: 
|
'ParseExample/ParseExample/sparse_keys_1Const*%
valueB Bdropoff_census_tract*
dtype0*
_output_shapes
: 
~
'ParseExample/ParseExample/sparse_keys_2Const*'
valueB Bdropoff_community_area*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/sparse_keys_3Const*!
valueB Bdropoff_latitude*
dtype0*
_output_shapes
: 
y
'ParseExample/ParseExample/sparse_keys_4Const*"
valueB Bdropoff_longitude*
dtype0*
_output_shapes
: 
l
'ParseExample/ParseExample/sparse_keys_5Const*
valueB
 Bfare*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/sparse_keys_6Const*
valueB Bpayment_type*
dtype0*
_output_shapes
: 
{
'ParseExample/ParseExample/sparse_keys_7Const*$
valueB Bpickup_census_tract*
dtype0*
_output_shapes
: 
}
'ParseExample/ParseExample/sparse_keys_8Const*&
valueB Bpickup_community_area*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/sparse_keys_9Const* 
valueB Bpickup_latitude*
dtype0*
_output_shapes
: 
y
(ParseExample/ParseExample/sparse_keys_10Const*!
valueB Bpickup_longitude*
dtype0*
_output_shapes
: 
s
(ParseExample/ParseExample/sparse_keys_11Const*
valueB B
trip_miles*
dtype0*
_output_shapes
: 
u
(ParseExample/ParseExample/sparse_keys_12Const*
valueB Btrip_seconds*
dtype0*
_output_shapes
: 
w
(ParseExample/ParseExample/sparse_keys_13Const*
valueB Btrip_start_day*
dtype0*
_output_shapes
: 
x
(ParseExample/ParseExample/sparse_keys_14Const* 
valueB Btrip_start_hour*
dtype0*
_output_shapes
: 
y
(ParseExample/ParseExample/sparse_keys_15Const*!
valueB Btrip_start_month*
dtype0*
_output_shapes
: 
}
(ParseExample/ParseExample/sparse_keys_16Const*%
valueB Btrip_start_timestamp*
dtype0*
_output_shapes
: 
Ч
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1'ParseExample/ParseExample/sparse_keys_2'ParseExample/ParseExample/sparse_keys_3'ParseExample/ParseExample/sparse_keys_4'ParseExample/ParseExample/sparse_keys_5'ParseExample/ParseExample/sparse_keys_6'ParseExample/ParseExample/sparse_keys_7'ParseExample/ParseExample/sparse_keys_8'ParseExample/ParseExample/sparse_keys_9(ParseExample/ParseExample/sparse_keys_10(ParseExample/ParseExample/sparse_keys_11(ParseExample/ParseExample/sparse_keys_12(ParseExample/ParseExample/sparse_keys_13(ParseExample/ParseExample/sparse_keys_14(ParseExample/ParseExample/sparse_keys_15(ParseExample/ParseExample/sparse_keys_16*
Tdense
 *
Ndense *О
_output_shapesЋ
Ј:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:::::::::::::::::*
Nsparse*
dense_shapes
 *%
sparse_types
2					
ы
ConstConst*Е
valueЋBЈ BЁ/usr/local/google/home/rongliu/tfx/pipelines/chicago_taxi_simple/Transform/transform_output/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
ы
Const_1Const*Г
valueЉBІ B/usr/local/google/home/rongliu/tfx/pipelines/chicago_taxi_simple/Transform/transform_output/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 

transform/ConstConst*E
value<B:"0hrЏТbЏТІYЏТNUЏТ.RЏТNЏТoJЏТEЏТїCЏТй@ЏТ?ЏТе=ЏТ*
dtype0*
_output_shapes
:

transform/Const_1Const*=
value4B2
"(U<'Blq'B['B:'Bs'B'Bж'BеА'BЪ'Beђ'B*
dtype0*
_output_shapes
:

V
transform/Const_2Const*
valueB
 *BD*
dtype0*
_output_shapes
: 
V
transform/Const_3Const*
valueB
 *	wuI*
dtype0*
_output_shapes
: 
ќ
transform/Const_4Const*К
valueАB­ BІ/usr/local/google/home/rongliu/tfx/pipelines/chicago_taxi_simple/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
ў
transform/Const_5Const*М
valueВBЏ BЈ/usr/local/google/home/rongliu/tfx/pipelines/chicago_taxi_simple/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
V
transform/Const_6Const*
valueB
 *R":@*
dtype0*
_output_shapes
: 
V
transform/Const_7Const*
valueB
 *уЄC*
dtype0*
_output_shapes
: 

transform/Const_8Const*E
value<B:"0qЏТcЏТ>\ЏТWЏТКSЏТєOЏТLЏТFЏТїCЏТ@ЏТѓ=ЏТC/ЏТ*
dtype0*
_output_shapes
:
~
transform/Const_9Const*9
value0B.	"$ќD'B|'B#'BN'Bю'B1'BчЏ'BуЦ'BRъ'B*
dtype0*
_output_shapes
:	
W
transform/Const_10Const*
valueB
 *m ;A*
dtype0*
_output_shapes
: 
W
transform/Const_11Const*
valueB
 *` ШB*
dtype0*
_output_shapes
: 
n
%transform/transform/inputs/fare/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

&transform/transform/inputs/fare/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/fare/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
y
0transform/transform/inputs/trip_start_hour/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

1transform/transform/inputs/trip_start_hour/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/trip_start_hour/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
}
4transform/transform/inputs/pickup_census_tract/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

5transform/transform/inputs/pickup_census_tract/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

6transform/transform/inputs/pickup_census_tract/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
5transform/transform/inputs/dropoff_census_tract/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

6transform/transform/inputs/dropoff_census_tract/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/dropoff_census_tract/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
q
(transform/transform/inputs/company/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

)transform/transform/inputs/company/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

*transform/transform/inputs/company/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
5transform/transform/inputs/trip_start_timestamp/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

6transform/transform/inputs/trip_start_timestamp/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/trip_start_timestamp/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
z
1transform/transform/inputs/pickup_longitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

2transform/transform/inputs/pickup_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/pickup_longitude/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
z
1transform/transform/inputs/trip_start_month/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

2transform/transform/inputs/trip_start_month/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

3transform/transform/inputs/trip_start_month/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
t
+transform/transform/inputs/trip_miles/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

,transform/transform/inputs/trip_miles/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

-transform/transform/inputs/trip_miles/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
{
2transform/transform/inputs/dropoff_longitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

3transform/transform/inputs/dropoff_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

4transform/transform/inputs/dropoff_longitude/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/dropoff_community_area/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

8transform/transform/inputs/dropoff_community_area/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

9transform/transform/inputs/dropoff_community_area/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

6transform/transform/inputs/pickup_community_area/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

7transform/transform/inputs/pickup_community_area/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

8transform/transform/inputs/pickup_community_area/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
v
-transform/transform/inputs/payment_type/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

.transform/transform/inputs/payment_type/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

/transform/transform/inputs/payment_type/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
v
-transform/transform/inputs/trip_seconds/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

.transform/transform/inputs/trip_seconds/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

/transform/transform/inputs/trip_seconds/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
x
/transform/transform/inputs/trip_start_day/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

0transform/transform/inputs/trip_start_day/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

1transform/transform/inputs/trip_start_day/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
n
%transform/transform/inputs/tips/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

&transform/transform/inputs/tips/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/tips/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
y
0transform/transform/inputs/pickup_latitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

1transform/transform/inputs/pickup_latitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

2transform/transform/inputs/pickup_latitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
1transform/transform/inputs/dropoff_latitude/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

2transform/transform/inputs/dropoff_latitude/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

3transform/transform/inputs/dropoff_latitude/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

3transform/transform/inputs/inputs/fare/indices_copyIdentityParseExample/ParseExample:5*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/inputs/fare/values_copyIdentityParseExample/ParseExample:22*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/fare/shape_copyIdentityParseExample/ParseExample:39*
T0	*
_output_shapes
:

>transform/transform/inputs/inputs/trip_start_hour/indices_copyIdentityParseExample/ParseExample:14*
T0	*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/trip_start_hour/values_copyIdentityParseExample/ParseExample:31*
T0	*#
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/trip_start_hour/shape_copyIdentityParseExample/ParseExample:48*
T0	*
_output_shapes
:

Btransform/transform/inputs/inputs/pickup_census_tract/indices_copyIdentityParseExample/ParseExample:7*
T0	*'
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/pickup_census_tract/values_copyIdentityParseExample/ParseExample:24*
T0*#
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/pickup_census_tract/shape_copyIdentityParseExample/ParseExample:41*
T0	*
_output_shapes
:

Ctransform/transform/inputs/inputs/dropoff_census_tract/indices_copyIdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/dropoff_census_tract/values_copyIdentityParseExample/ParseExample:18*
T0*#
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/dropoff_census_tract/shape_copyIdentityParseExample/ParseExample:35*
T0	*
_output_shapes
:

6transform/transform/inputs/inputs/company/indices_copyIdentityParseExample/ParseExample*
T0	*'
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/inputs/company/values_copyIdentityParseExample/ParseExample:17*
T0*#
_output_shapes
:џџџџџџџџџ

4transform/transform/inputs/inputs/company/shape_copyIdentityParseExample/ParseExample:34*
T0	*
_output_shapes
:

Ctransform/transform/inputs/inputs/trip_start_timestamp/indices_copyIdentityParseExample/ParseExample:16*
T0	*'
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/trip_start_timestamp/values_copyIdentityParseExample/ParseExample:33*
T0	*#
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/trip_start_timestamp/shape_copyIdentityParseExample/ParseExample:50*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/pickup_longitude/indices_copyIdentityParseExample/ParseExample:10*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/pickup_longitude/values_copyIdentityParseExample/ParseExample:27*
T0*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/pickup_longitude/shape_copyIdentityParseExample/ParseExample:44*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/trip_start_month/indices_copyIdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/trip_start_month/values_copyIdentityParseExample/ParseExample:32*
T0	*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/trip_start_month/shape_copyIdentityParseExample/ParseExample:49*
T0	*
_output_shapes
:

9transform/transform/inputs/inputs/trip_miles/indices_copyIdentityParseExample/ParseExample:11*
T0	*'
_output_shapes
:џџџџџџџџџ

8transform/transform/inputs/inputs/trip_miles/values_copyIdentityParseExample/ParseExample:28*
T0*#
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/inputs/trip_miles/shape_copyIdentityParseExample/ParseExample:45*
T0	*
_output_shapes
:

@transform/transform/inputs/inputs/dropoff_longitude/indices_copyIdentityParseExample/ParseExample:4*
T0	*'
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/dropoff_longitude/values_copyIdentityParseExample/ParseExample:21*
T0*#
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/dropoff_longitude/shape_copyIdentityParseExample/ParseExample:38*
T0	*
_output_shapes
:
 
Etransform/transform/inputs/inputs/dropoff_community_area/indices_copyIdentityParseExample/ParseExample:2*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/dropoff_community_area/values_copyIdentityParseExample/ParseExample:19*
T0*#
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/dropoff_community_area/shape_copyIdentityParseExample/ParseExample:36*
T0	*
_output_shapes
:

Dtransform/transform/inputs/inputs/pickup_community_area/indices_copyIdentityParseExample/ParseExample:8*
T0	*'
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/pickup_community_area/values_copyIdentityParseExample/ParseExample:25*
T0	*#
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/pickup_community_area/shape_copyIdentityParseExample/ParseExample:42*
T0	*
_output_shapes
:

;transform/transform/inputs/inputs/payment_type/indices_copyIdentityParseExample/ParseExample:6*
T0	*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/payment_type/values_copyIdentityParseExample/ParseExample:23*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/payment_type/shape_copyIdentityParseExample/ParseExample:40*
T0	*
_output_shapes
:

;transform/transform/inputs/inputs/trip_seconds/indices_copyIdentityParseExample/ParseExample:12*
T0	*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/trip_seconds/values_copyIdentityParseExample/ParseExample:29*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/trip_seconds/shape_copyIdentityParseExample/ParseExample:46*
T0	*
_output_shapes
:

=transform/transform/inputs/inputs/trip_start_day/indices_copyIdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/trip_start_day/values_copyIdentityParseExample/ParseExample:30*
T0	*#
_output_shapes
:џџџџџџџџџ

;transform/transform/inputs/inputs/trip_start_day/shape_copyIdentityParseExample/ParseExample:47*
T0	*
_output_shapes
:

3transform/transform/inputs/inputs/tips/indices_copyIdentity'transform/transform/inputs/tips/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/inputs/tips/values_copyIdentity&transform/transform/inputs/tips/values*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/tips/shape_copyIdentity%transform/transform/inputs/tips/shape*
T0	*
_output_shapes
:

>transform/transform/inputs/inputs/pickup_latitude/indices_copyIdentityParseExample/ParseExample:9*
T0	*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/pickup_latitude/values_copyIdentityParseExample/ParseExample:26*
T0*#
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/pickup_latitude/shape_copyIdentityParseExample/ParseExample:43*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/dropoff_latitude/indices_copyIdentityParseExample/ParseExample:3*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/dropoff_latitude/values_copyIdentityParseExample/ParseExample:20*
T0*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/dropoff_latitude/shape_copyIdentityParseExample/ParseExample:37*
T0	*
_output_shapes
:
q
'transform/transform/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)transform/transform/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)transform/transform/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
!transform/transform/strided_sliceStridedSlice7transform/transform/inputs/inputs/trip_miles/shape_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
r
0transform/transform/SparseToDense/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Й
.transform/transform/SparseToDense/output_shapePack!transform/transform/strided_slice0transform/transform/SparseToDense/output_shape/1*
T0	*
N*
_output_shapes
:
t
/transform/transform/SparseToDense/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ъ
!transform/transform/SparseToDenseSparseToDense9transform/transform/inputs/inputs/trip_miles/indices_copy.transform/transform/SparseToDense/output_shape8transform/transform/inputs/inputs/trip_miles/values_copy/transform/transform/SparseToDense/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
|
6transform/transform/scale_to_z_score/mean_and_var/SizeSizetransform/transform/Squeeze*
T0*
_output_shapes
: 
І
6transform/transform/scale_to_z_score/mean_and_var/CastCast6transform/transform/scale_to_z_score/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0

7transform/transform/scale_to_z_score/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Г
5transform/transform/scale_to_z_score/mean_and_var/SumSumtransform/transform/Squeeze7transform/transform/scale_to_z_score/mean_and_var/Const*
T0*
_output_shapes
: 
д
9transform/transform/scale_to_z_score/mean_and_var/truedivRealDiv5transform/transform/scale_to_z_score/mean_and_var/Sum6transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
Т
5transform/transform/scale_to_z_score/mean_and_var/subSubtransform/transform/Squeeze9transform/transform/scale_to_z_score/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
8transform/transform/scale_to_z_score/mean_and_var/SquareSquare5transform/transform/scale_to_z_score/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/scale_to_z_score/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
д
7transform/transform/scale_to_z_score/mean_and_var/Sum_1Sum8transform/transform/scale_to_z_score/mean_and_var/Square9transform/transform/scale_to_z_score/mean_and_var/Const_1*
T0*
_output_shapes
: 
и
;transform/transform/scale_to_z_score/mean_and_var/truediv_1RealDiv7transform/transform/scale_to_z_score/mean_and_var/Sum_16transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
~
=transform/transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

?transform/transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 

(transform/transform/scale_to_z_score/subSubtransform/transform/Squeezetransform/Const_6*
T0*#
_output_shapes
:џџџџџџџџџ
e
)transform/transform/scale_to_z_score/SqrtSqrttransform/Const_7*
T0*
_output_shapes
: 
t
/transform/transform/scale_to_z_score/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
-transform/transform/scale_to_z_score/NotEqualNotEqual)transform/transform/scale_to_z_score/Sqrt/transform/transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: 
К
,transform/transform/scale_to_z_score/truedivRealDiv(transform/transform/scale_to_z_score/sub)transform/transform/scale_to_z_score/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
ъ
+transform/transform/scale_to_z_score/SelectSelect-transform/transform/scale_to_z_score/NotEqual,transform/transform/scale_to_z_score/truediv(transform/transform/scale_to_z_score/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Б
#transform/transform/strided_slice_1StridedSlice1transform/transform/inputs/inputs/fare/shape_copy)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
T0	*
Index0*
_output_shapes
: *
shrink_axis_mask
t
2transform/transform/SparseToDense_1/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_1/output_shapePack#transform/transform/strided_slice_12transform/transform/SparseToDense_1/output_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_1/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
#transform/transform/SparseToDense_1SparseToDense3transform/transform/inputs/inputs/fare/indices_copy0transform/transform/SparseToDense_1/output_shape2transform/transform/inputs/inputs/fare/values_copy1transform/transform/SparseToDense_1/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_1Squeeze#transform/transform/SparseToDense_1*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


8transform/transform/scale_to_z_score_1/mean_and_var/SizeSizetransform/transform/Squeeze_1*
T0*
_output_shapes
: 
Њ
8transform/transform/scale_to_z_score_1/mean_and_var/CastCast8transform/transform/scale_to_z_score_1/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0

9transform/transform/scale_to_z_score_1/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Й
7transform/transform/scale_to_z_score_1/mean_and_var/SumSumtransform/transform/Squeeze_19transform/transform/scale_to_z_score_1/mean_and_var/Const*
T0*
_output_shapes
: 
к
;transform/transform/scale_to_z_score_1/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_1/mean_and_var/Sum8transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
Ш
7transform/transform/scale_to_z_score_1/mean_and_var/subSubtransform/transform/Squeeze_1;transform/transform/scale_to_z_score_1/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
:transform/transform/scale_to_z_score_1/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_1/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/scale_to_z_score_1/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
к
9transform/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_1/mean_and_var/Square;transform/transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*
_output_shapes
: 
о
=transform/transform/scale_to_z_score_1/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_1/mean_and_var/Sum_18transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 

?transform/transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Atransform/transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 

*transform/transform/scale_to_z_score_1/subSubtransform/transform/Squeeze_1transform/Const_10*
T0*#
_output_shapes
:џџџџџџџџџ
h
+transform/transform/scale_to_z_score_1/SqrtSqrttransform/Const_11*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_1/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
/transform/transform/scale_to_z_score_1/NotEqualNotEqual+transform/transform/scale_to_z_score_1/Sqrt1transform/transform/scale_to_z_score_1/NotEqual/y*
T0*
_output_shapes
: 
Р
.transform/transform/scale_to_z_score_1/truedivRealDiv*transform/transform/scale_to_z_score_1/sub+transform/transform/scale_to_z_score_1/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
ђ
-transform/transform/scale_to_z_score_1/SelectSelect/transform/transform/scale_to_z_score_1/NotEqual.transform/transform/scale_to_z_score_1/truediv*transform/transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
#transform/transform/strided_slice_2StridedSlice9transform/transform/inputs/inputs/trip_seconds/shape_copy)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
t
2transform/transform/SparseToDense_2/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_2/output_shapePack#transform/transform/strided_slice_22transform/transform/SparseToDense_2/output_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_2/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
д
#transform/transform/SparseToDense_2SparseToDense;transform/transform/inputs/inputs/trip_seconds/indices_copy0transform/transform/SparseToDense_2/output_shape:transform/transform/inputs/inputs/trip_seconds/values_copy1transform/transform/SparseToDense_2/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_2Squeeze#transform/transform/SparseToDense_2*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

8transform/transform/scale_to_z_score_2/mean_and_var/SizeSizetransform/transform/Squeeze_2*
T0*
_output_shapes
: 
Њ
8transform/transform/scale_to_z_score_2/mean_and_var/CastCast8transform/transform/scale_to_z_score_2/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0

9transform/transform/scale_to_z_score_2/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Й
7transform/transform/scale_to_z_score_2/mean_and_var/SumSumtransform/transform/Squeeze_29transform/transform/scale_to_z_score_2/mean_and_var/Const*
T0*
_output_shapes
: 
к
;transform/transform/scale_to_z_score_2/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_2/mean_and_var/Sum8transform/transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: 
Ш
7transform/transform/scale_to_z_score_2/mean_and_var/subSubtransform/transform/Squeeze_2;transform/transform/scale_to_z_score_2/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
:transform/transform/scale_to_z_score_2/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_2/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/scale_to_z_score_2/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
к
9transform/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_2/mean_and_var/Square;transform/transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*
_output_shapes
: 
о
=transform/transform/scale_to_z_score_2/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_2/mean_and_var/Sum_18transform/transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: 

?transform/transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Atransform/transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 

*transform/transform/scale_to_z_score_2/subSubtransform/transform/Squeeze_2transform/Const_2*
T0*#
_output_shapes
:џџџџџџџџџ
g
+transform/transform/scale_to_z_score_2/SqrtSqrttransform/Const_3*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_2/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
/transform/transform/scale_to_z_score_2/NotEqualNotEqual+transform/transform/scale_to_z_score_2/Sqrt1transform/transform/scale_to_z_score_2/NotEqual/y*
T0*
_output_shapes
: 
Р
.transform/transform/scale_to_z_score_2/truedivRealDiv*transform/transform/scale_to_z_score_2/sub+transform/transform/scale_to_z_score_2/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
ђ
-transform/transform/scale_to_z_score_2/SelectSelect/transform/transform/scale_to_z_score_2/NotEqual.transform/transform/scale_to_z_score_2/truediv*transform/transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Й
#transform/transform/strided_slice_3StridedSlice9transform/transform/inputs/inputs/payment_type/shape_copy)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
t
2transform/transform/SparseToDense_3/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_3/output_shapePack#transform/transform/strided_slice_32transform/transform/SparseToDense_3/output_shape/1*
T0	*
N*
_output_shapes
:
r
1transform/transform/SparseToDense_3/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
д
#transform/transform/SparseToDense_3SparseToDense;transform/transform/inputs/inputs/payment_type/indices_copy0transform/transform/SparseToDense_3/output_shape:transform/transform/inputs/inputs/payment_type/values_copy1transform/transform/SparseToDense_3/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_3Squeeze#transform/transform/SparseToDense_3*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ц
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/transform/Squeeze_3Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_tableHashTableV2*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
	key_dtype0*
value_dtype0	*
_output_shapes
: 
Ј
]transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

btransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/table_initInitializeTableFromTextFileV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_tableConst_1*
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџ
з
Qtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_SizeLookupTableSizeV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table*
_output_shapes
: 

Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
Љ
Utransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/addAddQtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_SizeWtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/add/y*
T0	*
_output_shapes
: 
а
_transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_3*
num_buckets
*#
_output_shapes
:џџџџџџџџџ

etransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_LookupLookupTableFindV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_tabletransform/transform/Squeeze_3]transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/Const*#
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
щ
ctransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_SizeLookupTableSizeV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table*
_output_shapes
: 
в
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/AddAdd_transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_bucketctransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_Size*
T0	*#
_output_shapes
:џџџџџџџџџ
м
\transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/NotEqualNotEqualetransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_Lookup]transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/Const*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
Stransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_LookupSelect\transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/NotEqualetransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/hash_table_LookupWtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubUtransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Д
#transform/transform/strided_slice_4StridedSlice4transform/transform/inputs/inputs/company/shape_copy)transform/transform/strided_slice_4/stack+transform/transform/strided_slice_4/stack_1+transform/transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
t
2transform/transform/SparseToDense_4/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_4/output_shapePack#transform/transform/strided_slice_42transform/transform/SparseToDense_4/output_shape/1*
T0	*
N*
_output_shapes
:
r
1transform/transform/SparseToDense_4/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
Ъ
#transform/transform/SparseToDense_4SparseToDense6transform/transform/inputs/inputs/company/indices_copy0transform/transform/SparseToDense_4/output_shape5transform/transform/inputs/inputs/company/values_copy1transform/transform/SparseToDense_4/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_4Squeeze#transform/transform/SparseToDense_4*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ъ
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/transform/Squeeze_4Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
Ё
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_tableHashTableV2*
	key_dtype0*
value_dtype0	*
_output_shapes
: *{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1
Њ
_transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/table_initInitializeTableFromTextFileV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_tableConst*
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџ
л
Stransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_SizeLookupTableSizeV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table*
_output_shapes
: 

Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
Џ
Wtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/addAddStransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_SizeYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/add/y*
T0	*
_output_shapes
: 
в
atransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_4*#
_output_shapes
:џџџџџџџџџ*
num_buckets


gtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_LookupLookupTableFindV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_tabletransform/transform/Squeeze_4_transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/Const*#
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
э
etransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_SizeLookupTableSizeV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table*
_output_shapes
: 
и
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/AddAddatransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_bucketetransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_Size*
T0	*#
_output_shapes
:џџџџџџџџџ
т
^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/NotEqualNotEqualgtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_Lookup_transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/Const*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
Utransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_LookupSelect^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/NotEqualgtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/hash_table_LookupYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubWtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_5/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
#transform/transform/strided_slice_5StridedSlice<transform/transform/inputs/inputs/pickup_latitude/shape_copy)transform/transform/strided_slice_5/stack+transform/transform/strided_slice_5/stack_1+transform/transform/strided_slice_5/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
t
2transform/transform/SparseToDense_5/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_5/output_shapePack#transform/transform/strided_slice_52transform/transform/SparseToDense_5/output_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_5/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
к
#transform/transform/SparseToDense_5SparseToDense>transform/transform/inputs/inputs/pickup_latitude/indices_copy0transform/transform/SparseToDense_5/output_shape=transform/transform/inputs/inputs/pickup_latitude/values_copy1transform/transform/SparseToDense_5/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_5Squeeze#transform/transform/SparseToDense_5*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Д
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDimstransform/Const_96transform/transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	
л
:transform/transform/bucketize/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_52transform/transform/bucketize/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
Д
3transform/transform/bucketize/apply_buckets/ToInt64Cast:transform/transform/bucketize/apply_buckets/assign_buckets*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
s
1transform/transform/bucketize/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

1transform/transform/bucketize/apply_buckets/ShapeShape2transform/transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes
:

?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
s
)transform/transform/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
#transform/transform/strided_slice_6StridedSlice=transform/transform/inputs/inputs/pickup_longitude/shape_copy)transform/transform/strided_slice_6/stack+transform/transform/strided_slice_6/stack_1+transform/transform/strided_slice_6/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
t
2transform/transform/SparseToDense_6/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_6/output_shapePack#transform/transform/strided_slice_62transform/transform/SparseToDense_6/output_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_6/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
м
#transform/transform/SparseToDense_6SparseToDense?transform/transform/inputs/inputs/pickup_longitude/indices_copy0transform/transform/SparseToDense_6/output_shape>transform/transform/inputs/inputs/pickup_longitude/values_copy1transform/transform/SparseToDense_6/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_6Squeeze#transform/transform/SparseToDense_6*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDimstransform/Const8transform/transform/bucketize_1/quantiles/ExpandDims/dim*
T0*
_output_shapes

:
п
<transform/transform/bucketize_1/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_64transform/transform/bucketize_1/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
И
5transform/transform/bucketize_1/apply_buckets/ToInt64Cast<transform/transform/bucketize_1/apply_buckets/assign_buckets*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_1/apply_buckets/ShapeShape4transform/transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes
:

Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
s
)transform/transform/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
#transform/transform/strided_slice_7StridedSlice=transform/transform/inputs/inputs/dropoff_latitude/shape_copy)transform/transform/strided_slice_7/stack+transform/transform/strided_slice_7/stack_1+transform/transform/strided_slice_7/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
t
2transform/transform/SparseToDense_7/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_7/output_shapePack#transform/transform/strided_slice_72transform/transform/SparseToDense_7/output_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_7/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
м
#transform/transform/SparseToDense_7SparseToDense?transform/transform/inputs/inputs/dropoff_latitude/indices_copy0transform/transform/SparseToDense_7/output_shape>transform/transform/inputs/inputs/dropoff_latitude/values_copy1transform/transform/SparseToDense_7/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_7Squeeze#transform/transform/SparseToDense_7*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
И
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDimstransform/Const_18transform/transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:

п
<transform/transform/bucketize_2/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_74transform/transform/bucketize_2/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
И
5transform/transform/bucketize_2/apply_buckets/ToInt64Cast<transform/transform/bucketize_2/apply_buckets/assign_buckets*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_2/apply_buckets/ShapeShape4transform/transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes
:

Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
s
)transform/transform/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
#transform/transform/strided_slice_8StridedSlice>transform/transform/inputs/inputs/dropoff_longitude/shape_copy)transform/transform/strided_slice_8/stack+transform/transform/strided_slice_8/stack_1+transform/transform/strided_slice_8/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
t
2transform/transform/SparseToDense_8/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_8/output_shapePack#transform/transform/strided_slice_82transform/transform/SparseToDense_8/output_shape/1*
T0	*
N*
_output_shapes
:
v
1transform/transform/SparseToDense_8/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
о
#transform/transform/SparseToDense_8SparseToDense@transform/transform/inputs/inputs/dropoff_longitude/indices_copy0transform/transform/SparseToDense_8/output_shape?transform/transform/inputs/inputs/dropoff_longitude/values_copy1transform/transform/SparseToDense_8/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_8Squeeze#transform/transform/SparseToDense_8*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
И
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDimstransform/Const_88transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:
п
<transform/transform/bucketize_3/apply_buckets/assign_bucketsBucketizeWithInputBoundariestransform/transform/Squeeze_84transform/transform/bucketize_3/quantiles/ExpandDims*
T0*#
_output_shapes
:џџџџџџџџџ
И
5transform/transform/bucketize_3/apply_buckets/ToInt64Cast<transform/transform/bucketize_3/apply_buckets/assign_buckets*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_3/apply_buckets/ShapeShape4transform/transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes
:

Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
s
)transform/transform/strided_slice_9/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_9/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+transform/transform/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
#transform/transform/strided_slice_9StridedSlice<transform/transform/inputs/inputs/trip_start_hour/shape_copy)transform/transform/strided_slice_9/stack+transform/transform/strided_slice_9/stack_1+transform/transform/strided_slice_9/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
t
2transform/transform/SparseToDense_9/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
П
0transform/transform/SparseToDense_9/output_shapePack#transform/transform/strided_slice_92transform/transform/SparseToDense_9/output_shape/1*
T0	*
N*
_output_shapes
:
s
1transform/transform/SparseToDense_9/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
к
#transform/transform/SparseToDense_9SparseToDense>transform/transform/inputs/inputs/trip_start_hour/indices_copy0transform/transform/SparseToDense_9/output_shape=transform/transform/inputs/inputs/trip_start_hour/values_copy1transform/transform/SparseToDense_9/default_value*
T0	*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_9Squeeze#transform/transform/SparseToDense_9*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_10/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_10/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
$transform/transform/strided_slice_10StridedSlice;transform/transform/inputs/inputs/trip_start_day/shape_copy*transform/transform/strided_slice_10/stack,transform/transform/strided_slice_10/stack_1,transform/transform/strided_slice_10/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
u
3transform/transform/SparseToDense_10/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_10/output_shapePack$transform/transform/strided_slice_103transform/transform/SparseToDense_10/output_shape/1*
T0	*
N*
_output_shapes
:
t
2transform/transform/SparseToDense_10/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
л
$transform/transform/SparseToDense_10SparseToDense=transform/transform/inputs/inputs/trip_start_day/indices_copy1transform/transform/SparseToDense_10/output_shape<transform/transform/inputs/inputs/trip_start_day/values_copy2transform/transform/SparseToDense_10/default_value*
Tindices0	*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_10Squeeze$transform/transform/SparseToDense_10*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_11/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_11/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
С
$transform/transform/strided_slice_11StridedSlice=transform/transform/inputs/inputs/trip_start_month/shape_copy*transform/transform/strided_slice_11/stack,transform/transform/strided_slice_11/stack_1,transform/transform/strided_slice_11/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
u
3transform/transform/SparseToDense_11/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_11/output_shapePack$transform/transform/strided_slice_113transform/transform/SparseToDense_11/output_shape/1*
T0	*
N*
_output_shapes
:
t
2transform/transform/SparseToDense_11/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
п
$transform/transform/SparseToDense_11SparseToDense?transform/transform/inputs/inputs/trip_start_month/indices_copy1transform/transform/SparseToDense_11/output_shape>transform/transform/inputs/inputs/trip_start_month/values_copy2transform/transform/SparseToDense_11/default_value*
T0	*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_11Squeeze$transform/transform/SparseToDense_11*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_12/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
$transform/transform/strided_slice_12StridedSlice@transform/transform/inputs/inputs/pickup_census_tract/shape_copy*transform/transform/strided_slice_12/stack,transform/transform/strided_slice_12/stack_1,transform/transform/strided_slice_12/stack_2*
shrink_axis_mask*
Index0*
T0	*
_output_shapes
: 
u
3transform/transform/SparseToDense_12/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_12/output_shapePack$transform/transform/strided_slice_123transform/transform/SparseToDense_12/output_shape/1*
T0	*
N*
_output_shapes
:
s
2transform/transform/SparseToDense_12/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
х
$transform/transform/SparseToDense_12SparseToDenseBtransform/transform/inputs/inputs/pickup_census_tract/indices_copy1transform/transform/SparseToDense_12/output_shapeAtransform/transform/inputs/inputs/pickup_census_tract/values_copy2transform/transform/SparseToDense_12/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_12Squeeze$transform/transform/SparseToDense_12*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_13/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_13/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
$transform/transform/strided_slice_13StridedSliceAtransform/transform/inputs/inputs/dropoff_census_tract/shape_copy*transform/transform/strided_slice_13/stack,transform/transform/strided_slice_13/stack_1,transform/transform/strided_slice_13/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
u
3transform/transform/SparseToDense_13/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_13/output_shapePack$transform/transform/strided_slice_133transform/transform/SparseToDense_13/output_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_13/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
$transform/transform/SparseToDense_13SparseToDenseCtransform/transform/inputs/inputs/dropoff_census_tract/indices_copy1transform/transform/SparseToDense_13/output_shapeBtransform/transform/inputs/inputs/dropoff_census_tract/values_copy2transform/transform/SparseToDense_13/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_13Squeeze$transform/transform/SparseToDense_13*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_14/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
$transform/transform/strided_slice_14StridedSliceBtransform/transform/inputs/inputs/pickup_community_area/shape_copy*transform/transform/strided_slice_14/stack,transform/transform/strided_slice_14/stack_1,transform/transform/strided_slice_14/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
u
3transform/transform/SparseToDense_14/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_14/output_shapePack$transform/transform/strided_slice_143transform/transform/SparseToDense_14/output_shape/1*
T0	*
N*
_output_shapes
:
t
2transform/transform/SparseToDense_14/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
щ
$transform/transform/SparseToDense_14SparseToDenseDtransform/transform/inputs/inputs/pickup_community_area/indices_copy1transform/transform/SparseToDense_14/output_shapeCtransform/transform/inputs/inputs/pickup_community_area/values_copy2transform/transform/SparseToDense_14/default_value*
T0	*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_14Squeeze$transform/transform/SparseToDense_14*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
t
*transform/transform/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_15/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ч
$transform/transform/strided_slice_15StridedSliceCtransform/transform/inputs/inputs/dropoff_community_area/shape_copy*transform/transform/strided_slice_15/stack,transform/transform/strided_slice_15/stack_1,transform/transform/strided_slice_15/stack_2*
T0	*
Index0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/SparseToDense_15/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_15/output_shapePack$transform/transform/strided_slice_153transform/transform/SparseToDense_15/output_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_15/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ы
$transform/transform/SparseToDense_15SparseToDenseEtransform/transform/inputs/inputs/dropoff_community_area/indices_copy1transform/transform/SparseToDense_15/output_shapeDtransform/transform/inputs/inputs/dropoff_community_area/values_copy2transform/transform/SparseToDense_15/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_15Squeeze$transform/transform/SparseToDense_15*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_16/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_16/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Е
$transform/transform/strided_slice_16StridedSlice1transform/transform/inputs/inputs/fare/shape_copy*transform/transform/strided_slice_16/stack,transform/transform/strided_slice_16/stack_1,transform/transform/strided_slice_16/stack_2*
shrink_axis_mask*
T0	*
Index0*
_output_shapes
: 
u
3transform/transform/SparseToDense_16/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_16/output_shapePack$transform/transform/strided_slice_163transform/transform/SparseToDense_16/output_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_16/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
$transform/transform/SparseToDense_16SparseToDense3transform/transform/inputs/inputs/fare/indices_copy1transform/transform/SparseToDense_16/output_shape2transform/transform/inputs/inputs/fare/values_copy2transform/transform/SparseToDense_16/default_value*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/transform/Squeeze_16Squeeze$transform/transform/SparseToDense_16*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_17/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_17/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,transform/transform/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Е
$transform/transform/strided_slice_17StridedSlice1transform/transform/inputs/inputs/tips/shape_copy*transform/transform/strided_slice_17/stack,transform/transform/strided_slice_17/stack_1,transform/transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/SparseToDense_17/output_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Т
1transform/transform/SparseToDense_17/output_shapePack$transform/transform/strided_slice_173transform/transform/SparseToDense_17/output_shape/1*
T0	*
N*
_output_shapes
:
w
2transform/transform/SparseToDense_17/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
$transform/transform/SparseToDense_17SparseToDense3transform/transform/inputs/inputs/tips/indices_copy1transform/transform/SparseToDense_17/output_shape2transform/transform/inputs/inputs/tips/values_copy2transform/transform/SparseToDense_17/default_value*
Tindices0	*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_17Squeeze$transform/transform/SparseToDense_17*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
p
transform/transform/IsNanIsNantransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
y
transform/transform/zeros_like	ZerosLiketransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
}
transform/transform/CastCasttransform/transform/zeros_like*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
^
transform/transform/ConstConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

transform/transform/MulMultransform/transform/Squeeze_16transform/transform/Const*
T0*#
_output_shapes
:џџџџџџџџџ

transform/transform/GreaterGreatertransform/transform/Squeeze_17transform/transform/Mul*
T0*#
_output_shapes
:џџџџџџџџџ
|
transform/transform/Cast_1Casttransform/transform/Greater*

SrcT0
*#
_output_shapes
:џџџџџџџџџ*

DstT0	
Ѓ
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp

Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
я
=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims
ExpandDims-transform/transform/scale_to_z_score_1/SelectAdnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeShape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims*
T0*
_output_shapes
:

Fdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceStridedSlice8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeFdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackHdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Bdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ќ
@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shapePack@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceBdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1*
T0*
N*
_output_shapes
:
ј
:dnn/input_from_feature_columns/input_layer/fare_xf/ReshapeReshape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
љ
Cdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims
ExpandDims+transform/transform/scale_to_z_score/SelectGdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Б
>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeShapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims*
T0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeLdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackNdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceHdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1*
T0*
N*
_output_shapes
:

@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeReshapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDimsFdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
џ
Ednn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims
ExpandDims-transform/transform/scale_to_z_score_2/SelectIdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Е
@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeShapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeNdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1*
T0*
N*
_output_shapes
:

Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDimsHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
1dnn/input_from_feature_columns/input_layer/concatConcatV2:dnn/input_from_feature_columns/input_layer/fare_xf/Reshape@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeBdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ
Х
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB"   d   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *о%wО*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *о%w>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
Ю
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*
shape
:d*0
shared_name!dnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
: 

@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
Ч
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
Ў
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueBd*    *
dtype0*
_output_shapes
:d
Ф
dnn/hiddenlayer_0/bias/part_0VarHandleOp*
shape:d*.
shared_namednn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
: 

>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d

'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes

:d
Ё
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*'
_output_shapes
:џџџџџџџџџd

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
T0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*'
_output_shapes
:џџџџџџџџџd
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:џџџџџџџџџd
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*'
_output_shapes
:џџџџџџџџџd*

DstT0
h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
p
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ћ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"d   F   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *H`@О*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *H`@>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
Ю
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*
shape
:dF*0
shared_name!dnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
: 

@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
Ч
3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
Ў
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
valueBF*    *
dtype0*
_output_shapes
:F
Ф
dnn/hiddenlayer_1/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
: *
shape:F*.
shared_namednn/hiddenlayer_1/bias/part_0

>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F

'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
v
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes

:dF

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
T0*'
_output_shapes
:џџџџџџџџџF

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*'
_output_shapes
:џџџџџџџџџF
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџF
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:џџџџџџџџџF
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:џџџџџџџџџF*

DstT0
j
dnn/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
v
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"F   0   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *йчfО*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *йчf>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0

>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0

:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0
Ю
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
: *
shape
:F0*0
shared_name!dnn/hiddenlayer_2/kernel/part_0

@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0
Ч
3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
Ў
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
valueB0*    *
dtype0*
_output_shapes
:0
Ф
dnn/hiddenlayer_2/bias/part_0VarHandleOp*
shape:0*.
shared_namednn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
: 

>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0

'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
v
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
T0*
_output_shapes

:F0

dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
T0*'
_output_shapes
:џџџџџџџџџ0

%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0
n
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
T0*
_output_shapes
:0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ0
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:џџџџџџџџџ0
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0*

DstT0
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
v
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB"0   "   *
dtype0*
_output_shapes
:
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *О*
dtype0*
_output_shapes
: 
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *>*
dtype0*
_output_shapes
: 

Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"

>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"

:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"
Ю
dnn/hiddenlayer_3/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes
: *
shape
:0"*0
shared_name!dnn/hiddenlayer_3/kernel/part_0

@dnn/hiddenlayer_3/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
и
&dnn/hiddenlayer_3/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0
Ч
3dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
Ў
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
valueB"*    *
dtype0*
_output_shapes
:"
Ф
dnn/hiddenlayer_3/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
: *
shape:"*.
shared_namednn/hiddenlayer_3/bias/part_0

>dnn/hiddenlayer_3/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
: 
Ч
$dnn/hiddenlayer_3/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0
Н
1dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"

'dnn/hiddenlayer_3/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
v
dnn/hiddenlayer_3/kernelIdentity'dnn/hiddenlayer_3/kernel/ReadVariableOp*
T0*
_output_shapes

:0"

dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*
T0*'
_output_shapes
:џџџџџџџџџ"

%dnn/hiddenlayer_3/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
n
dnn/hiddenlayer_3/biasIdentity%dnn/hiddenlayer_3/bias/ReadVariableOp*
T0*
_output_shapes
:"

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*
T0*'
_output_shapes
:џџџџџџџџџ"
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_3/EqualEqualdnn/hiddenlayer_3/Reludnn/zero_fraction_3/zero*
T0*'
_output_shapes
:џџџџџџџџџ"
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"*

DstT0
j
dnn/zero_fraction_3/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
v
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 

 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
З
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB""      *
dtype0*
_output_shapes
:
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *їќгО*
dtype0*
_output_shapes
: 
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *їќг>*
dtype0*
_output_shapes
: 
№
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
ў
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"
Й
dnn/logits/kernel/part_0VarHandleOp*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: *
shape
:"*)
shared_namednn/logits/kernel/part_0

9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
М
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
В
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
 
(dnn/logits/bias/part_0/Initializer/zerosConst*)
_class
loc:@dnn/logits/bias/part_0*
valueB*    *
dtype0*
_output_shapes
:
Џ
dnn/logits/bias/part_0VarHandleOp*
shape:*'
shared_namednn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
: 
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
Ћ
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
Ј
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
:
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
T0*
_output_shapes

:"
x
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
T0*'
_output_shapes
:џџџџџџџџџ
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:
s
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*'
_output_shapes
:џџџџџџџџџ
]
dnn/zero_fraction_4/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 

dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:џџџџџџџџџ
|
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
j
dnn/zero_fraction_4/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
v
dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
T0*
_output_shapes
: 

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 

&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
x
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
т
Olinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
valueB"ђ     *
dtype0*
_output_shapes
:
Ь
Elinear/linear_model/company_xf/weights/part_0/Initializer/zeros/ConstConst*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
?linear/linear_model/company_xf/weights/part_0/Initializer/zerosFillOlinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorElinear/linear_model/company_xf/weights/part_0/Initializer/zeros/Const*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
:	ђ
љ
-linear/linear_model/company_xf/weights/part_0VarHandleOp*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape:	ђ*>
shared_name/-linear/linear_model/company_xf/weights/part_0
Ћ
Nlinear/linear_model/company_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
: 

4linear/linear_model/company_xf/weights/part_0/AssignAssignVariableOp-linear/linear_model/company_xf/weights/part_0?linear/linear_model/company_xf/weights/part_0/Initializer/zeros*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0
ђ
Alinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ

:linear/linear_model/linear_model/company_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

6linear/linear_model/linear_model/company_xf/ExpandDims
ExpandDimsUtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup:linear/linear_model/linear_model/company_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ь
Hlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_valueCastJlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Dlinear/linear_model/linear_model/company_xf/to_sparse_input/NotEqualNotEqual6linear/linear_model/linear_model/company_xf/ExpandDimsHlinear/linear_model/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Л
Clinear/linear_model/linear_model/company_xf/to_sparse_input/indicesWhereDlinear/linear_model/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/linear_model/company_xf/to_sparse_input/valuesGatherNd6linear/linear_model/linear_model/company_xf/ExpandDimsClinear/linear_model/linear_model/company_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Н
Glinear/linear_model/linear_model/company_xf/to_sparse_input/dense_shapeShape6linear/linear_model/linear_model/company_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:
|
9linear/linear_model/linear_model/company_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
Њ
7linear/linear_model/linear_model/company_xf/num_bucketsCast9linear/linear_model/linear_model/company_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
t
2linear/linear_model/linear_model/company_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 

0linear/linear_model/linear_model/company_xf/zeroCast2linear/linear_model/linear_model/company_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
м
0linear/linear_model/linear_model/company_xf/LessLessBlinear/linear_model/linear_model/company_xf/to_sparse_input/values0linear/linear_model/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
ѓ
8linear/linear_model/linear_model/company_xf/GreaterEqualGreaterEqualBlinear/linear_model/linear_model/company_xf/to_sparse_input/values7linear/linear_model/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ж
8linear/linear_model/linear_model/company_xf/out_of_range	LogicalOr0linear/linear_model/linear_model/company_xf/Less8linear/linear_model/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Ѓ
1linear/linear_model/linear_model/company_xf/ShapeShapeBlinear/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*
_output_shapes
:
w
5linear/linear_model/linear_model/company_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
3linear/linear_model/linear_model/company_xf/ToInt64Cast5linear/linear_model/linear_model/company_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
и
:linear/linear_model/linear_model/company_xf/default_valuesFill1linear/linear_model/linear_model/company_xf/Shape3linear/linear_model/linear_model/company_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
2linear/linear_model/linear_model/company_xf/SelectSelect8linear/linear_model/linear_model/company_xf/out_of_range:linear/linear_model/linear_model/company_xf/default_valuesBlinear/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Н
8linear/linear_model/linear_model/company_xf/Shape_1/CastCastGlinear/linear_model/linear_model/company_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

?linear/linear_model/linear_model/company_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Alinear/linear_model/linear_model/company_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Alinear/linear_model/linear_model/company_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

9linear/linear_model/linear_model/company_xf/strided_sliceStridedSlice8linear/linear_model/linear_model/company_xf/Shape_1/Cast?linear/linear_model/linear_model/company_xf/strided_slice/stackAlinear/linear_model/linear_model/company_xf/strided_slice/stack_1Alinear/linear_model/linear_model/company_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

4linear/linear_model/linear_model/company_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
й
2linear/linear_model/linear_model/company_xf/Cast/xPack9linear/linear_model/linear_model/company_xf/strided_slice4linear/linear_model/linear_model/company_xf/Cast/x/1*
T0*
N*
_output_shapes
:
 
0linear/linear_model/linear_model/company_xf/CastCast2linear/linear_model/linear_model/company_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
Й
9linear/linear_model/linear_model/company_xf/SparseReshapeSparseReshapeClinear/linear_model/linear_model/company_xf/to_sparse_input/indicesGlinear/linear_model/linear_model/company_xf/to_sparse_input/dense_shape0linear/linear_model/linear_model/company_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
А
Blinear/linear_model/linear_model/company_xf/SparseReshape/IdentityIdentity2linear/linear_model/linear_model/company_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
:linear/linear_model/linear_model/company_xf/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ

Dlinear/linear_model/linear_model/company_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Clinear/linear_model/linear_model/company_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
С
>linear/linear_model/linear_model/company_xf/weighted_sum/SliceSlice;linear/linear_model/linear_model/company_xf/SparseReshape:1Dlinear/linear_model/linear_model/company_xf/weighted_sum/Slice/beginClinear/linear_model/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

>linear/linear_model/linear_model/company_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ц
=linear/linear_model/linear_model/company_xf/weighted_sum/ProdProd>linear/linear_model/linear_model/company_xf/weighted_sum/Slice>linear/linear_model/linear_model/company_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Ilinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Flinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
с
Alinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2GatherV2;linear/linear_model/linear_model/company_xf/SparseReshape:1Ilinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesFlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
ї
?linear/linear_model/linear_model/company_xf/weighted_sum/Cast/xPack=linear/linear_model/linear_model/company_xf/weighted_sum/ProdAlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
П
Flinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshape9linear/linear_model/linear_model/company_xf/SparseReshape;linear/linear_model/linear_model/company_xf/SparseReshape:1?linear/linear_model/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Э
Olinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentityBlinear/linear_model/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Elinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqualOlinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityGlinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
З
>linear/linear_model/linear_model/company_xf/weighted_sum/WhereWhereElinear/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

Flinear/linear_model/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

@linear/linear_model/linear_model/company_xf/weighted_sum/ReshapeReshape>linear/linear_model/linear_model/company_xf/weighted_sum/WhereFlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Hlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ј
Clinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2Flinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape@linear/linear_model/linear_model/company_xf/weighted_sum/ReshapeHlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Hlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
Clinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2Olinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/Identity@linear/linear_model/linear_model/company_xf/weighted_sum/ReshapeHlinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
М
Alinear/linear_model/linear_model/company_xf/weighted_sum/IdentityIdentityHlinear/linear_model/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Rlinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ї
`linear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsClinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1Clinear/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2Alinear/linear_model/linear_model/company_xf/weighted_sum/IdentityRlinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Е
dlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
З
flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
З
flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ћ
^linear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice`linear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsdlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackflinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
њ
Ulinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCast^linear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

Wlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueblinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ї
flinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*M
_classC
A?loc:@linear/linear_model/linear_model/company_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 

alinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2:linear/linear_model/linear_model/company_xf/ReadVariableOpWlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Uniqueflinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*M
_classC
A?loc:@linear/linear_model/linear_model/company_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

jlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityalinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
Д
Plinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumjlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityYlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1Ulinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

Hlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
­
Blinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1Reshapeblinear/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Hlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
О
>linear/linear_model/linear_model/company_xf/weighted_sum/ShapeShapePlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Llinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Flinear/linear_model/linear_model/company_xf/weighted_sum/strided_sliceStridedSlice>linear/linear_model/linear_model/company_xf/weighted_sum/ShapeLlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stackNlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1Nlinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

@linear/linear_model/linear_model/company_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ў
>linear/linear_model/linear_model/company_xf/weighted_sum/stackPack@linear/linear_model/linear_model/company_xf/weighted_sum/stack/0Flinear/linear_model/linear_model/company_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

=linear/linear_model/linear_model/company_xf/weighted_sum/TileTileBlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_1>linear/linear_model/linear_model/company_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
д
Clinear/linear_model/linear_model/company_xf/weighted_sum/zeros_like	ZerosLikePlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
8linear/linear_model/linear_model/company_xf/weighted_sumSelect=linear/linear_model/linear_model/company_xf/weighted_sum/TileClinear/linear_model/linear_model/company_xf/weighted_sum/zeros_likePlinear/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
И
?linear/linear_model/linear_model/company_xf/weighted_sum/Cast_1Cast;linear/linear_model/linear_model/company_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ы
@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_1Slice?linear/linear_model/linear_model/company_xf/weighted_sum/Cast_1Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginElinear/linear_model/linear_model/company_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ј
@linear/linear_model/linear_model/company_xf/weighted_sum/Shape_1Shape8linear/linear_model/linear_model/company_xf/weighted_sum*
T0*
_output_shapes
:

Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ь
@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_2Slice@linear/linear_model/linear_model/company_xf/weighted_sum/Shape_1Flinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginElinear/linear_model/linear_model/company_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Dlinear/linear_model/linear_model/company_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
У
?linear/linear_model/linear_model/company_xf/weighted_sum/concatConcatV2@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_1@linear/linear_model/linear_model/company_xf/weighted_sum/Slice_2Dlinear/linear_model/linear_model/company_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
њ
Blinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_2Reshape8linear/linear_model/linear_model/company_xf/weighted_sum?linear/linear_model/linear_model/company_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ш
Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:


6linear/linear_model/dropoff_latitude_xf/weights/part_0VarHandleOp*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape
:
*G
shared_name86linear/linear_model/dropoff_latitude_xf/weights/part_0
Н
Wlinear/linear_model/dropoff_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: 
Ћ
=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0

Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Clinear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ћ
?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims
ExpandDims5transform/transform/bucketize_2/apply_buckets/ToInt64Clinear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Slinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
о
Qlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCastSlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Mlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqual?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDimsQlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Э
Llinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWhereMlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Њ
Klinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNd?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDimsLlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Я
Plinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShape?linear/linear_model/linear_model/dropoff_latitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Blinear/linear_model/linear_model/dropoff_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
М
@linear/linear_model/linear_model/dropoff_latitude_xf/num_bucketsCastBlinear/linear_model/linear_model/dropoff_latitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
}
;linear/linear_model/linear_model/dropoff_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
9linear/linear_model/linear_model/dropoff_latitude_xf/zeroCast;linear/linear_model/linear_model/dropoff_latitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
ї
9linear/linear_model/linear_model/dropoff_latitude_xf/LessLessKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values9linear/linear_model/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Alinear/linear_model/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values@linear/linear_model/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ё
Alinear/linear_model/linear_model/dropoff_latitude_xf/out_of_range	LogicalOr9linear/linear_model/linear_model/dropoff_latitude_xf/LessAlinear/linear_model/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Е
:linear/linear_model/linear_model/dropoff_latitude_xf/ShapeShapeKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

>linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Д
<linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64Cast>linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
ѓ
Clinear/linear_model/linear_model/dropoff_latitude_xf/default_valuesFill:linear/linear_model/linear_model/dropoff_latitude_xf/Shape<linear/linear_model/linear_model/dropoff_latitude_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Ш
;linear/linear_model/linear_model/dropoff_latitude_xf/SelectSelectAlinear/linear_model/linear_model/dropoff_latitude_xf/out_of_rangeClinear/linear_model/linear_model/dropoff_latitude_xf/default_valuesKlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Я
Alinear/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastCastPlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Hlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
Blinear/linear_model/linear_model/dropoff_latitude_xf/strided_sliceStridedSliceAlinear/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastHlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackJlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Jlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

=linear/linear_model/linear_model/dropoff_latitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
є
;linear/linear_model/linear_model/dropoff_latitude_xf/Cast/xPackBlinear/linear_model/linear_model/dropoff_latitude_xf/strided_slice=linear/linear_model/linear_model/dropoff_latitude_xf/Cast/x/1*
T0*
N*
_output_shapes
:
В
9linear/linear_model/linear_model/dropoff_latitude_xf/CastCast;linear/linear_model/linear_model/dropoff_latitude_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
н
Blinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeLlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indicesPlinear/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape9linear/linear_model/linear_model/dropoff_latitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Т
Klinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/dropoff_latitude_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
К
Clinear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceSliceDlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginLlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Rlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2Dlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Rlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesOlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackFlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdJlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
у
Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshapeBlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeDlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
п
Xlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
И
Nlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityPlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Щ
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhereNlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ђ
Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/WhereOlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2Xlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ю
Jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentityQlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Є
ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2Jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Identity[linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
О
mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ј
glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsmlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackolinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ

^linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastglinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

`linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueklinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*V
_classL
JHloc:@linear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Л
jlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Clinear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOp`linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Uniqueolinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*V
_classL
JHloc:@linear/linear_model/linear_model/dropoff_latitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

slinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
и
Ylinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumslinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityblinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1^linear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ш
Klinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapeklinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Qlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
а
Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapeYlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Ulinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ї
Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceGlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ShapeUlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackWlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Wlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stackPackIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Flinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileTileKlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Glinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ц
Llinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLikeYlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ю
Alinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sumSelectFlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileLlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_likeYlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1CastDlinear/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1SliceHlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginNlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
К
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1ShapeAlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
_output_shapes
:

Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Nlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2SliceIlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1Olinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginNlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ч
Hlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Ilinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Mlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Klinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2ReshapeAlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sumHlinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zerosConst*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:


7linear/linear_model/dropoff_longitude_xf/weights/part_0VarHandleOp*
shape
:
*H
shared_name97linear/linear_model/dropoff_longitude_xf/weights/part_0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes
: 
П
Xlinear/linear_model/dropoff_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: 
Џ
>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignAssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0

Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Dlinear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
§
@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims
ExpandDims5transform/transform/bucketize_3/apply_buckets/ToInt64Dlinear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Tlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
р
Rlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastTlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Ђ
Nlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqual@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDimsRlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Я
Mlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhereNlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
­
Llinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNd@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDimsMlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
б
Qlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShape@linear/linear_model/linear_model/dropoff_longitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Clinear/linear_model/linear_model/dropoff_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
О
Alinear/linear_model/linear_model/dropoff_longitude_xf/num_bucketsCastClinear/linear_model/linear_model/dropoff_longitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
~
<linear/linear_model/linear_model/dropoff_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
А
:linear/linear_model/linear_model/dropoff_longitude_xf/zeroCast<linear/linear_model/linear_model/dropoff_longitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
њ
:linear/linear_model/linear_model/dropoff_longitude_xf/LessLessLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values:linear/linear_model/linear_model/dropoff_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesAlinear/linear_model/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
є
Blinear/linear_model/linear_model/dropoff_longitude_xf/out_of_range	LogicalOr:linear/linear_model/linear_model/dropoff_longitude_xf/LessBlinear/linear_model/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
З
;linear/linear_model/linear_model/dropoff_longitude_xf/ShapeShapeLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

?linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
=linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64Cast?linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
і
Dlinear/linear_model/linear_model/dropoff_longitude_xf/default_valuesFill;linear/linear_model/linear_model/dropoff_longitude_xf/Shape=linear/linear_model/linear_model/dropoff_longitude_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Ь
<linear/linear_model/linear_model/dropoff_longitude_xf/SelectSelectBlinear/linear_model/linear_model/dropoff_longitude_xf/out_of_rangeDlinear/linear_model/linear_model/dropoff_longitude_xf/default_valuesLlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
б
Blinear/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastCastQlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Ilinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
Clinear/linear_model/linear_model/dropoff_longitude_xf/strided_sliceStridedSliceBlinear/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastIlinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackKlinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Klinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

>linear/linear_model/linear_model/dropoff_longitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ї
<linear/linear_model/linear_model/dropoff_longitude_xf/Cast/xPackClinear/linear_model/linear_model/dropoff_longitude_xf/strided_slice>linear/linear_model/linear_model/dropoff_longitude_xf/Cast/x/1*
T0*
N*
_output_shapes
:
Д
:linear/linear_model/linear_model/dropoff_longitude_xf/CastCast<linear/linear_model/linear_model/dropoff_longitude_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
с
Clinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapeMlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indicesQlinear/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape:linear/linear_model/linear_model/dropoff_longitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Ф
Llinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentity<linear/linear_model/linear_model/dropoff_longitude_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Dlinear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
щ
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceSliceElinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginMlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Glinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Slinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2Elinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Slinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesPlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackGlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdKlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
ч
Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshapeClinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeElinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
с
Ylinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityLlinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Л
Olinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualYlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityQlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ы
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/WhereWhereOlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ѓ
Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/WherePlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
 
Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeRlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ѕ
Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2Ylinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeRlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
а
Klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentityRlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

\linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Љ
jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsMlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2Klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Identity\linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
П
nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
С
plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
С
plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
­
hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicejlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsnlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackplinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask

_linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCasthlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

alinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquellinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*W
_classM
KIloc:@linear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Р
klinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Dlinear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOpalinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Uniqueplinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*W
_classM
KIloc:@linear/linear_model/linear_model/dropoff_longitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

tlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityklinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
м
Zlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumtlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityclinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1_linear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ы
Llinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapellinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Rlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
в
Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeZlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ќ
Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceHlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ShapeVlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackXlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Xlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stackPackJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
Ђ
Glinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileTileLlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Hlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ш
Mlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeZlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ђ
Blinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sumSelectGlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileMlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeZlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ь
Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1CastElinear/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Olinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ѓ
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1SliceIlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginOlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
М
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1ShapeBlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
_output_shapes
:

Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ђ
Olinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
є
Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2SliceJlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1Plinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginOlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ы
Ilinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Jlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2Nlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Llinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2ReshapeBlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sumIlinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ь
Tlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
valueB"ђ     *
dtype0*
_output_shapes
:
ж
Jlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/ConstConst*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
п
Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zerosFillTlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorJlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/Const*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:	ђ

2linear/linear_model/payment_type_xf/weights/part_0VarHandleOp*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape:	ђ*C
shared_name42linear/linear_model/payment_type_xf/weights/part_0
Е
Slinear/linear_model/payment_type_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: 

9linear/linear_model/payment_type_xf/weights/part_0/AssignAssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0

Flinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ

?linear/linear_model/linear_model/payment_type_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

;linear/linear_model/linear_model/payment_type_xf/ExpandDims
ExpandDimsStransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup?linear/linear_model/linear_model/payment_type_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ж
Mlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_valueCastOlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Ilinear/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqual;linear/linear_model/linear_model/payment_type_xf/ExpandDimsMlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Х
Hlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesWhereIlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesGatherNd;linear/linear_model/linear_model/payment_type_xf/ExpandDimsHlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Ч
Llinear/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shapeShape;linear/linear_model/linear_model/payment_type_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

>linear/linear_model/linear_model/payment_type_xf/num_buckets/xConst*
value
B :ђ*
dtype0*
_output_shapes
: 
Д
<linear/linear_model/linear_model/payment_type_xf/num_bucketsCast>linear/linear_model/linear_model/payment_type_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
y
7linear/linear_model/linear_model/payment_type_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
І
5linear/linear_model/linear_model/payment_type_xf/zeroCast7linear/linear_model/linear_model/payment_type_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
ы
5linear/linear_model/linear_model/payment_type_xf/LessLessGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values5linear/linear_model/linear_model/payment_type_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

=linear/linear_model/linear_model/payment_type_xf/GreaterEqualGreaterEqualGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values<linear/linear_model/linear_model/payment_type_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
х
=linear/linear_model/linear_model/payment_type_xf/out_of_range	LogicalOr5linear/linear_model/linear_model/payment_type_xf/Less=linear/linear_model/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
­
6linear/linear_model/linear_model/payment_type_xf/ShapeShapeGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*
_output_shapes
:
|
:linear/linear_model/linear_model/payment_type_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ќ
8linear/linear_model/linear_model/payment_type_xf/ToInt64Cast:linear/linear_model/linear_model/payment_type_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
ч
?linear/linear_model/linear_model/payment_type_xf/default_valuesFill6linear/linear_model/linear_model/payment_type_xf/Shape8linear/linear_model/linear_model/payment_type_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
И
7linear/linear_model/linear_model/payment_type_xf/SelectSelect=linear/linear_model/linear_model/payment_type_xf/out_of_range?linear/linear_model/linear_model/payment_type_xf/default_valuesGlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Ч
=linear/linear_model/linear_model/payment_type_xf/Shape_1/CastCastLlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Dlinear/linear_model/linear_model/payment_type_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Љ
>linear/linear_model/linear_model/payment_type_xf/strided_sliceStridedSlice=linear/linear_model/linear_model/payment_type_xf/Shape_1/CastDlinear/linear_model/linear_model/payment_type_xf/strided_slice/stackFlinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Flinear/linear_model/linear_model/payment_type_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

9linear/linear_model/linear_model/payment_type_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ш
7linear/linear_model/linear_model/payment_type_xf/Cast/xPack>linear/linear_model/linear_model/payment_type_xf/strided_slice9linear/linear_model/linear_model/payment_type_xf/Cast/x/1*
T0*
N*
_output_shapes
:
Њ
5linear/linear_model/linear_model/payment_type_xf/CastCast7linear/linear_model/linear_model/payment_type_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
Э
>linear/linear_model/linear_model/payment_type_xf/SparseReshapeSparseReshapeHlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesLlinear/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shape5linear/linear_model/linear_model/payment_type_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
К
Glinear/linear_model/linear_model/payment_type_xf/SparseReshape/IdentityIdentity7linear/linear_model/linear_model/payment_type_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
Г
?linear/linear_model/linear_model/payment_type_xf/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ

Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
е
Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/SliceSlice@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginHlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ѕ
Blinear/linear_model/linear_model/payment_type_xf/weighted_sum/ProdProdClinear/linear_model/linear_model/payment_type_xf/weighted_sum/SliceClinear/linear_model/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Nlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѕ
Flinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1Nlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesKlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/xPackBlinear/linear_model/linear_model/payment_type_xf/weighted_sum/ProdFlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
г
Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshape>linear/linear_model/linear_model/payment_type_xf/SparseReshape@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
з
Tlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityGlinear/linear_model/linear_model/payment_type_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ќ
Jlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualTlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityLlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
С
Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/WhereWhereJlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeReshapeClinear/linear_model/linear_model/payment_type_xf/weighted_sum/WhereKlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeElinear/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeMlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2Tlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityElinear/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeMlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
Ц
Flinear/linear_model/linear_model/payment_type_xf/weighted_sum/IdentityIdentityMlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Wlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

elinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsHlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2Flinear/linear_model/linear_model/payment_type_xf/weighted_sum/IdentityWlinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
К
ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
М
klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
М
klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

clinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceelinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsilinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackklinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0

Zlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCastclinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

\linear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueglinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

klinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*R
_classH
FDloc:@linear/linear_model/linear_model/payment_type_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ї
flinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2?linear/linear_model/linear_model/payment_type_xf/ReadVariableOp\linear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Uniqueklinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*R
_classH
FDloc:@linear/linear_model/linear_model/payment_type_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

olinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityflinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Ulinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumolinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity^linear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1Zlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
М
Glinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapeglinear/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Mlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
Ш
Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/ShapeShapeUlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Qlinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Slinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
у
Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSliceClinear/linear_model/linear_model/payment_type_xf/weighted_sum/ShapeQlinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stackSlinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Slinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/stackPackElinear/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Blinear/linear_model/linear_model/payment_type_xf/weighted_sum/TileTileGlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Clinear/linear_model/linear_model/payment_type_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
о
Hlinear/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeUlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
о
=linear/linear_model/linear_model/payment_type_xf/weighted_sumSelectBlinear/linear_model/linear_model/payment_type_xf/weighted_sum/TileHlinear/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_likeUlinear/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Т
Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1Cast@linear/linear_model/linear_model/payment_type_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
п
Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1SliceDlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginJlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
В
Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1Shape=linear/linear_model/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:

Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
р
Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2SliceElinear/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1Klinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginJlinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
з
Dlinear/linear_model/linear_model/payment_type_xf/weighted_sum/concatConcatV2Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1Elinear/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2Ilinear/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Glinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2Reshape=linear/linear_model/linear_model/payment_type_xf/weighted_sumDlinear/linear_model/linear_model/payment_type_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:


5linear/linear_model/pickup_latitude_xf/weights/part_0VarHandleOp*
shape
:
*F
shared_name75linear/linear_model/pickup_latitude_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes
: 
Л
Vlinear/linear_model/pickup_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: 
Ї
<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0

Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Blinear/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ї
>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDims
ExpandDims3transform/transform/bucketize/apply_buckets/ToInt64Blinear/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Rlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
м
Plinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCastRlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Llinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDimsPlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Ы
Klinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ї
Jlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDimsKlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Э
Olinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/pickup_latitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Alinear/linear_model/linear_model/pickup_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
К
?linear/linear_model/linear_model/pickup_latitude_xf/num_bucketsCastAlinear/linear_model/linear_model/pickup_latitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
|
:linear/linear_model/linear_model/pickup_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ќ
8linear/linear_model/linear_model/pickup_latitude_xf/zeroCast:linear/linear_model/linear_model/pickup_latitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
є
8linear/linear_model/linear_model/pickup_latitude_xf/LessLessJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values8linear/linear_model/linear_model/pickup_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

@linear/linear_model/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values?linear/linear_model/linear_model/pickup_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ю
@linear/linear_model/linear_model/pickup_latitude_xf/out_of_range	LogicalOr8linear/linear_model/linear_model/pickup_latitude_xf/Less@linear/linear_model/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Г
9linear/linear_model/linear_model/pickup_latitude_xf/ShapeShapeJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

=linear/linear_model/linear_model/pickup_latitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
В
;linear/linear_model/linear_model/pickup_latitude_xf/ToInt64Cast=linear/linear_model/linear_model/pickup_latitude_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
№
Blinear/linear_model/linear_model/pickup_latitude_xf/default_valuesFill9linear/linear_model/linear_model/pickup_latitude_xf/Shape;linear/linear_model/linear_model/pickup_latitude_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Ф
:linear/linear_model/linear_model/pickup_latitude_xf/SelectSelect@linear/linear_model/linear_model/pickup_latitude_xf/out_of_rangeBlinear/linear_model/linear_model/pickup_latitude_xf/default_valuesJlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Э
@linear/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastCastOlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Glinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
Alinear/linear_model/linear_model/pickup_latitude_xf/strided_sliceStridedSlice@linear/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastGlinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackIlinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Ilinear/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

<linear/linear_model/linear_model/pickup_latitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ё
:linear/linear_model/linear_model/pickup_latitude_xf/Cast/xPackAlinear/linear_model/linear_model/pickup_latitude_xf/strided_slice<linear/linear_model/linear_model/pickup_latitude_xf/Cast/x/1*
T0*
N*
_output_shapes
:
А
8linear/linear_model/linear_model/pickup_latitude_xf/CastCast:linear/linear_model/linear_model/pickup_latitude_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
й
Alinear/linear_model/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indicesOlinear/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape8linear/linear_model/linear_model/pickup_latitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Р
Jlinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/pickup_latitude_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Blinear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
с
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceSliceClinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginKlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ў
Elinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdProdFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Qlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Qlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0

Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPackElinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdIlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
п
Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/pickup_latitude_xf/SparseReshapeClinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
н
Wlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Е
Mlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ч
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/WhereWhereMlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ё
Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/WhereNlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
Ь
Ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Zlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/IdentityZlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Н
llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ѓ
flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask

]linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

_linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*U
_classK
IGloc:@linear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ж
ilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Blinear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOp_linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Uniquenlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*U
_classK
IGloc:@linear/linear_model/linear_model/pickup_latitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

rlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
д
Xlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumrlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityalinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Х
Jlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
Ю
Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Tlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ђ
Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ShapeTlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stackPackHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Elinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileTileJlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Flinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ф
Klinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
@linear/linear_model/linear_model/pickup_latitude_xf/weighted_sumSelectElinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileKlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeXlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1CastClinear/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ы
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
И
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/pickup_latitude_xf/weighted_sum*
T0*
_output_shapes
:

Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
 
Mlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ь
Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Nlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
у
Glinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Hlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Llinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Jlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/pickup_latitude_xf/weighted_sumGlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ш
Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
valueB
*    *
dtype0*
_output_shapes

:


6linear/linear_model/pickup_longitude_xf/weights/part_0VarHandleOp*
shape
:
*G
shared_name86linear/linear_model/pickup_longitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes
: 
Н
Wlinear/linear_model/pickup_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: 
Ћ
=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0

Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Clinear/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ћ
?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDims
ExpandDims5transform/transform/bucketize_1/apply_buckets/ToInt64Clinear/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Slinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
о
Qlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCastSlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Mlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqual?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDimsQlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Э
Llinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indicesWhereMlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Њ
Klinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNd?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDimsLlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Я
Plinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShape?linear/linear_model/linear_model/pickup_longitude_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Blinear/linear_model/linear_model/pickup_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
М
@linear/linear_model/linear_model/pickup_longitude_xf/num_bucketsCastBlinear/linear_model/linear_model/pickup_longitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
}
;linear/linear_model/linear_model/pickup_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
9linear/linear_model/linear_model/pickup_longitude_xf/zeroCast;linear/linear_model/linear_model/pickup_longitude_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
ї
9linear/linear_model/linear_model/pickup_longitude_xf/LessLessKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values9linear/linear_model/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Alinear/linear_model/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values@linear/linear_model/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ё
Alinear/linear_model/linear_model/pickup_longitude_xf/out_of_range	LogicalOr9linear/linear_model/linear_model/pickup_longitude_xf/LessAlinear/linear_model/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Е
:linear/linear_model/linear_model/pickup_longitude_xf/ShapeShapeKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

>linear/linear_model/linear_model/pickup_longitude_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Д
<linear/linear_model/linear_model/pickup_longitude_xf/ToInt64Cast>linear/linear_model/linear_model/pickup_longitude_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
ѓ
Clinear/linear_model/linear_model/pickup_longitude_xf/default_valuesFill:linear/linear_model/linear_model/pickup_longitude_xf/Shape<linear/linear_model/linear_model/pickup_longitude_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Ш
;linear/linear_model/linear_model/pickup_longitude_xf/SelectSelectAlinear/linear_model/linear_model/pickup_longitude_xf/out_of_rangeClinear/linear_model/linear_model/pickup_longitude_xf/default_valuesKlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Я
Alinear/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastCastPlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Hlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
Blinear/linear_model/linear_model/pickup_longitude_xf/strided_sliceStridedSliceAlinear/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastHlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackJlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Jlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

=linear/linear_model/linear_model/pickup_longitude_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
є
;linear/linear_model/linear_model/pickup_longitude_xf/Cast/xPackBlinear/linear_model/linear_model/pickup_longitude_xf/strided_slice=linear/linear_model/linear_model/pickup_longitude_xf/Cast/x/1*
T0*
N*
_output_shapes
:
В
9linear/linear_model/linear_model/pickup_longitude_xf/CastCast;linear/linear_model/linear_model/pickup_longitude_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
н
Blinear/linear_model/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeLlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indicesPlinear/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape9linear/linear_model/linear_model/pickup_longitude_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Т
Klinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/pickup_longitude_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
К
Clinear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:


Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceSliceDlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginLlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdProdGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Rlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2Dlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Rlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesOlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackFlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdJlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
у
Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshapeBlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshapeDlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
п
Xlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
И
Nlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityPlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Щ
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/WhereWhereNlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ђ
Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/WhereOlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2Xlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ю
Jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentityQlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Є
ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2Jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Identity[linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
О
mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ј
glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsmlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackolinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ

^linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastglinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

`linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueklinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*V
_classL
JHloc:@linear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Л
jlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Clinear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOp`linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Uniqueolinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*V
_classL
JHloc:@linear/linear_model/linear_model/pickup_longitude_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

slinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
и
Ylinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumslinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityblinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1^linear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ш
Klinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapeklinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Qlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
а
Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapeYlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Ulinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ї
Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceGlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ShapeUlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackWlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Wlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stackPackIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Flinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileTileKlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Glinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ц
Llinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLikeYlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ю
Alinear/linear_model/linear_model/pickup_longitude_xf/weighted_sumSelectFlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileLlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_likeYlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1CastDlinear/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1SliceHlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginNlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
К
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1ShapeAlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum*
T0*
_output_shapes
:

Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Nlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2SliceIlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1Olinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginNlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ч
Hlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Ilinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Mlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Klinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2ReshapeAlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sumHlinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zerosConst*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:

4linear/linear_model/trip_start_day_xf/weights/part_0VarHandleOp*
shape
:*E
shared_name64linear/linear_model/trip_start_day_xf/weights/part_0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes
: 
Й
Ulinear/linear_model/trip_start_day_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: 
Ѓ
;linear/linear_model/trip_start_day_xf/weights/part_0/AssignAssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0

Hlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:

Alinear/linear_model/linear_model/trip_start_day_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
р
=linear/linear_model/linear_model/trip_start_day_xf/ExpandDims
ExpandDimstransform/transform/Squeeze_10Alinear/linear_model/linear_model/trip_start_day_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
к
Olinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCastQlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Klinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqual=linear/linear_model/linear_model/trip_start_day_xf/ExpandDimsOlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Щ
Jlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereKlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Є
Ilinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNd=linear/linear_model/linear_model/trip_start_day_xf/ExpandDimsJlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Ы
Nlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShape=linear/linear_model/linear_model/trip_start_day_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

@linear/linear_model/linear_model/trip_start_day_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
И
>linear/linear_model/linear_model/trip_start_day_xf/num_bucketsCast@linear/linear_model/linear_model/trip_start_day_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
{
9linear/linear_model/linear_model/trip_start_day_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Њ
7linear/linear_model/linear_model/trip_start_day_xf/zeroCast9linear/linear_model/linear_model/trip_start_day_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
ё
7linear/linear_model/linear_model/trip_start_day_xf/LessLessIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values7linear/linear_model/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

?linear/linear_model/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values>linear/linear_model/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ы
?linear/linear_model/linear_model/trip_start_day_xf/out_of_range	LogicalOr7linear/linear_model/linear_model/trip_start_day_xf/Less?linear/linear_model/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Б
8linear/linear_model/linear_model/trip_start_day_xf/ShapeShapeIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*
_output_shapes
:
~
<linear/linear_model/linear_model/trip_start_day_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
А
:linear/linear_model/linear_model/trip_start_day_xf/ToInt64Cast<linear/linear_model/linear_model/trip_start_day_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
э
Alinear/linear_model/linear_model/trip_start_day_xf/default_valuesFill8linear/linear_model/linear_model/trip_start_day_xf/Shape:linear/linear_model/linear_model/trip_start_day_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Р
9linear/linear_model/linear_model/trip_start_day_xf/SelectSelect?linear/linear_model/linear_model/trip_start_day_xf/out_of_rangeAlinear/linear_model/linear_model/trip_start_day_xf/default_valuesIlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Ы
?linear/linear_model/linear_model/trip_start_day_xf/Shape_1/CastCastNlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Flinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Hlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Hlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
@linear/linear_model/linear_model/trip_start_day_xf/strided_sliceStridedSlice?linear/linear_model/linear_model/trip_start_day_xf/Shape_1/CastFlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stackHlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Hlinear/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

;linear/linear_model/linear_model/trip_start_day_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ю
9linear/linear_model/linear_model/trip_start_day_xf/Cast/xPack@linear/linear_model/linear_model/trip_start_day_xf/strided_slice;linear/linear_model/linear_model/trip_start_day_xf/Cast/x/1*
T0*
N*
_output_shapes
:
Ў
7linear/linear_model/linear_model/trip_start_day_xf/CastCast9linear/linear_model/linear_model/trip_start_day_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
е
@linear/linear_model/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeJlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indicesNlinear/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shape7linear/linear_model/linear_model/trip_start_day_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
О
Ilinear/linear_model/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentity9linear/linear_model/linear_model/trip_start_day_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
Ж
Alinear/linear_model/linear_model/trip_start_day_xf/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:

Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
н
Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceSliceBlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginJlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ћ
Dlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdProdElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Plinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
Hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2Blinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Plinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesMlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0

Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/xPackDlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdHlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
л
Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshape@linear/linear_model/linear_model/trip_start_day_xf/SparseReshapeBlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
л
Vlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentityIlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
В
Llinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualVlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityNlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Х
Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereWhereLlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
 
Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshapeElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereMlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeOlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2Vlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeOlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ъ
Hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentityOlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Ylinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsJlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2Hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/IdentityYlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
М
klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
О
mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
О
mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceglinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsklinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackmlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask

\linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCastelinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

^linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*T
_classJ
HFloc:@linear/linear_model/linear_model/trip_start_day_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Б
hlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Alinear/linear_model/linear_model/trip_start_day_xf/ReadVariableOp^linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Uniquemlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*T
_classJ
HFloc:@linear/linear_model/linear_model/trip_start_day_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

qlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityhlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
а
Wlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumqlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity`linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1\linear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
 
Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Т
Ilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapeilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Olinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
Ь
Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ShapeShapeWlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Slinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ulinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSliceElinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/ShapeSlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackUlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Ulinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stackPackGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Dlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileTileIlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Elinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
т
Jlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikeWlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ц
?linear/linear_model/linear_model/trip_start_day_xf/weighted_sumSelectDlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileJlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_likeWlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1CastBlinear/linear_model/linear_model/trip_start_day_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ч
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1SliceFlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginLlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ж
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1Shape?linear/linear_model/linear_model/trip_start_day_xf/weighted_sum*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ш
Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2SliceGlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1Mlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginLlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
п
Flinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1Glinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2Klinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Ilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2Reshape?linear/linear_model/linear_model/trip_start_day_xf/weighted_sumFlinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:

5linear/linear_model/trip_start_hour_xf/weights/part_0VarHandleOp*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes
: *
shape
:*F
shared_name75linear/linear_model/trip_start_hour_xf/weights/part_0
Л
Vlinear/linear_model/trip_start_hour_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: 
Ї
<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0

Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:

Blinear/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
с
>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDims
ExpandDimstransform/transform/Squeeze_9Blinear/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Rlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
м
Plinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCastRlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Llinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqual>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDimsPlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Ы
Klinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereLlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ї
Jlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNd>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDimsKlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Э
Olinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShape>linear/linear_model/linear_model/trip_start_hour_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Alinear/linear_model/linear_model/trip_start_hour_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
К
?linear/linear_model/linear_model/trip_start_hour_xf/num_bucketsCastAlinear/linear_model/linear_model/trip_start_hour_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
|
:linear/linear_model/linear_model/trip_start_hour_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ќ
8linear/linear_model/linear_model/trip_start_hour_xf/zeroCast:linear/linear_model/linear_model/trip_start_hour_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
є
8linear/linear_model/linear_model/trip_start_hour_xf/LessLessJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values8linear/linear_model/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

@linear/linear_model/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values?linear/linear_model/linear_model/trip_start_hour_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ю
@linear/linear_model/linear_model/trip_start_hour_xf/out_of_range	LogicalOr8linear/linear_model/linear_model/trip_start_hour_xf/Less@linear/linear_model/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Г
9linear/linear_model/linear_model/trip_start_hour_xf/ShapeShapeJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
_output_shapes
:

=linear/linear_model/linear_model/trip_start_hour_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
В
;linear/linear_model/linear_model/trip_start_hour_xf/ToInt64Cast=linear/linear_model/linear_model/trip_start_hour_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
№
Blinear/linear_model/linear_model/trip_start_hour_xf/default_valuesFill9linear/linear_model/linear_model/trip_start_hour_xf/Shape;linear/linear_model/linear_model/trip_start_hour_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Ф
:linear/linear_model/linear_model/trip_start_hour_xf/SelectSelect@linear/linear_model/linear_model/trip_start_hour_xf/out_of_rangeBlinear/linear_model/linear_model/trip_start_hour_xf/default_valuesJlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Э
@linear/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastCastOlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Glinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
Alinear/linear_model/linear_model/trip_start_hour_xf/strided_sliceStridedSlice@linear/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastGlinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackIlinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Ilinear/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

<linear/linear_model/linear_model/trip_start_hour_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ё
:linear/linear_model/linear_model/trip_start_hour_xf/Cast/xPackAlinear/linear_model/linear_model/trip_start_hour_xf/strided_slice<linear/linear_model/linear_model/trip_start_hour_xf/Cast/x/1*
T0*
N*
_output_shapes
:
А
8linear/linear_model/linear_model/trip_start_hour_xf/CastCast:linear/linear_model/linear_model/trip_start_hour_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
й
Alinear/linear_model/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indicesOlinear/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape8linear/linear_model/linear_model/trip_start_hour_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Р
Jlinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentity:linear/linear_model/linear_model/trip_start_hour_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Blinear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:

Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
с
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceSliceClinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginKlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ў
Elinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdProdFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Qlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2Clinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Qlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesNlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPackElinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdIlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
п
Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshapeAlinear/linear_model/linear_model/trip_start_hour_xf/SparseReshapeClinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
н
Wlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Е
Mlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityOlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ч
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/WhereWhereMlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ё
Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapeFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/WhereNlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2Wlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapePlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ь
Ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentityPlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Zlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2Ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/IdentityZlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Н
llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
П
nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ѓ
flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicehlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsllinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacknlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCastflinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

_linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquejlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*U
_classK
IGloc:@linear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ж
ilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Blinear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOp_linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Uniquenlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*U
_classK
IGloc:@linear/linear_model/linear_model/trip_start_hour_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	

rlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityilinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
д
Xlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumrlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityalinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1]linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Х
Jlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapejlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Plinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
Ю
Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeXlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Tlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
 
Vlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ђ
Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSliceFlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ShapeTlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackVlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Vlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stackPackHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Elinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileTileJlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Flinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ф
Klinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeXlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
@linear/linear_model/linear_model/trip_start_hour_xf/weighted_sumSelectElinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileKlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeXlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1CastClinear/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Mlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ы
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1SliceGlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginMlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
И
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Shape@linear/linear_model/linear_model/trip_start_hour_xf/weighted_sum*
T0*
_output_shapes
:

Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
 
Mlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ь
Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2SliceHlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Nlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginMlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
у
Glinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Hlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Llinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Jlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Reshape@linear/linear_model/linear_model/trip_start_hour_xf/weighted_sumGlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
ш
Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:

6linear/linear_model/trip_start_month_xf/weights/part_0VarHandleOp*
shape
:*G
shared_name86linear/linear_model/trip_start_month_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes
: 
Н
Wlinear/linear_model/trip_start_month_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: 
Ћ
=linear/linear_model/trip_start_month_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0

Jlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:

Clinear/linear_model/linear_model/trip_start_month_xf/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ф
?linear/linear_model/linear_model/trip_start_month_xf/ExpandDims
ExpandDimstransform/transform/Squeeze_11Clinear/linear_model/linear_model/trip_start_month_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ

Slinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
о
Qlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCastSlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	

Mlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqual?linear/linear_model/linear_model/trip_start_month_xf/ExpandDimsQlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
Э
Llinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indicesWhereMlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Њ
Klinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNd?linear/linear_model/linear_model/trip_start_month_xf/ExpandDimsLlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
Я
Plinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShape?linear/linear_model/linear_model/trip_start_month_xf/ExpandDims*
T0	*
out_type0	*
_output_shapes
:

Blinear/linear_model/linear_model/trip_start_month_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
М
@linear/linear_model/linear_model/trip_start_month_xf/num_bucketsCastBlinear/linear_model/linear_model/trip_start_month_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	
}
;linear/linear_model/linear_model/trip_start_month_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
9linear/linear_model/linear_model/trip_start_month_xf/zeroCast;linear/linear_model/linear_model/trip_start_month_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
ї
9linear/linear_model/linear_model/trip_start_month_xf/LessLessKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values9linear/linear_model/linear_model/trip_start_month_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Alinear/linear_model/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values@linear/linear_model/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
ё
Alinear/linear_model/linear_model/trip_start_month_xf/out_of_range	LogicalOr9linear/linear_model/linear_model/trip_start_month_xf/LessAlinear/linear_model/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Е
:linear/linear_model/linear_model/trip_start_month_xf/ShapeShapeKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
_output_shapes
:

>linear/linear_model/linear_model/trip_start_month_xf/ToInt64/xConst*
value	B : *
dtype0*
_output_shapes
: 
Д
<linear/linear_model/linear_model/trip_start_month_xf/ToInt64Cast>linear/linear_model/linear_model/trip_start_month_xf/ToInt64/x*

SrcT0*
_output_shapes
: *

DstT0	
ѓ
Clinear/linear_model/linear_model/trip_start_month_xf/default_valuesFill:linear/linear_model/linear_model/trip_start_month_xf/Shape<linear/linear_model/linear_model/trip_start_month_xf/ToInt64*
T0	*#
_output_shapes
:џџџџџџџџџ
Ш
;linear/linear_model/linear_model/trip_start_month_xf/SelectSelectAlinear/linear_model/linear_model/trip_start_month_xf/out_of_rangeClinear/linear_model/linear_model/trip_start_month_xf/default_valuesKlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
Я
Alinear/linear_model/linear_model/trip_start_month_xf/Shape_1/CastCastPlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0

Hlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Н
Blinear/linear_model/linear_model/trip_start_month_xf/strided_sliceStridedSliceAlinear/linear_model/linear_model/trip_start_month_xf/Shape_1/CastHlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stackJlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Jlinear/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

=linear/linear_model/linear_model/trip_start_month_xf/Cast/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
є
;linear/linear_model/linear_model/trip_start_month_xf/Cast/xPackBlinear/linear_model/linear_model/trip_start_month_xf/strided_slice=linear/linear_model/linear_model/trip_start_month_xf/Cast/x/1*
T0*
N*
_output_shapes
:
В
9linear/linear_model/linear_model/trip_start_month_xf/CastCast;linear/linear_model/linear_model/trip_start_month_xf/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
н
Blinear/linear_model/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeLlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indicesPlinear/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shape9linear/linear_model/linear_model/trip_start_month_xf/Cast*-
_output_shapes
:џџџџџџџџџ:
Т
Klinear/linear_model/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentity;linear/linear_model/linear_model/trip_start_month_xf/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
К
Clinear/linear_model/linear_model/trip_start_month_xf/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:

Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceSliceDlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginLlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdProdGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Rlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2Dlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Rlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesOlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackFlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdJlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
у
Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshapeBlinear/linear_model/linear_model/trip_start_month_xf/SparseReshapeDlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
п
Xlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
И
Nlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityPlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Щ
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/WhereWhereNlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ђ
Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/WhereOlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2Xlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeQlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
Ю
Jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentityQlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Є
ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2Jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Identity[linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
О
mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Р
olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ј
glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsmlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackolinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ

^linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCastglinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0

`linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueklinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*V
_classL
JHloc:@linear/linear_model/linear_model/trip_start_month_xf/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Л
jlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Clinear/linear_model/linear_model/trip_start_month_xf/ReadVariableOp`linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Uniqueolinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*V
_classL
JHloc:@linear/linear_model/linear_model/trip_start_month_xf/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ

slinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityjlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:џџџџџџџџџ
и
Ylinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumslinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityblinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1^linear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
Ш
Klinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapeklinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Qlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
а
Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ShapeShapeYlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:

Ulinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ї
Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceGlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/ShapeUlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackWlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Wlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stackPackIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:

Flinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileTileKlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Glinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ц
Llinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLikeYlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ю
Alinear/linear_model/linear_model/trip_start_month_xf/weighted_sumSelectFlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileLlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_likeYlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1CastDlinear/linear_model/linear_model/trip_start_month_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0

Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Nlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1SliceHlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginNlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
К
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1ShapeAlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:

Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Nlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2SliceIlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1Olinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginNlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ч
Hlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1Ilinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2Mlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:

Klinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2ReshapeAlinear/linear_model/linear_model/trip_start_month_xf/weighted_sumHlinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

5linear/linear_model/linear_model/weighted_sum_no_biasAddNBlinear/linear_model/linear_model/company_xf/weighted_sum/Reshape_2Klinear/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Llinear/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Glinear/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Klinear/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Ilinear/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2Jlinear/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Klinear/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
T0*
N	*'
_output_shapes
:џџџџџџџџџ
Т
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
т
'linear/linear_model/bias_weights/part_0VarHandleOp*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
: *
shape:*8
shared_name)'linear/linear_model/bias_weights/part_0

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
я
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
л
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
У
-linear/linear_model/linear_model/weighted_sumBiasAdd5linear/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:џџџџџџџџџ
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 

linear/Reshape/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
g
linear/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
s
linear/ReshapeReshapelinear/Reshape/ReadVariableOplinear/Reshape/shape*
T0*
_output_shapes
:

linear/Reshape_1/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_1/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_1Reshapelinear/Reshape_1/ReadVariableOplinear/Reshape_1/shape*
T0*
_output_shapes
:


linear/Reshape_2/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
i
linear/Reshape_2/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z
linear/Reshape_2Reshapelinear/Reshape_2/ReadVariableOplinear/Reshape_2/shape*
T0*
_output_shapes	
:ђ

linear/Reshape_3/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_3/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_3Reshapelinear/Reshape_3/ReadVariableOplinear/Reshape_3/shape*
T0*
_output_shapes
:

linear/Reshape_4/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
i
linear/Reshape_4/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z
linear/Reshape_4Reshapelinear/Reshape_4/ReadVariableOplinear/Reshape_4/shape*
T0*
_output_shapes	
:ђ

linear/Reshape_5/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_5/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_5Reshapelinear/Reshape_5/ReadVariableOplinear/Reshape_5/shape*
T0*
_output_shapes
:


linear/Reshape_6/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_6/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_6Reshapelinear/Reshape_6/ReadVariableOplinear/Reshape_6/shape*
T0*
_output_shapes
:

linear/Reshape_7/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_7/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_7Reshapelinear/Reshape_7/ReadVariableOplinear/Reshape_7/shape*
T0*
_output_shapes
:


linear/Reshape_8/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

i
linear/Reshape_8/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
linear/Reshape_8Reshapelinear/Reshape_8/ReadVariableOplinear/Reshape_8/shape*
T0*
_output_shapes
:

T
linear/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ќ
linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/Reshape_4linear/Reshape_5linear/Reshape_6linear/Reshape_7linear/Reshape_8linear/concat/axis*
T0*
N	*
_output_shapes	
:Я
^
linear/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
T0*
_output_shapes	
:Я
r
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*
_output_shapes	
:Я*

DstT0
d
linear/zero_fraction/ConstConst*
valueB: *
dtype0*
_output_shapes
:
y
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 

linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
T0*
_output_shapes
: 
`
linear/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѓ
linear/zero_fraction_1/EqualEqual-linear/linear_model/linear_model/weighted_sumlinear/zero_fraction_1/zero*
T0*'
_output_shapes
:џџџџџџџџџ

linear/zero_fraction_1/CastCastlinear/zero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0
m
linear/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

linear/zero_fraction_1/MeanMeanlinear/zero_fraction_1/Castlinear/zero_fraction_1/Const*
T0*
_output_shapes
: 

*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
dtype0*
_output_shapes
: 
 
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/Mean*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
dtype0*
_output_shapes
: 

linear/linear/activationHistogramSummarylinear/linear/activation/tag-linear/linear_model/linear_model/weighted_sum*
_output_shapes
: 

addAdddnn/logits/BiasAdd-linear/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
P
head/predictions/logits/ShapeShapeadd*
T0*
_output_shapes
:
s
1head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
c
[head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
T
Lhead/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
q
&head/predictions/two_class_logits/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
В
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
o
$head/predictions/class_ids/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
j
head/predictions/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
d
head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
R
head/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
R
head/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
R
head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
e

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:
J
head/AsStringAsString
head/range*
T0*
_output_shapes
:
U
head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
j
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
T0*
N*
_output_shapes
:
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ

initNoOp
у
init_all_tablesNoOpc^transform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/table_inite^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:d
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:d
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:d
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes

:d
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:d
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:d
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:F
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes
:F
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:F
z
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes

:dF
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:dF
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:dF
t
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
:0
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes
:0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes
:0
z
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:F0
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:F0
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:F0
t
save/Read_6/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:"
]
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes
:"
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:"
z
save/Read_7/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

:0"
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:0"
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:0"
m
save/Read_8/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
]
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes
:
s
save/Read_9/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:"
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:"
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:"

save/Read_10/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
^
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:

save/Read_11/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
c
save/Identity_22Identitysave/Read_11/ReadVariableOp*
T0*
_output_shapes
:	ђ
g
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_12/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:


save/Read_13/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:


save/Read_14/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
dtype0*
_output_shapes
:	ђ
c
save/Identity_28Identitysave/Read_14/ReadVariableOp*
T0*
_output_shapes
:	ђ
g
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_15/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:


save/Read_16/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
dtype0*
_output_shapes

:

b
save/Identity_32Identitysave/Read_16/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes

:


save/Read_17/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_34Identitysave/Read_17/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:

save/Read_18/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_36Identitysave/Read_18/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes

:

save/Read_19/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_38Identitysave/Read_19/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7295ec3667f442e2b6c2ca0b3b2524aa/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_20/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:d
m
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:d
b
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes
:d

save/Read_21/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:d
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:d
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:d

save/Read_22/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:F
m
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:F
b
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes
:F

save/Read_23/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:dF
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:dF
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:dF

save/Read_24/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:0
m
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:0
b
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
T0*
_output_shapes
:0

save/Read_25/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:F0
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:F0
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
T0*
_output_shapes

:F0

save/Read_26/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:"
m
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:"
b
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
T0*
_output_shapes
:"

save/Read_27/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:0"
q
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:0"
f
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
T0*
_output_shapes

:0"
}
save/Read_28/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
T0*
_output_shapes
:

save/Read_29/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:"
q
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:"
f
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
T0*
_output_shapes

:"

save/Read_30/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
T0*
_output_shapes
:

save/Read_31/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	ђ
r
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
T0*
_output_shapes
:	ђ
Ё
save/Read_32/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
T0*
_output_shapes

:

Ђ
save/Read_33/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
T0*
_output_shapes

:


save/Read_34/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	ђ
r
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
T0*
_output_shapes
:	ђ
 
save/Read_35/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
T0*
_output_shapes

:

Ё
save/Read_36/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:

q
save/Identity_72Identitysave/Read_36/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_73Identitysave/Identity_72"/device:CPU:0*
T0*
_output_shapes

:


save/Read_37/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_74Identitysave/Read_37/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_75Identitysave/Identity_74"/device:CPU:0*
T0*
_output_shapes

:
 
save/Read_38/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_76Identitysave/Read_38/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_77Identitysave/Identity_76"/device:CPU:0*
T0*
_output_shapes

:
Ё
save/Read_39/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_78Identitysave/Read_39/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_79Identitysave/Identity_78"/device:CPU:0*
T0*
_output_shapes

:
Њ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1*
dtype0*
_output_shapes
:

save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_41save/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71save/Identity_73save/Identity_75save/Identity_77save/Identity_79"/device:CPU:0*"
dtypes
2
Ј
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
д
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ј
save/Identity_80Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
­
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1*
dtype0*
_output_shapes
:
щ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*Ш
_output_shapesЕ
В:d:d:F:dF:0:F0:":0"::"::	ђ:
:
:	ђ:
:
:::*"
dtypes
2
b
save/Identity_81Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:d
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_81"/device:CPU:0*
dtype0
h
save/Identity_82Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:d
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_82"/device:CPU:0*
dtype0
d
save/Identity_83Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes
:F
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_83"/device:CPU:0*
dtype0
h
save/Identity_84Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:dF
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_84"/device:CPU:0*
dtype0
d
save/Identity_85Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes
:0
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_85"/device:CPU:0*
dtype0
h
save/Identity_86Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:F0
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_86"/device:CPU:0*
dtype0
d
save/Identity_87Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes
:"
x
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/bias/part_0save/Identity_87"/device:CPU:0*
dtype0
h
save/Identity_88Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

:0"
z
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernel/part_0save/Identity_88"/device:CPU:0*
dtype0
d
save/Identity_89Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_8AssignVariableOpdnn/logits/bias/part_0save/Identity_89"/device:CPU:0*
dtype0
h
save/Identity_90Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:"
s
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernel/part_0save/Identity_90"/device:CPU:0*
dtype0
e
save/Identity_91Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOp_10AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_91"/device:CPU:0*
dtype0
j
save/Identity_92Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_11AssignVariableOp-linear/linear_model/company_xf/weights/part_0save/Identity_92"/device:CPU:0*
dtype0
i
save/Identity_93Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_12AssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0save/Identity_93"/device:CPU:0*
dtype0
i
save/Identity_94Identitysave/RestoreV2_1:13"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_13AssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0save/Identity_94"/device:CPU:0*
dtype0
j
save/Identity_95Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_14AssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0save/Identity_95"/device:CPU:0*
dtype0
i
save/Identity_96Identitysave/RestoreV2_1:15"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_15AssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0save/Identity_96"/device:CPU:0*
dtype0
i
save/Identity_97Identitysave/RestoreV2_1:16"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_16AssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0save/Identity_97"/device:CPU:0*
dtype0
i
save/Identity_98Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_17AssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0save/Identity_98"/device:CPU:0*
dtype0
i
save/Identity_99Identitysave/RestoreV2_1:18"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_18AssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0save/Identity_99"/device:CPU:0*
dtype0
j
save/Identity_100Identitysave/RestoreV2_1:19"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_19AssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0save/Identity_100"/device:CPU:0*
dtype0
Л
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_80:0save/restore_all (5 @F8"э+
	variablesп+м+
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08")
asset_filepaths

Const:0
	Const_1:0"у
table_initializerЭ
Ъ
btransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index/hash_table/table_init
dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index/hash_table/table_init"Д
tft_schema_override_tensor

Utransform/transform/compute_and_apply_vocabulary/apply_vocab/string_to_index_Lookup:0
Wtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/string_to_index_Lookup:0
5transform/transform/bucketize/apply_buckets/ToInt64:0
7transform/transform/bucketize_1/apply_buckets/ToInt64:0
7transform/transform/bucketize_2/apply_buckets/ToInt64:0
7transform/transform/bucketize_3/apply_buckets/ToInt64:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"ї
model_variablesур
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"+
trainable_variables++
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"Ѓ
	summaries

/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"є
saved_model_assetsн*к
k
+type.googleapis.com/tensorflow.AssetFileDef<
	
Const:0/vocab_compute_and_apply_vocabulary_1_vocabulary
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_1:0-vocab_compute_and_apply_vocabulary_vocabulary"
tft_schema_override_minы
ш
Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const:0
Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"Ѓ
tft_schema_override_max

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0*
predict
5
examples)
input_example_tensor:0џџџџџџџџџA
	class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџH
probabilities7
 head/predictions/probabilities:0џџџџџџџџџ@
classes5
head/predictions/str_classes:0џџџџџџџџџ&
logits
add:0џџџџџџџџџ>
logistic2
head/predictions/logistic:0џџџџџџџџџtensorflow/serving/predict*з
classificationФ
3
inputs)
input_example_tensor:0џџџџџџџџџA
scores7
 head/predictions/probabilities:0џџџџџџџџџ-
classes"
head/Tile:0џџџџџџџџџtensorflow/serving/classify*

regression
3
inputs)
input_example_tensor:0џџџџџџџџџ=
outputs2
head/predictions/logistic:0џџџџџџџџџtensorflow/serving/regress*и
serving_defaultФ
3
inputs)
input_example_tensor:0џџџџџџџџџA
scores7
 head/predictions/probabilities:0џџџџџџџџџ-
classes"
head/Tile:0џџџџџџџџџtensorflow/serving/classify