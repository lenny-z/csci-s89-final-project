??1
??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??+
?
Adam/conv2d_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*&
shared_nameAdam/conv2d_70/bias/v
{
)Adam/conv2d_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/v*
_output_shapes
:|*
dtype0
?
Adam/conv2d_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*(
shared_nameAdam/conv2d_70/kernel/v
?
+Adam/conv2d_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/v*&
_output_shapes
:|*
dtype0
?
Adam/conv2d_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_69/bias/v
{
)Adam/conv2d_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_69/kernel/v
?
+Adam/conv2d_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_68/bias/v
{
)Adam/conv2d_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_68/kernel/v
?
+Adam/conv2d_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_12/bias/v
?
3Adam/conv2d_transpose_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_12/bias/v*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_12/kernel/v
?
5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_67/bias/v
{
)Adam/conv2d_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_67/kernel/v
?
+Adam/conv2d_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_66/bias/v
{
)Adam/conv2d_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_66/kernel/v
?
+Adam/conv2d_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_11/bias/v
?
3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/v*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_11/kernel/v
?
5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_65/bias/v
{
)Adam/conv2d_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_65/kernel/v
?
+Adam/conv2d_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_64/bias/v
{
)Adam/conv2d_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_64/kernel/v
?
+Adam/conv2d_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_10/bias/v
?
3Adam/conv2d_transpose_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_10/bias/v*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_10/kernel/v
?
5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_63/bias/v
{
)Adam/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_63/kernel/v
?
+Adam/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_62/kernel/v
?
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_transpose_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_9/bias/v
?
2Adam/conv2d_transpose_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_9/bias/v*
_output_shapes
: *
dtype0
?
 Adam/conv2d_transpose_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_9/kernel/v
?
4Adam/conv2d_transpose_9/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_9/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_61/bias/v
{
)Adam/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_61/kernel/v
?
+Adam/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_60/bias/v
{
)Adam/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_60/kernel/v
?
+Adam/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_59/bias/v
{
)Adam/conv2d_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_59/kernel/v
?
+Adam/conv2d_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_58/bias/v
{
)Adam/conv2d_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_58/kernel/v
?
+Adam/conv2d_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_57/bias/v
{
)Adam/conv2d_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_57/kernel/v
?
+Adam/conv2d_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_56/bias/v
{
)Adam/conv2d_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_56/kernel/v
?
+Adam/conv2d_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_55/bias/v
{
)Adam/conv2d_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_55/kernel/v
?
+Adam/conv2d_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_54/bias/v
{
)Adam/conv2d_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_54/kernel/v
?
+Adam/conv2d_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_53/bias/v
{
)Adam/conv2d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_53/kernel/v
?
+Adam/conv2d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_52/bias/v
{
)Adam/conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_52/kernel/v
?
+Adam/conv2d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*&
shared_nameAdam/conv2d_70/bias/m
{
)Adam/conv2d_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/m*
_output_shapes
:|*
dtype0
?
Adam/conv2d_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*(
shared_nameAdam/conv2d_70/kernel/m
?
+Adam/conv2d_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/m*&
_output_shapes
:|*
dtype0
?
Adam/conv2d_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_69/bias/m
{
)Adam/conv2d_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_69/kernel/m
?
+Adam/conv2d_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_68/bias/m
{
)Adam/conv2d_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_68/kernel/m
?
+Adam/conv2d_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_12/bias/m
?
3Adam/conv2d_transpose_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_12/bias/m*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_12/kernel/m
?
5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_67/bias/m
{
)Adam/conv2d_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_67/kernel/m
?
+Adam/conv2d_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_66/bias/m
{
)Adam/conv2d_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_66/kernel/m
?
+Adam/conv2d_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_transpose_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_11/bias/m
?
3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/m*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_11/kernel/m
?
5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_65/bias/m
{
)Adam/conv2d_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_65/kernel/m
?
+Adam/conv2d_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_64/bias/m
{
)Adam/conv2d_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_64/kernel/m
?
+Adam/conv2d_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_10/bias/m
?
3Adam/conv2d_transpose_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_10/bias/m*
_output_shapes
:*
dtype0
?
!Adam/conv2d_transpose_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_10/kernel/m
?
5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_63/bias/m
{
)Adam/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_63/kernel/m
?
+Adam/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_62/kernel/m
?
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_transpose_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_9/bias/m
?
2Adam/conv2d_transpose_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_9/bias/m*
_output_shapes
: *
dtype0
?
 Adam/conv2d_transpose_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_9/kernel/m
?
4Adam/conv2d_transpose_9/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_9/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_61/bias/m
{
)Adam/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_61/kernel/m
?
+Adam/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_60/bias/m
{
)Adam/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_60/kernel/m
?
+Adam/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_59/bias/m
{
)Adam/conv2d_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_59/kernel/m
?
+Adam/conv2d_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_58/bias/m
{
)Adam/conv2d_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_58/kernel/m
?
+Adam/conv2d_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_57/bias/m
{
)Adam/conv2d_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_57/kernel/m
?
+Adam/conv2d_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_56/bias/m
{
)Adam/conv2d_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_56/kernel/m
?
+Adam/conv2d_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_55/bias/m
{
)Adam/conv2d_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_55/kernel/m
?
+Adam/conv2d_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_54/bias/m
{
)Adam/conv2d_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_54/kernel/m
?
+Adam/conv2d_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_53/bias/m
{
)Adam/conv2d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_53/kernel/m
?
+Adam/conv2d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_52/bias/m
{
)Adam/conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_52/kernel/m
?
+Adam/conv2d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/m*&
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
t
conv2d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*
shared_nameconv2d_70/bias
m
"conv2d_70/bias/Read/ReadVariableOpReadVariableOpconv2d_70/bias*
_output_shapes
:|*
dtype0
?
conv2d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*!
shared_nameconv2d_70/kernel
}
$conv2d_70/kernel/Read/ReadVariableOpReadVariableOpconv2d_70/kernel*&
_output_shapes
:|*
dtype0
t
conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_69/bias
m
"conv2d_69/bias/Read/ReadVariableOpReadVariableOpconv2d_69/bias*
_output_shapes
:*
dtype0
?
conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_69/kernel
}
$conv2d_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_69/kernel*&
_output_shapes
:*
dtype0
t
conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_68/bias
m
"conv2d_68/bias/Read/ReadVariableOpReadVariableOpconv2d_68/bias*
_output_shapes
:*
dtype0
?
conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_68/kernel
}
$conv2d_68/kernel/Read/ReadVariableOpReadVariableOpconv2d_68/kernel*&
_output_shapes
:*
dtype0
?
conv2d_transpose_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_12/bias
?
,conv2d_transpose_12/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_12/kernel
?
.conv2d_transpose_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/kernel*&
_output_shapes
:*
dtype0
t
conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_67/bias
m
"conv2d_67/bias/Read/ReadVariableOpReadVariableOpconv2d_67/bias*
_output_shapes
:*
dtype0
?
conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_67/kernel
}
$conv2d_67/kernel/Read/ReadVariableOpReadVariableOpconv2d_67/kernel*&
_output_shapes
:*
dtype0
t
conv2d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_66/bias
m
"conv2d_66/bias/Read/ReadVariableOpReadVariableOpconv2d_66/bias*
_output_shapes
:*
dtype0
?
conv2d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_66/kernel
}
$conv2d_66/kernel/Read/ReadVariableOpReadVariableOpconv2d_66/kernel*&
_output_shapes
:*
dtype0
?
conv2d_transpose_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_11/bias
?
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_11/kernel
?
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*&
_output_shapes
:*
dtype0
t
conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_65/bias
m
"conv2d_65/bias/Read/ReadVariableOpReadVariableOpconv2d_65/bias*
_output_shapes
:*
dtype0
?
conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_65/kernel
}
$conv2d_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_65/kernel*&
_output_shapes
:*
dtype0
t
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_64/bias
m
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes
:*
dtype0
?
conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_64/kernel
}
$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_10/bias
?
,conv2d_transpose_10/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_10/kernel
?
.conv2d_transpose_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*&
_output_shapes
: *
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
: *
dtype0
?
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
: *
dtype0
?
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
:@ *
dtype0
?
conv2d_transpose_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose_9/bias

+conv2d_transpose_9/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv2d_transpose_9/kernel
?
-conv2d_transpose_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
:@*
dtype0
?
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:@*
dtype0
?
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_59/bias
m
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes
: *
dtype0
?
conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_59/kernel
}
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
: *
dtype0
?
conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
: *
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
:*
dtype0
?
conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:*
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
:*
dtype0
?
conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_56/kernel
}
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*&
_output_shapes
:*
dtype0
t
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_55/bias
m
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes
:*
dtype0
?
conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_55/kernel
}
$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*&
_output_shapes
:*
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
:*
dtype0
?
conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_54/kernel
}
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*&
_output_shapes
:*
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
:*
dtype0
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:*
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
:*
dtype0
?
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures*
?	
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer_with_weights-10
layer-15
layer-16
layer_with_weights-11
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer-20
 layer_with_weights-14
 layer-21
!layer_with_weights-15
!layer-22
"layer_with_weights-16
"layer-23
#layer-24
$layer_with_weights-17
$layer-25
%layer_with_weights-18
%layer-26
&layer_with_weights-19
&layer-27
'layer-28
(layer_with_weights-20
(layer-29
)layer_with_weights-21
)layer-30
*layer_with_weights-22
*layer-31
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1	optimizer
2
signatures
#3_self_saveable_object_factories*
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45*
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45*
* 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
mtrace_0
ntrace_1
otrace_2
ptrace_3* 
6
qtrace_0
rtrace_1
strace_2
ttrace_3* 
* 

userving_default* 
'
#v_self_saveable_object_factories* 
?
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

:kernel
;bias
#}_self_saveable_object_factories
 ~_jit_compiled_convolution_op*
?
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

<kernel
=bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

>kernel
?bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

@kernel
Abias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Bkernel
Cbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Dkernel
Ebias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Fkernel
Gbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Hkernel
Ibias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Jkernel
Kbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Lkernel
Mbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Nkernel
Obias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Pkernel
Qbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Rkernel
Sbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Tkernel
Ubias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Vkernel
Wbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Xkernel
Ybias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Zkernel
[bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

\kernel
]bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

^kernel
_bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

`kernel
abias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

bkernel
cbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

dkernel
ebias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

fkernel
gbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op*
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45*
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?`m?am?bm?cm?dm?em?fm?gm?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?`v?av?bv?cv?dv?ev?fv?gv?*

?serving_default* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
PJ
VARIABLE_VALUEconv2d_52/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_52/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_53/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_53/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_54/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_54/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_55/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_55/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_56/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_56/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_57/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_57/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_58/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_58/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_59/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_59/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_60/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_60/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_61/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_61/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_9/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_9/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_62/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_62/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_63/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_63/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_10/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_10/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_64/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_64/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_65/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_65/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_11/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_11/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_66/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_66/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_67/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_67/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_12/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_12/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_68/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_68/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_69/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_69/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_70/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_70/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

:0
;1*

:0
;1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

<0
=1*

<0
=1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

>0
?1*

>0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

@0
A1*

@0
A1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

B0
C1*

B0
C1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

D0
E1*

D0
E1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

H0
I1*

H0
I1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

J0
K1*

J0
K1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

L0
M1*

L0
M1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

N0
O1*

N0
O1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

P0
Q1*

P0
Q1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

R0
S1*

R0
S1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

T0
U1*

T0
U1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

V0
W1*

V0
W1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

X0
Y1*

X0
Y1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

Z0
[1*

Z0
[1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

\0
]1*

\0
]1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

^0
_1*

^0
_1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

`0
a1*

`0
a1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 

b0
c1*

b0
c1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

d0
e1*

d0
e1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 

f0
g1*

f0
g1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
?
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27
'28
(29
)30
*31*

?0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
a[
VARIABLE_VALUE	Adam/iter>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE
Adam/decay?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*

?0
?1*

?	variables*
hb
VARIABLE_VALUEtotalIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEcountIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_52/kernel/mWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_52/bias/mWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_53/kernel/mWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_53/bias/mWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_54/kernel/mWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_54/bias/mWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_55/kernel/mWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_55/bias/mWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_56/kernel/mWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_56/bias/mWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_57/kernel/mXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_57/bias/mXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_58/kernel/mXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_58/bias/mXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_59/kernel/mXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_59/bias/mXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_60/kernel/mXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_60/bias/mXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_61/kernel/mXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_61/bias/mXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/conv2d_transpose_9/kernel/mXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_9/bias/mXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_62/kernel/mXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_62/bias/mXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_63/kernel/mXvariables/24/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_63/bias/mXvariables/25/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/mXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_10/bias/mXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_64/kernel/mXvariables/28/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_64/bias/mXvariables/29/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_65/kernel/mXvariables/30/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_65/bias/mXvariables/31/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/mXvariables/32/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/mXvariables/33/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_66/kernel/mXvariables/34/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_66/bias/mXvariables/35/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_67/kernel/mXvariables/36/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_67/bias/mXvariables/37/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/mXvariables/38/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_12/bias/mXvariables/39/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_68/kernel/mXvariables/40/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_68/bias/mXvariables/41/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_69/kernel/mXvariables/42/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_69/bias/mXvariables/43/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_70/kernel/mXvariables/44/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_70/bias/mXvariables/45/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_52/kernel/vWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_52/bias/vWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_53/kernel/vWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_53/bias/vWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_54/kernel/vWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_54/bias/vWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_55/kernel/vWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_55/bias/vWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_56/kernel/vWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_56/bias/vWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_57/kernel/vXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_57/bias/vXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_58/kernel/vXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_58/bias/vXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_59/kernel/vXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_59/bias/vXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_60/kernel/vXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_60/bias/vXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_61/kernel/vXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_61/bias/vXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/conv2d_transpose_9/kernel/vXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_9/bias/vXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_62/kernel/vXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_62/bias/vXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_63/kernel/vXvariables/24/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_63/bias/vXvariables/25/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/vXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_10/bias/vXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_64/kernel/vXvariables/28/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_64/bias/vXvariables/29/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_65/kernel/vXvariables/30/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_65/bias/vXvariables/31/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/vXvariables/32/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/vXvariables/33/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_66/kernel/vXvariables/34/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_66/bias/vXvariables/35/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_67/kernel/vXvariables/36/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_67/bias/vXvariables/37/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/vXvariables/38/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_12/bias/vXvariables/39/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_68/kernel/vXvariables/40/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_68/bias/vXvariables/41/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_69/kernel/vXvariables/42/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_69/bias/vXvariables/43/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_70/kernel/vXvariables/44/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_70/bias/vXvariables/45/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_model_2_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_model_2_inputconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_transpose_9/kernelconv2d_transpose_9/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_transpose_10/kernelconv2d_transpose_10/biasconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_transpose_12/kernelconv2d_transpose_12/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasconv2d_70/kernelconv2d_70/bias*:
Tin3
12/*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_96541
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?3
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp$conv2d_55/kernel/Read/ReadVariableOp"conv2d_55/bias/Read/ReadVariableOp$conv2d_56/kernel/Read/ReadVariableOp"conv2d_56/bias/Read/ReadVariableOp$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOp$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp-conv2d_transpose_9/kernel/Read/ReadVariableOp+conv2d_transpose_9/bias/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp.conv2d_transpose_10/kernel/Read/ReadVariableOp,conv2d_transpose_10/bias/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp$conv2d_65/kernel/Read/ReadVariableOp"conv2d_65/bias/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOp$conv2d_66/kernel/Read/ReadVariableOp"conv2d_66/bias/Read/ReadVariableOp$conv2d_67/kernel/Read/ReadVariableOp"conv2d_67/bias/Read/ReadVariableOp.conv2d_transpose_12/kernel/Read/ReadVariableOp,conv2d_transpose_12/bias/Read/ReadVariableOp$conv2d_68/kernel/Read/ReadVariableOp"conv2d_68/bias/Read/ReadVariableOp$conv2d_69/kernel/Read/ReadVariableOp"conv2d_69/bias/Read/ReadVariableOp$conv2d_70/kernel/Read/ReadVariableOp"conv2d_70/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_52/kernel/m/Read/ReadVariableOp)Adam/conv2d_52/bias/m/Read/ReadVariableOp+Adam/conv2d_53/kernel/m/Read/ReadVariableOp)Adam/conv2d_53/bias/m/Read/ReadVariableOp+Adam/conv2d_54/kernel/m/Read/ReadVariableOp)Adam/conv2d_54/bias/m/Read/ReadVariableOp+Adam/conv2d_55/kernel/m/Read/ReadVariableOp)Adam/conv2d_55/bias/m/Read/ReadVariableOp+Adam/conv2d_56/kernel/m/Read/ReadVariableOp)Adam/conv2d_56/bias/m/Read/ReadVariableOp+Adam/conv2d_57/kernel/m/Read/ReadVariableOp)Adam/conv2d_57/bias/m/Read/ReadVariableOp+Adam/conv2d_58/kernel/m/Read/ReadVariableOp)Adam/conv2d_58/bias/m/Read/ReadVariableOp+Adam/conv2d_59/kernel/m/Read/ReadVariableOp)Adam/conv2d_59/bias/m/Read/ReadVariableOp+Adam/conv2d_60/kernel/m/Read/ReadVariableOp)Adam/conv2d_60/bias/m/Read/ReadVariableOp+Adam/conv2d_61/kernel/m/Read/ReadVariableOp)Adam/conv2d_61/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_9/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_9/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp+Adam/conv2d_63/kernel/m/Read/ReadVariableOp)Adam/conv2d_63/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_10/bias/m/Read/ReadVariableOp+Adam/conv2d_64/kernel/m/Read/ReadVariableOp)Adam/conv2d_64/bias/m/Read/ReadVariableOp+Adam/conv2d_65/kernel/m/Read/ReadVariableOp)Adam/conv2d_65/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOp+Adam/conv2d_66/kernel/m/Read/ReadVariableOp)Adam/conv2d_66/bias/m/Read/ReadVariableOp+Adam/conv2d_67/kernel/m/Read/ReadVariableOp)Adam/conv2d_67/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_12/bias/m/Read/ReadVariableOp+Adam/conv2d_68/kernel/m/Read/ReadVariableOp)Adam/conv2d_68/bias/m/Read/ReadVariableOp+Adam/conv2d_69/kernel/m/Read/ReadVariableOp)Adam/conv2d_69/bias/m/Read/ReadVariableOp+Adam/conv2d_70/kernel/m/Read/ReadVariableOp)Adam/conv2d_70/bias/m/Read/ReadVariableOp+Adam/conv2d_52/kernel/v/Read/ReadVariableOp)Adam/conv2d_52/bias/v/Read/ReadVariableOp+Adam/conv2d_53/kernel/v/Read/ReadVariableOp)Adam/conv2d_53/bias/v/Read/ReadVariableOp+Adam/conv2d_54/kernel/v/Read/ReadVariableOp)Adam/conv2d_54/bias/v/Read/ReadVariableOp+Adam/conv2d_55/kernel/v/Read/ReadVariableOp)Adam/conv2d_55/bias/v/Read/ReadVariableOp+Adam/conv2d_56/kernel/v/Read/ReadVariableOp)Adam/conv2d_56/bias/v/Read/ReadVariableOp+Adam/conv2d_57/kernel/v/Read/ReadVariableOp)Adam/conv2d_57/bias/v/Read/ReadVariableOp+Adam/conv2d_58/kernel/v/Read/ReadVariableOp)Adam/conv2d_58/bias/v/Read/ReadVariableOp+Adam/conv2d_59/kernel/v/Read/ReadVariableOp)Adam/conv2d_59/bias/v/Read/ReadVariableOp+Adam/conv2d_60/kernel/v/Read/ReadVariableOp)Adam/conv2d_60/bias/v/Read/ReadVariableOp+Adam/conv2d_61/kernel/v/Read/ReadVariableOp)Adam/conv2d_61/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_9/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_9/bias/v/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp+Adam/conv2d_63/kernel/v/Read/ReadVariableOp)Adam/conv2d_63/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_10/bias/v/Read/ReadVariableOp+Adam/conv2d_64/kernel/v/Read/ReadVariableOp)Adam/conv2d_64/bias/v/Read/ReadVariableOp+Adam/conv2d_65/kernel/v/Read/ReadVariableOp)Adam/conv2d_65/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOp+Adam/conv2d_66/kernel/v/Read/ReadVariableOp)Adam/conv2d_66/bias/v/Read/ReadVariableOp+Adam/conv2d_67/kernel/v/Read/ReadVariableOp)Adam/conv2d_67/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_12/bias/v/Read/ReadVariableOp+Adam/conv2d_68/kernel/v/Read/ReadVariableOp)Adam/conv2d_68/bias/v/Read/ReadVariableOp+Adam/conv2d_69/kernel/v/Read/ReadVariableOp)Adam/conv2d_69/bias/v/Read/ReadVariableOp+Adam/conv2d_70/kernel/v/Read/ReadVariableOp)Adam/conv2d_70/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_98948
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_transpose_9/kernelconv2d_transpose_9/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_transpose_10/kernelconv2d_transpose_10/biasconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_transpose_12/kernelconv2d_transpose_12/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasconv2d_70/kernelconv2d_70/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d_52/kernel/mAdam/conv2d_52/bias/mAdam/conv2d_53/kernel/mAdam/conv2d_53/bias/mAdam/conv2d_54/kernel/mAdam/conv2d_54/bias/mAdam/conv2d_55/kernel/mAdam/conv2d_55/bias/mAdam/conv2d_56/kernel/mAdam/conv2d_56/bias/mAdam/conv2d_57/kernel/mAdam/conv2d_57/bias/mAdam/conv2d_58/kernel/mAdam/conv2d_58/bias/mAdam/conv2d_59/kernel/mAdam/conv2d_59/bias/mAdam/conv2d_60/kernel/mAdam/conv2d_60/bias/mAdam/conv2d_61/kernel/mAdam/conv2d_61/bias/m Adam/conv2d_transpose_9/kernel/mAdam/conv2d_transpose_9/bias/mAdam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/conv2d_63/kernel/mAdam/conv2d_63/bias/m!Adam/conv2d_transpose_10/kernel/mAdam/conv2d_transpose_10/bias/mAdam/conv2d_64/kernel/mAdam/conv2d_64/bias/mAdam/conv2d_65/kernel/mAdam/conv2d_65/bias/m!Adam/conv2d_transpose_11/kernel/mAdam/conv2d_transpose_11/bias/mAdam/conv2d_66/kernel/mAdam/conv2d_66/bias/mAdam/conv2d_67/kernel/mAdam/conv2d_67/bias/m!Adam/conv2d_transpose_12/kernel/mAdam/conv2d_transpose_12/bias/mAdam/conv2d_68/kernel/mAdam/conv2d_68/bias/mAdam/conv2d_69/kernel/mAdam/conv2d_69/bias/mAdam/conv2d_70/kernel/mAdam/conv2d_70/bias/mAdam/conv2d_52/kernel/vAdam/conv2d_52/bias/vAdam/conv2d_53/kernel/vAdam/conv2d_53/bias/vAdam/conv2d_54/kernel/vAdam/conv2d_54/bias/vAdam/conv2d_55/kernel/vAdam/conv2d_55/bias/vAdam/conv2d_56/kernel/vAdam/conv2d_56/bias/vAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/vAdam/conv2d_58/kernel/vAdam/conv2d_58/bias/vAdam/conv2d_59/kernel/vAdam/conv2d_59/bias/vAdam/conv2d_60/kernel/vAdam/conv2d_60/bias/vAdam/conv2d_61/kernel/vAdam/conv2d_61/bias/v Adam/conv2d_transpose_9/kernel/vAdam/conv2d_transpose_9/bias/vAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/conv2d_63/kernel/vAdam/conv2d_63/bias/v!Adam/conv2d_transpose_10/kernel/vAdam/conv2d_transpose_10/bias/vAdam/conv2d_64/kernel/vAdam/conv2d_64/bias/vAdam/conv2d_65/kernel/vAdam/conv2d_65/bias/v!Adam/conv2d_transpose_11/kernel/vAdam/conv2d_transpose_11/bias/vAdam/conv2d_66/kernel/vAdam/conv2d_66/bias/vAdam/conv2d_67/kernel/vAdam/conv2d_67/bias/v!Adam/conv2d_transpose_12/kernel/vAdam/conv2d_transpose_12/bias/vAdam/conv2d_68/kernel/vAdam/conv2d_68/bias/vAdam/conv2d_69/kernel/vAdam/conv2d_69/bias/vAdam/conv2d_70/kernel/vAdam/conv2d_70/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_99393??%
?
Y
-__inference_concatenate_9_layer_call_fn_98138
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_94464h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????@@ :?????????@@ :Y U
/
_output_shapes
:?????????@@ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_94306

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_94176

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?*
 __inference__wrapped_model_57957
input_7J
0model_2_conv2d_52_conv2d_readvariableop_resource:?
1model_2_conv2d_52_biasadd_readvariableop_resource:J
0model_2_conv2d_53_conv2d_readvariableop_resource:?
1model_2_conv2d_53_biasadd_readvariableop_resource:J
0model_2_conv2d_54_conv2d_readvariableop_resource:?
1model_2_conv2d_54_biasadd_readvariableop_resource:J
0model_2_conv2d_55_conv2d_readvariableop_resource:?
1model_2_conv2d_55_biasadd_readvariableop_resource:J
0model_2_conv2d_56_conv2d_readvariableop_resource:?
1model_2_conv2d_56_biasadd_readvariableop_resource:J
0model_2_conv2d_57_conv2d_readvariableop_resource:?
1model_2_conv2d_57_biasadd_readvariableop_resource:J
0model_2_conv2d_58_conv2d_readvariableop_resource: ?
1model_2_conv2d_58_biasadd_readvariableop_resource: J
0model_2_conv2d_59_conv2d_readvariableop_resource:  ?
1model_2_conv2d_59_biasadd_readvariableop_resource: J
0model_2_conv2d_60_conv2d_readvariableop_resource: @?
1model_2_conv2d_60_biasadd_readvariableop_resource:@J
0model_2_conv2d_61_conv2d_readvariableop_resource:@@?
1model_2_conv2d_61_biasadd_readvariableop_resource:@]
Cmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource: @H
:model_2_conv2d_transpose_9_biasadd_readvariableop_resource: J
0model_2_conv2d_62_conv2d_readvariableop_resource:@ ?
1model_2_conv2d_62_biasadd_readvariableop_resource: J
0model_2_conv2d_63_conv2d_readvariableop_resource:  ?
1model_2_conv2d_63_biasadd_readvariableop_resource: ^
Dmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource: I
;model_2_conv2d_transpose_10_biasadd_readvariableop_resource:J
0model_2_conv2d_64_conv2d_readvariableop_resource: ?
1model_2_conv2d_64_biasadd_readvariableop_resource:J
0model_2_conv2d_65_conv2d_readvariableop_resource:?
1model_2_conv2d_65_biasadd_readvariableop_resource:^
Dmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource:I
;model_2_conv2d_transpose_11_biasadd_readvariableop_resource:J
0model_2_conv2d_66_conv2d_readvariableop_resource:?
1model_2_conv2d_66_biasadd_readvariableop_resource:J
0model_2_conv2d_67_conv2d_readvariableop_resource:?
1model_2_conv2d_67_biasadd_readvariableop_resource:^
Dmodel_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:I
;model_2_conv2d_transpose_12_biasadd_readvariableop_resource:J
0model_2_conv2d_68_conv2d_readvariableop_resource:?
1model_2_conv2d_68_biasadd_readvariableop_resource:J
0model_2_conv2d_69_conv2d_readvariableop_resource:?
1model_2_conv2d_69_biasadd_readvariableop_resource:J
0model_2_conv2d_70_conv2d_readvariableop_resource:|?
1model_2_conv2d_70_biasadd_readvariableop_resource:|
identity??(model_2/conv2d_52/BiasAdd/ReadVariableOp?'model_2/conv2d_52/Conv2D/ReadVariableOp?(model_2/conv2d_53/BiasAdd/ReadVariableOp?'model_2/conv2d_53/Conv2D/ReadVariableOp?(model_2/conv2d_54/BiasAdd/ReadVariableOp?'model_2/conv2d_54/Conv2D/ReadVariableOp?(model_2/conv2d_55/BiasAdd/ReadVariableOp?'model_2/conv2d_55/Conv2D/ReadVariableOp?(model_2/conv2d_56/BiasAdd/ReadVariableOp?'model_2/conv2d_56/Conv2D/ReadVariableOp?(model_2/conv2d_57/BiasAdd/ReadVariableOp?'model_2/conv2d_57/Conv2D/ReadVariableOp?(model_2/conv2d_58/BiasAdd/ReadVariableOp?'model_2/conv2d_58/Conv2D/ReadVariableOp?(model_2/conv2d_59/BiasAdd/ReadVariableOp?'model_2/conv2d_59/Conv2D/ReadVariableOp?(model_2/conv2d_60/BiasAdd/ReadVariableOp?'model_2/conv2d_60/Conv2D/ReadVariableOp?(model_2/conv2d_61/BiasAdd/ReadVariableOp?'model_2/conv2d_61/Conv2D/ReadVariableOp?(model_2/conv2d_62/BiasAdd/ReadVariableOp?'model_2/conv2d_62/Conv2D/ReadVariableOp?(model_2/conv2d_63/BiasAdd/ReadVariableOp?'model_2/conv2d_63/Conv2D/ReadVariableOp?(model_2/conv2d_64/BiasAdd/ReadVariableOp?'model_2/conv2d_64/Conv2D/ReadVariableOp?(model_2/conv2d_65/BiasAdd/ReadVariableOp?'model_2/conv2d_65/Conv2D/ReadVariableOp?(model_2/conv2d_66/BiasAdd/ReadVariableOp?'model_2/conv2d_66/Conv2D/ReadVariableOp?(model_2/conv2d_67/BiasAdd/ReadVariableOp?'model_2/conv2d_67/Conv2D/ReadVariableOp?(model_2/conv2d_68/BiasAdd/ReadVariableOp?'model_2/conv2d_68/Conv2D/ReadVariableOp?(model_2/conv2d_69/BiasAdd/ReadVariableOp?'model_2/conv2d_69/Conv2D/ReadVariableOp?(model_2/conv2d_70/BiasAdd/ReadVariableOp?'model_2/conv2d_70/Conv2D/ReadVariableOp?2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp?:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
'model_2/conv2d_52/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_52/Conv2DConv2Dinput_7/model_2/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_52/BiasAddBiasAdd!model_2/conv2d_52/Conv2D:output:00model_2/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_52/ReluRelu"model_2/conv2d_52/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_53/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_53/Conv2DConv2D$model_2/conv2d_52/Relu:activations:0/model_2/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_53/BiasAddBiasAdd!model_2/conv2d_53/Conv2D:output:00model_2/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_53/ReluRelu"model_2/conv2d_53/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_13/MaxPoolMaxPool$model_2/conv2d_53/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_54/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_54/Conv2DConv2D)model_2/max_pooling2d_13/MaxPool:output:0/model_2/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_54/BiasAddBiasAdd!model_2/conv2d_54/Conv2D:output:00model_2/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_54/ReluRelu"model_2/conv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_55/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_55/Conv2DConv2D$model_2/conv2d_54/Relu:activations:0/model_2/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_55/BiasAddBiasAdd!model_2/conv2d_55/Conv2D:output:00model_2/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_55/ReluRelu"model_2/conv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_14/MaxPoolMaxPool$model_2/conv2d_55/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_56/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_56/Conv2DConv2D)model_2/max_pooling2d_14/MaxPool:output:0/model_2/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_56/BiasAddBiasAdd!model_2/conv2d_56/Conv2D:output:00model_2/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_56/ReluRelu"model_2/conv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_57/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_57/Conv2DConv2D$model_2/conv2d_56/Relu:activations:0/model_2/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_57/BiasAddBiasAdd!model_2/conv2d_57/Conv2D:output:00model_2/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_57/ReluRelu"model_2/conv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_15/MaxPoolMaxPool$model_2/conv2d_57/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_58/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_58/Conv2DConv2D)model_2/max_pooling2d_15/MaxPool:output:0/model_2/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_58/BiasAddBiasAdd!model_2/conv2d_58/Conv2D:output:00model_2/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_58/ReluRelu"model_2/conv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
'model_2/conv2d_59/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_59/Conv2DConv2D$model_2/conv2d_58/Relu:activations:0/model_2/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_59/BiasAddBiasAdd!model_2/conv2d_59/Conv2D:output:00model_2/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_59/ReluRelu"model_2/conv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
 model_2/max_pooling2d_16/MaxPoolMaxPool$model_2/conv2d_59/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_60/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
model_2/conv2d_60/Conv2DConv2D)model_2/max_pooling2d_16/MaxPool:output:0/model_2/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
(model_2/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_60/BiasAddBiasAdd!model_2/conv2d_60/Conv2D:output:00model_2/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @|
model_2/conv2d_60/ReluRelu"model_2/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
'model_2/conv2d_61/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
model_2/conv2d_61/Conv2DConv2D$model_2/conv2d_60/Relu:activations:0/model_2/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
(model_2/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_61/BiasAddBiasAdd!model_2/conv2d_61/Conv2D:output:00model_2/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @|
model_2/conv2d_61/ReluRelu"model_2/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @t
 model_2/conv2d_transpose_9/ShapeShape$model_2/conv2d_61/Relu:activations:0*
T0*
_output_shapes
:x
.model_2/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_2/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_2/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(model_2/conv2d_transpose_9/strided_sliceStridedSlice)model_2/conv2d_transpose_9/Shape:output:07model_2/conv2d_transpose_9/strided_slice/stack:output:09model_2/conv2d_transpose_9/strided_slice/stack_1:output:09model_2/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_2/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@d
"model_2/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@d
"model_2/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
 model_2/conv2d_transpose_9/stackPack1model_2/conv2d_transpose_9/strided_slice:output:0+model_2/conv2d_transpose_9/stack/1:output:0+model_2/conv2d_transpose_9/stack/2:output:0+model_2/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_2/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_2/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_2/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model_2/conv2d_transpose_9/strided_slice_1StridedSlice)model_2/conv2d_transpose_9/stack:output:09model_2/conv2d_transpose_9/strided_slice_1/stack:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_1:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
+model_2/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput)model_2/conv2d_transpose_9/stack:output:0Bmodel_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp:model_2_conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
"model_2/conv2d_transpose_9/BiasAddBiasAdd4model_2/conv2d_transpose_9/conv2d_transpose:output:09model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ c
!model_2/concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_9/concatConcatV2+model_2/conv2d_transpose_9/BiasAdd:output:0$model_2/conv2d_59/Relu:activations:0*model_2/concatenate_9/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@?
'model_2/conv2d_62/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
model_2/conv2d_62/Conv2DConv2D%model_2/concatenate_9/concat:output:0/model_2/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_62/BiasAddBiasAdd!model_2/conv2d_62/Conv2D:output:00model_2/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_62/ReluRelu"model_2/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
'model_2/conv2d_63/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_63/Conv2DConv2D$model_2/conv2d_62/Relu:activations:0/model_2/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_63/BiasAddBiasAdd!model_2/conv2d_63/Conv2D:output:00model_2/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_63/ReluRelu"model_2/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ u
!model_2/conv2d_transpose_10/ShapeShape$model_2/conv2d_63/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_10/strided_sliceStridedSlice*model_2/conv2d_transpose_10/Shape:output:08model_2/conv2d_transpose_10/strided_slice/stack:output:0:model_2/conv2d_transpose_10/strided_slice/stack_1:output:0:model_2/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_10/stackPack2model_2/conv2d_transpose_10/strided_slice:output:0,model_2/conv2d_transpose_10/stack/1:output:0,model_2/conv2d_transpose_10/stack/2:output:0,model_2/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_10/strided_slice_1StridedSlice*model_2/conv2d_transpose_10/stack:output:0:model_2/conv2d_transpose_10/strided_slice_1/stack:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
,model_2/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_10/stack:output:0Cmodel_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_63/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_10/BiasAddBiasAdd5model_2/conv2d_transpose_10/conv2d_transpose:output:0:model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_10/concatConcatV2,model_2/conv2d_transpose_10/BiasAdd:output:0$model_2/conv2d_57/Relu:activations:0+model_2/concatenate_10/concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_64/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_64/Conv2DConv2D&model_2/concatenate_10/concat:output:0/model_2/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_64/BiasAddBiasAdd!model_2/conv2d_64/Conv2D:output:00model_2/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_64/ReluRelu"model_2/conv2d_64/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_65/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_65/Conv2DConv2D$model_2/conv2d_64/Relu:activations:0/model_2/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_65/BiasAddBiasAdd!model_2/conv2d_65/Conv2D:output:00model_2/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_65/ReluRelu"model_2/conv2d_65/BiasAdd:output:0*
T0*1
_output_shapes
:???????????u
!model_2/conv2d_transpose_11/ShapeShape$model_2/conv2d_65/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_11/strided_sliceStridedSlice*model_2/conv2d_transpose_11/Shape:output:08model_2/conv2d_transpose_11/strided_slice/stack:output:0:model_2/conv2d_transpose_11/strided_slice/stack_1:output:0:model_2/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_11/stackPack2model_2/conv2d_transpose_11/strided_slice:output:0,model_2/conv2d_transpose_11/stack/1:output:0,model_2/conv2d_transpose_11/stack/2:output:0,model_2/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_11/strided_slice_1StridedSlice*model_2/conv2d_transpose_11/stack:output:0:model_2/conv2d_transpose_11/strided_slice_1/stack:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
,model_2/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_11/stack:output:0Cmodel_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_65/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_11/BiasAddBiasAdd5model_2/conv2d_transpose_11/conv2d_transpose:output:0:model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_11/concatConcatV2,model_2/conv2d_transpose_11/BiasAdd:output:0$model_2/conv2d_55/Relu:activations:0+model_2/concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
'model_2/conv2d_66/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_66/Conv2DConv2D&model_2/concatenate_11/concat:output:0/model_2/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_66/BiasAddBiasAdd!model_2/conv2d_66/Conv2D:output:00model_2/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_66/ReluRelu"model_2/conv2d_66/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_67/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_67/Conv2DConv2D$model_2/conv2d_66/Relu:activations:0/model_2/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_67/BiasAddBiasAdd!model_2/conv2d_67/Conv2D:output:00model_2/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_67/ReluRelu"model_2/conv2d_67/BiasAdd:output:0*
T0*1
_output_shapes
:???????????u
!model_2/conv2d_transpose_12/ShapeShape$model_2/conv2d_67/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_12/strided_sliceStridedSlice*model_2/conv2d_transpose_12/Shape:output:08model_2/conv2d_transpose_12/strided_slice/stack:output:0:model_2/conv2d_transpose_12/strided_slice/stack_1:output:0:model_2/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_12/stackPack2model_2/conv2d_transpose_12/strided_slice:output:0,model_2/conv2d_transpose_12/stack/1:output:0,model_2/conv2d_transpose_12/stack/2:output:0,model_2/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_12/strided_slice_1StridedSlice*model_2/conv2d_transpose_12/stack:output:0:model_2/conv2d_transpose_12/strided_slice_1/stack:output:0<model_2/conv2d_transpose_12/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
,model_2/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_12/stack:output:0Cmodel_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_67/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_12/BiasAddBiasAdd5model_2/conv2d_transpose_12/conv2d_transpose:output:0:model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_12/concatConcatV2,model_2/conv2d_transpose_12/BiasAdd:output:0$model_2/conv2d_53/Relu:activations:0+model_2/concatenate_12/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
'model_2/conv2d_68/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_68/Conv2DConv2D&model_2/concatenate_12/concat:output:0/model_2/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_68/BiasAddBiasAdd!model_2/conv2d_68/Conv2D:output:00model_2/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_68/ReluRelu"model_2/conv2d_68/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_69/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_69/Conv2DConv2D$model_2/conv2d_68/Relu:activations:0/model_2/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_69/BiasAddBiasAdd!model_2/conv2d_69/Conv2D:output:00model_2/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_69/ReluRelu"model_2/conv2d_69/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_70/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
model_2/conv2d_70/Conv2DConv2D$model_2/conv2d_69/Relu:activations:0/model_2/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
?
(model_2/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
model_2/conv2d_70/BiasAddBiasAdd!model_2/conv2d_70/Conv2D:output:00model_2/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|?
model_2/conv2d_70/SoftmaxSoftmax"model_2/conv2d_70/BiasAdd:output:0*
T0*1
_output_shapes
:???????????|?
NoOpNoOp)^model_2/conv2d_52/BiasAdd/ReadVariableOp(^model_2/conv2d_52/Conv2D/ReadVariableOp)^model_2/conv2d_53/BiasAdd/ReadVariableOp(^model_2/conv2d_53/Conv2D/ReadVariableOp)^model_2/conv2d_54/BiasAdd/ReadVariableOp(^model_2/conv2d_54/Conv2D/ReadVariableOp)^model_2/conv2d_55/BiasAdd/ReadVariableOp(^model_2/conv2d_55/Conv2D/ReadVariableOp)^model_2/conv2d_56/BiasAdd/ReadVariableOp(^model_2/conv2d_56/Conv2D/ReadVariableOp)^model_2/conv2d_57/BiasAdd/ReadVariableOp(^model_2/conv2d_57/Conv2D/ReadVariableOp)^model_2/conv2d_58/BiasAdd/ReadVariableOp(^model_2/conv2d_58/Conv2D/ReadVariableOp)^model_2/conv2d_59/BiasAdd/ReadVariableOp(^model_2/conv2d_59/Conv2D/ReadVariableOp)^model_2/conv2d_60/BiasAdd/ReadVariableOp(^model_2/conv2d_60/Conv2D/ReadVariableOp)^model_2/conv2d_61/BiasAdd/ReadVariableOp(^model_2/conv2d_61/Conv2D/ReadVariableOp)^model_2/conv2d_62/BiasAdd/ReadVariableOp(^model_2/conv2d_62/Conv2D/ReadVariableOp)^model_2/conv2d_63/BiasAdd/ReadVariableOp(^model_2/conv2d_63/Conv2D/ReadVariableOp)^model_2/conv2d_64/BiasAdd/ReadVariableOp(^model_2/conv2d_64/Conv2D/ReadVariableOp)^model_2/conv2d_65/BiasAdd/ReadVariableOp(^model_2/conv2d_65/Conv2D/ReadVariableOp)^model_2/conv2d_66/BiasAdd/ReadVariableOp(^model_2/conv2d_66/Conv2D/ReadVariableOp)^model_2/conv2d_67/BiasAdd/ReadVariableOp(^model_2/conv2d_67/Conv2D/ReadVariableOp)^model_2/conv2d_68/BiasAdd/ReadVariableOp(^model_2/conv2d_68/Conv2D/ReadVariableOp)^model_2/conv2d_69/BiasAdd/ReadVariableOp(^model_2/conv2d_69/Conv2D/ReadVariableOp)^model_2/conv2d_70/BiasAdd/ReadVariableOp(^model_2/conv2d_70/Conv2D/ReadVariableOp3^model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2^model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp;^model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 |
IdentityIdentity#model_2/conv2d_70/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:???????????|"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(model_2/conv2d_52/BiasAdd/ReadVariableOp(model_2/conv2d_52/BiasAdd/ReadVariableOp2R
'model_2/conv2d_52/Conv2D/ReadVariableOp'model_2/conv2d_52/Conv2D/ReadVariableOp2T
(model_2/conv2d_53/BiasAdd/ReadVariableOp(model_2/conv2d_53/BiasAdd/ReadVariableOp2R
'model_2/conv2d_53/Conv2D/ReadVariableOp'model_2/conv2d_53/Conv2D/ReadVariableOp2T
(model_2/conv2d_54/BiasAdd/ReadVariableOp(model_2/conv2d_54/BiasAdd/ReadVariableOp2R
'model_2/conv2d_54/Conv2D/ReadVariableOp'model_2/conv2d_54/Conv2D/ReadVariableOp2T
(model_2/conv2d_55/BiasAdd/ReadVariableOp(model_2/conv2d_55/BiasAdd/ReadVariableOp2R
'model_2/conv2d_55/Conv2D/ReadVariableOp'model_2/conv2d_55/Conv2D/ReadVariableOp2T
(model_2/conv2d_56/BiasAdd/ReadVariableOp(model_2/conv2d_56/BiasAdd/ReadVariableOp2R
'model_2/conv2d_56/Conv2D/ReadVariableOp'model_2/conv2d_56/Conv2D/ReadVariableOp2T
(model_2/conv2d_57/BiasAdd/ReadVariableOp(model_2/conv2d_57/BiasAdd/ReadVariableOp2R
'model_2/conv2d_57/Conv2D/ReadVariableOp'model_2/conv2d_57/Conv2D/ReadVariableOp2T
(model_2/conv2d_58/BiasAdd/ReadVariableOp(model_2/conv2d_58/BiasAdd/ReadVariableOp2R
'model_2/conv2d_58/Conv2D/ReadVariableOp'model_2/conv2d_58/Conv2D/ReadVariableOp2T
(model_2/conv2d_59/BiasAdd/ReadVariableOp(model_2/conv2d_59/BiasAdd/ReadVariableOp2R
'model_2/conv2d_59/Conv2D/ReadVariableOp'model_2/conv2d_59/Conv2D/ReadVariableOp2T
(model_2/conv2d_60/BiasAdd/ReadVariableOp(model_2/conv2d_60/BiasAdd/ReadVariableOp2R
'model_2/conv2d_60/Conv2D/ReadVariableOp'model_2/conv2d_60/Conv2D/ReadVariableOp2T
(model_2/conv2d_61/BiasAdd/ReadVariableOp(model_2/conv2d_61/BiasAdd/ReadVariableOp2R
'model_2/conv2d_61/Conv2D/ReadVariableOp'model_2/conv2d_61/Conv2D/ReadVariableOp2T
(model_2/conv2d_62/BiasAdd/ReadVariableOp(model_2/conv2d_62/BiasAdd/ReadVariableOp2R
'model_2/conv2d_62/Conv2D/ReadVariableOp'model_2/conv2d_62/Conv2D/ReadVariableOp2T
(model_2/conv2d_63/BiasAdd/ReadVariableOp(model_2/conv2d_63/BiasAdd/ReadVariableOp2R
'model_2/conv2d_63/Conv2D/ReadVariableOp'model_2/conv2d_63/Conv2D/ReadVariableOp2T
(model_2/conv2d_64/BiasAdd/ReadVariableOp(model_2/conv2d_64/BiasAdd/ReadVariableOp2R
'model_2/conv2d_64/Conv2D/ReadVariableOp'model_2/conv2d_64/Conv2D/ReadVariableOp2T
(model_2/conv2d_65/BiasAdd/ReadVariableOp(model_2/conv2d_65/BiasAdd/ReadVariableOp2R
'model_2/conv2d_65/Conv2D/ReadVariableOp'model_2/conv2d_65/Conv2D/ReadVariableOp2T
(model_2/conv2d_66/BiasAdd/ReadVariableOp(model_2/conv2d_66/BiasAdd/ReadVariableOp2R
'model_2/conv2d_66/Conv2D/ReadVariableOp'model_2/conv2d_66/Conv2D/ReadVariableOp2T
(model_2/conv2d_67/BiasAdd/ReadVariableOp(model_2/conv2d_67/BiasAdd/ReadVariableOp2R
'model_2/conv2d_67/Conv2D/ReadVariableOp'model_2/conv2d_67/Conv2D/ReadVariableOp2T
(model_2/conv2d_68/BiasAdd/ReadVariableOp(model_2/conv2d_68/BiasAdd/ReadVariableOp2R
'model_2/conv2d_68/Conv2D/ReadVariableOp'model_2/conv2d_68/Conv2D/ReadVariableOp2T
(model_2/conv2d_69/BiasAdd/ReadVariableOp(model_2/conv2d_69/BiasAdd/ReadVariableOp2R
'model_2/conv2d_69/Conv2D/ReadVariableOp'model_2/conv2d_69/Conv2D/ReadVariableOp2T
(model_2/conv2d_70/BiasAdd/ReadVariableOp(model_2/conv2d_70/BiasAdd/ReadVariableOp2R
'model_2/conv2d_70/Conv2D/ReadVariableOp'model_2/conv2d_70/Conv2D/ReadVariableOp2h
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2f
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp2x
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_7
?
?
*__inference_sequential_layer_call_fn_96246
model_2_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodel_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_96054u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
1
_output_shapes
:???????????
'
_user_specified_namemodel_2_input
?
?
2__inference_conv2d_transpose_9_layer_call_fn_98099

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_94132?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_94573

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94068

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_97990

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_94220

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_94376

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_68_layer_call_fn_98439

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_94621y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_97950

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_95756

inputs'
model_2_95654:
model_2_95656:'
model_2_95658:
model_2_95660:'
model_2_95662:
model_2_95664:'
model_2_95666:
model_2_95668:'
model_2_95670:
model_2_95672:'
model_2_95674:
model_2_95676:'
model_2_95678: 
model_2_95680: '
model_2_95682:  
model_2_95684: '
model_2_95686: @
model_2_95688:@'
model_2_95690:@@
model_2_95692:@'
model_2_95694: @
model_2_95696: '
model_2_95698:@ 
model_2_95700: '
model_2_95702:  
model_2_95704: '
model_2_95706: 
model_2_95708:'
model_2_95710: 
model_2_95712:'
model_2_95714:
model_2_95716:'
model_2_95718:
model_2_95720:'
model_2_95722:
model_2_95724:'
model_2_95726:
model_2_95728:'
model_2_95730:
model_2_95732:'
model_2_95734:
model_2_95736:'
model_2_95738:
model_2_95740:'
model_2_95742:|
model_2_95744:|
identity	??model_2/StatefulPartitionedCall?
model_2/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_2_95654model_2_95656model_2_95658model_2_95660model_2_95662model_2_95664model_2_95666model_2_95668model_2_95670model_2_95672model_2_95674model_2_95676model_2_95678model_2_95680model_2_95682model_2_95684model_2_95686model_2_95688model_2_95690model_2_95692model_2_95694model_2_95696model_2_95698model_2_95700model_2_95702model_2_95704model_2_95706model_2_95708model_2_95710model_2_95712model_2_95714model_2_95716model_2_95718model_2_95720model_2_95722model_2_95724model_2_95726model_2_95728model_2_95730model_2_95732model_2_95734model_2_95736model_2_95738model_2_95740model_2_95742model_2_95744*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_94662?
argmax/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_95753t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????h
NoOpNoOp ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_94132

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_14_layer_call_fn_97945

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94068?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_98090

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
]
A__inference_argmax_layer_call_and_return_conditional_losses_95753

inputs
identity	[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
ArgMaxArgMaxinputsArgMax/dimension:output:0*
T0*-
_output_shapes
:???????????]
IdentityIdentityArgMax:output:0*
T0	*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????|:Y U
1
_output_shapes
:???????????|
 
_user_specified_nameinputs
?
?
)__inference_conv2d_54_layer_call_fn_97909

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_94324y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
t
H__inference_concatenate_9_layer_call_and_return_conditional_losses_98145
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:?????????@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????@@ :?????????@@ :Y U
/
_output_shapes
:?????????@@ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@ 
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_94341

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_57_layer_call_fn_97979

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_94376y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_94411

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_94446

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_98260

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_56_layer_call_fn_97959

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_94359y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_13_layer_call_fn_97895

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94056?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_98185

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_94662

inputs)
conv2d_52_94290:
conv2d_52_94292:)
conv2d_53_94307:
conv2d_53_94309:)
conv2d_54_94325:
conv2d_54_94327:)
conv2d_55_94342:
conv2d_55_94344:)
conv2d_56_94360:
conv2d_56_94362:)
conv2d_57_94377:
conv2d_57_94379:)
conv2d_58_94395: 
conv2d_58_94397: )
conv2d_59_94412:  
conv2d_59_94414: )
conv2d_60_94430: @
conv2d_60_94432:@)
conv2d_61_94447:@@
conv2d_61_94449:@2
conv2d_transpose_9_94452: @&
conv2d_transpose_9_94454: )
conv2d_62_94478:@ 
conv2d_62_94480: )
conv2d_63_94495:  
conv2d_63_94497: 3
conv2d_transpose_10_94500: '
conv2d_transpose_10_94502:)
conv2d_64_94526: 
conv2d_64_94528:)
conv2d_65_94543:
conv2d_65_94545:3
conv2d_transpose_11_94548:'
conv2d_transpose_11_94550:)
conv2d_66_94574:
conv2d_66_94576:)
conv2d_67_94591:
conv2d_67_94593:3
conv2d_transpose_12_94596:'
conv2d_transpose_12_94598:)
conv2d_68_94622:
conv2d_68_94624:)
conv2d_69_94639:
conv2d_69_94641:)
conv2d_70_94656:|
conv2d_70_94658:|
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_52_94290conv2d_52_94292*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_94289?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_94307conv2d_53_94309*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_94306?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94056?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_54_94325conv2d_54_94327*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_94324?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_94342conv2d_55_94344*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_94341?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94068?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_56_94360conv2d_56_94362*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_94359?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_94377conv2d_57_94379*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_94376?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94080?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_58_94395conv2d_58_94397*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_94394?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_94412conv2d_59_94414*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_94411?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_94092?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_60_94430conv2d_60_94432*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_94429?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_94447conv2d_61_94449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_94446?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_transpose_9_94452conv2d_transpose_9_94454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_94132?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_94464?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_62_94478conv2d_62_94480*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_94477?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_94495conv2d_63_94497*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_94494?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_transpose_10_94500conv2d_transpose_10_94502*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_94176?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_94512?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_64_94526conv2d_64_94528*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_94525?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_94543conv2d_65_94545*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_94542?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_transpose_11_94548conv2d_transpose_11_94550*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_94220?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_94560?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_66_94574conv2d_66_94576*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_94573?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_94591conv2d_67_94593*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_94590?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0conv2d_transpose_12_94596conv2d_transpose_12_94598*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_94264?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_94608?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_68_94622conv2d_68_94624*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_94621?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_94639conv2d_69_94641*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_94638?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0conv2d_70_94656conv2d_70_94658*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_94655?
IdentityIdentity*conv2d_70/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_11_layer_call_and_return_conditional_losses_94560

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:YU
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_98355

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
ç
?%
B__inference_model_2_layer_call_and_return_conditional_losses_97614

inputsB
(conv2d_52_conv2d_readvariableop_resource:7
)conv2d_52_biasadd_readvariableop_resource:B
(conv2d_53_conv2d_readvariableop_resource:7
)conv2d_53_biasadd_readvariableop_resource:B
(conv2d_54_conv2d_readvariableop_resource:7
)conv2d_54_biasadd_readvariableop_resource:B
(conv2d_55_conv2d_readvariableop_resource:7
)conv2d_55_biasadd_readvariableop_resource:B
(conv2d_56_conv2d_readvariableop_resource:7
)conv2d_56_biasadd_readvariableop_resource:B
(conv2d_57_conv2d_readvariableop_resource:7
)conv2d_57_biasadd_readvariableop_resource:B
(conv2d_58_conv2d_readvariableop_resource: 7
)conv2d_58_biasadd_readvariableop_resource: B
(conv2d_59_conv2d_readvariableop_resource:  7
)conv2d_59_biasadd_readvariableop_resource: B
(conv2d_60_conv2d_readvariableop_resource: @7
)conv2d_60_biasadd_readvariableop_resource:@B
(conv2d_61_conv2d_readvariableop_resource:@@7
)conv2d_61_biasadd_readvariableop_resource:@U
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_9_biasadd_readvariableop_resource: B
(conv2d_62_conv2d_readvariableop_resource:@ 7
)conv2d_62_biasadd_readvariableop_resource: B
(conv2d_63_conv2d_readvariableop_resource:  7
)conv2d_63_biasadd_readvariableop_resource: V
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_10_biasadd_readvariableop_resource:B
(conv2d_64_conv2d_readvariableop_resource: 7
)conv2d_64_biasadd_readvariableop_resource:B
(conv2d_65_conv2d_readvariableop_resource:7
)conv2d_65_biasadd_readvariableop_resource:V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_11_biasadd_readvariableop_resource:B
(conv2d_66_conv2d_readvariableop_resource:7
)conv2d_66_biasadd_readvariableop_resource:B
(conv2d_67_conv2d_readvariableop_resource:7
)conv2d_67_biasadd_readvariableop_resource:V
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_12_biasadd_readvariableop_resource:B
(conv2d_68_conv2d_readvariableop_resource:7
)conv2d_68_biasadd_readvariableop_resource:B
(conv2d_69_conv2d_readvariableop_resource:7
)conv2d_69_biasadd_readvariableop_resource:B
(conv2d_70_conv2d_readvariableop_resource:|7
)conv2d_70_biasadd_readvariableop_resource:|
identity?? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? conv2d_55/BiasAdd/ReadVariableOp?conv2d_55/Conv2D/ReadVariableOp? conv2d_56/BiasAdd/ReadVariableOp?conv2d_56/Conv2D/ReadVariableOp? conv2d_57/BiasAdd/ReadVariableOp?conv2d_57/Conv2D/ReadVariableOp? conv2d_58/BiasAdd/ReadVariableOp?conv2d_58/Conv2D/ReadVariableOp? conv2d_59/BiasAdd/ReadVariableOp?conv2d_59/Conv2D/ReadVariableOp? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp? conv2d_65/BiasAdd/ReadVariableOp?conv2d_65/Conv2D/ReadVariableOp? conv2d_66/BiasAdd/ReadVariableOp?conv2d_66/Conv2D/ReadVariableOp? conv2d_67/BiasAdd/ReadVariableOp?conv2d_67/Conv2D/ReadVariableOp? conv2d_68/BiasAdd/ReadVariableOp?conv2d_68/Conv2D/ReadVariableOp? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp?*conv2d_transpose_10/BiasAdd/ReadVariableOp?3conv2d_transpose_10/conv2d_transpose/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?*conv2d_transpose_12/BiasAdd/ReadVariableOp?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?)conv2d_transpose_9/BiasAdd/ReadVariableOp?2conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_52/Conv2DConv2Dinputs'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d_13/MaxPoolMaxPoolconv2d_53/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_54/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d_14/MaxPoolMaxPoolconv2d_55/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_56/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_57/Conv2DConv2Dconv2d_56/Relu:activations:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d_15/MaxPoolMaxPoolconv2d_57/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_58/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_59/Conv2DConv2Dconv2d_58/Relu:activations:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
max_pooling2d_16/MaxPoolMaxPoolconv2d_59/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_60/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @l
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_61/Conv2DConv2Dconv2d_60/Relu:activations:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @l
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @d
conv2d_transpose_9/ShapeShapeconv2d_61/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0conv2d_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_transpose_9/BiasAddBiasAdd,conv2d_transpose_9/conv2d_transpose:output:01conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ [
concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_9/concatConcatV2#conv2d_transpose_9/BiasAdd:output:0conv2d_59/Relu:activations:0"concatenate_9/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_62/Conv2DConv2Dconcatenate_9/concat:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ e
conv2d_transpose_10/ShapeShapeconv2d_63/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0conv2d_63/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????\
concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_10/concatConcatV2$conv2d_transpose_10/BiasAdd:output:0conv2d_57/Relu:activations:0#concatenate_10/concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? ?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_64/Conv2DConv2Dconcatenate_10/concat:output:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*1
_output_shapes
:???????????e
conv2d_transpose_11/ShapeShapeconv2d_65/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0conv2d_65/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????\
concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_11/concatConcatV2$conv2d_transpose_11/BiasAdd:output:0conv2d_55/Relu:activations:0#concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
conv2d_66/Conv2D/ReadVariableOpReadVariableOp(conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_66/Conv2DConv2Dconcatenate_11/concat:output:0'conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_66/BiasAdd/ReadVariableOpReadVariableOp)conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_66/BiasAddBiasAddconv2d_66/Conv2D:output:0(conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_66/ReluReluconv2d_66/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_67/Conv2DConv2Dconv2d_66/Relu:activations:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_67/ReluReluconv2d_67/BiasAdd:output:0*
T0*1
_output_shapes
:???????????e
conv2d_transpose_12/ShapeShapeconv2d_67/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0conv2d_67/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????\
concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_12/concatConcatV2$conv2d_transpose_12/BiasAdd:output:0conv2d_53/Relu:activations:0#concatenate_12/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_68/Conv2DConv2Dconcatenate_12/concat:output:0'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_68/ReluReluconv2d_68/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_69/Conv2DConv2Dconv2d_68/Relu:activations:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
conv2d_70/Conv2DConv2Dconv2d_69/Relu:activations:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|t
conv2d_70/SoftmaxSoftmaxconv2d_70/BiasAdd:output:0*
T0*1
_output_shapes
:???????????|t
IdentityIdentityconv2d_70/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:???????????|?
NoOpNoOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp!^conv2d_66/BiasAdd/ReadVariableOp ^conv2d_66/Conv2D/ReadVariableOp!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp*^conv2d_transpose_9/BiasAdd/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2D
 conv2d_66/BiasAdd/ReadVariableOp conv2d_66/BiasAdd/ReadVariableOp2B
conv2d_66/Conv2D/ReadVariableOpconv2d_66/Conv2D/ReadVariableOp2D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_9/BiasAdd/ReadVariableOp)conv2d_transpose_9/BiasAdd/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
r
H__inference_concatenate_9_layer_call_and_return_conditional_losses_94464

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :}
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:?????????@@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????@@ :?????????@@ :W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_97890

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_95393
input_7!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95201y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_7
?
?
)__inference_conv2d_60_layer_call_fn_98059

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_94429w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
u
I__inference_concatenate_10_layer_call_and_return_conditional_losses_98240
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:??????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
??
?`
!__inference__traced_restore_99393
file_prefix;
!assignvariableop_conv2d_52_kernel:/
!assignvariableop_1_conv2d_52_bias:=
#assignvariableop_2_conv2d_53_kernel:/
!assignvariableop_3_conv2d_53_bias:=
#assignvariableop_4_conv2d_54_kernel:/
!assignvariableop_5_conv2d_54_bias:=
#assignvariableop_6_conv2d_55_kernel:/
!assignvariableop_7_conv2d_55_bias:=
#assignvariableop_8_conv2d_56_kernel:/
!assignvariableop_9_conv2d_56_bias:>
$assignvariableop_10_conv2d_57_kernel:0
"assignvariableop_11_conv2d_57_bias:>
$assignvariableop_12_conv2d_58_kernel: 0
"assignvariableop_13_conv2d_58_bias: >
$assignvariableop_14_conv2d_59_kernel:  0
"assignvariableop_15_conv2d_59_bias: >
$assignvariableop_16_conv2d_60_kernel: @0
"assignvariableop_17_conv2d_60_bias:@>
$assignvariableop_18_conv2d_61_kernel:@@0
"assignvariableop_19_conv2d_61_bias:@G
-assignvariableop_20_conv2d_transpose_9_kernel: @9
+assignvariableop_21_conv2d_transpose_9_bias: >
$assignvariableop_22_conv2d_62_kernel:@ 0
"assignvariableop_23_conv2d_62_bias: >
$assignvariableop_24_conv2d_63_kernel:  0
"assignvariableop_25_conv2d_63_bias: H
.assignvariableop_26_conv2d_transpose_10_kernel: :
,assignvariableop_27_conv2d_transpose_10_bias:>
$assignvariableop_28_conv2d_64_kernel: 0
"assignvariableop_29_conv2d_64_bias:>
$assignvariableop_30_conv2d_65_kernel:0
"assignvariableop_31_conv2d_65_bias:H
.assignvariableop_32_conv2d_transpose_11_kernel::
,assignvariableop_33_conv2d_transpose_11_bias:>
$assignvariableop_34_conv2d_66_kernel:0
"assignvariableop_35_conv2d_66_bias:>
$assignvariableop_36_conv2d_67_kernel:0
"assignvariableop_37_conv2d_67_bias:H
.assignvariableop_38_conv2d_transpose_12_kernel::
,assignvariableop_39_conv2d_transpose_12_bias:>
$assignvariableop_40_conv2d_68_kernel:0
"assignvariableop_41_conv2d_68_bias:>
$assignvariableop_42_conv2d_69_kernel:0
"assignvariableop_43_conv2d_69_bias:>
$assignvariableop_44_conv2d_70_kernel:|0
"assignvariableop_45_conv2d_70_bias:|'
assignvariableop_46_adam_iter:	 )
assignvariableop_47_adam_beta_1: )
assignvariableop_48_adam_beta_2: (
assignvariableop_49_adam_decay: 0
&assignvariableop_50_adam_learning_rate: #
assignvariableop_51_total: #
assignvariableop_52_count: E
+assignvariableop_53_adam_conv2d_52_kernel_m:7
)assignvariableop_54_adam_conv2d_52_bias_m:E
+assignvariableop_55_adam_conv2d_53_kernel_m:7
)assignvariableop_56_adam_conv2d_53_bias_m:E
+assignvariableop_57_adam_conv2d_54_kernel_m:7
)assignvariableop_58_adam_conv2d_54_bias_m:E
+assignvariableop_59_adam_conv2d_55_kernel_m:7
)assignvariableop_60_adam_conv2d_55_bias_m:E
+assignvariableop_61_adam_conv2d_56_kernel_m:7
)assignvariableop_62_adam_conv2d_56_bias_m:E
+assignvariableop_63_adam_conv2d_57_kernel_m:7
)assignvariableop_64_adam_conv2d_57_bias_m:E
+assignvariableop_65_adam_conv2d_58_kernel_m: 7
)assignvariableop_66_adam_conv2d_58_bias_m: E
+assignvariableop_67_adam_conv2d_59_kernel_m:  7
)assignvariableop_68_adam_conv2d_59_bias_m: E
+assignvariableop_69_adam_conv2d_60_kernel_m: @7
)assignvariableop_70_adam_conv2d_60_bias_m:@E
+assignvariableop_71_adam_conv2d_61_kernel_m:@@7
)assignvariableop_72_adam_conv2d_61_bias_m:@N
4assignvariableop_73_adam_conv2d_transpose_9_kernel_m: @@
2assignvariableop_74_adam_conv2d_transpose_9_bias_m: E
+assignvariableop_75_adam_conv2d_62_kernel_m:@ 7
)assignvariableop_76_adam_conv2d_62_bias_m: E
+assignvariableop_77_adam_conv2d_63_kernel_m:  7
)assignvariableop_78_adam_conv2d_63_bias_m: O
5assignvariableop_79_adam_conv2d_transpose_10_kernel_m: A
3assignvariableop_80_adam_conv2d_transpose_10_bias_m:E
+assignvariableop_81_adam_conv2d_64_kernel_m: 7
)assignvariableop_82_adam_conv2d_64_bias_m:E
+assignvariableop_83_adam_conv2d_65_kernel_m:7
)assignvariableop_84_adam_conv2d_65_bias_m:O
5assignvariableop_85_adam_conv2d_transpose_11_kernel_m:A
3assignvariableop_86_adam_conv2d_transpose_11_bias_m:E
+assignvariableop_87_adam_conv2d_66_kernel_m:7
)assignvariableop_88_adam_conv2d_66_bias_m:E
+assignvariableop_89_adam_conv2d_67_kernel_m:7
)assignvariableop_90_adam_conv2d_67_bias_m:O
5assignvariableop_91_adam_conv2d_transpose_12_kernel_m:A
3assignvariableop_92_adam_conv2d_transpose_12_bias_m:E
+assignvariableop_93_adam_conv2d_68_kernel_m:7
)assignvariableop_94_adam_conv2d_68_bias_m:E
+assignvariableop_95_adam_conv2d_69_kernel_m:7
)assignvariableop_96_adam_conv2d_69_bias_m:E
+assignvariableop_97_adam_conv2d_70_kernel_m:|7
)assignvariableop_98_adam_conv2d_70_bias_m:|E
+assignvariableop_99_adam_conv2d_52_kernel_v:8
*assignvariableop_100_adam_conv2d_52_bias_v:F
,assignvariableop_101_adam_conv2d_53_kernel_v:8
*assignvariableop_102_adam_conv2d_53_bias_v:F
,assignvariableop_103_adam_conv2d_54_kernel_v:8
*assignvariableop_104_adam_conv2d_54_bias_v:F
,assignvariableop_105_adam_conv2d_55_kernel_v:8
*assignvariableop_106_adam_conv2d_55_bias_v:F
,assignvariableop_107_adam_conv2d_56_kernel_v:8
*assignvariableop_108_adam_conv2d_56_bias_v:F
,assignvariableop_109_adam_conv2d_57_kernel_v:8
*assignvariableop_110_adam_conv2d_57_bias_v:F
,assignvariableop_111_adam_conv2d_58_kernel_v: 8
*assignvariableop_112_adam_conv2d_58_bias_v: F
,assignvariableop_113_adam_conv2d_59_kernel_v:  8
*assignvariableop_114_adam_conv2d_59_bias_v: F
,assignvariableop_115_adam_conv2d_60_kernel_v: @8
*assignvariableop_116_adam_conv2d_60_bias_v:@F
,assignvariableop_117_adam_conv2d_61_kernel_v:@@8
*assignvariableop_118_adam_conv2d_61_bias_v:@O
5assignvariableop_119_adam_conv2d_transpose_9_kernel_v: @A
3assignvariableop_120_adam_conv2d_transpose_9_bias_v: F
,assignvariableop_121_adam_conv2d_62_kernel_v:@ 8
*assignvariableop_122_adam_conv2d_62_bias_v: F
,assignvariableop_123_adam_conv2d_63_kernel_v:  8
*assignvariableop_124_adam_conv2d_63_bias_v: P
6assignvariableop_125_adam_conv2d_transpose_10_kernel_v: B
4assignvariableop_126_adam_conv2d_transpose_10_bias_v:F
,assignvariableop_127_adam_conv2d_64_kernel_v: 8
*assignvariableop_128_adam_conv2d_64_bias_v:F
,assignvariableop_129_adam_conv2d_65_kernel_v:8
*assignvariableop_130_adam_conv2d_65_bias_v:P
6assignvariableop_131_adam_conv2d_transpose_11_kernel_v:B
4assignvariableop_132_adam_conv2d_transpose_11_bias_v:F
,assignvariableop_133_adam_conv2d_66_kernel_v:8
*assignvariableop_134_adam_conv2d_66_bias_v:F
,assignvariableop_135_adam_conv2d_67_kernel_v:8
*assignvariableop_136_adam_conv2d_67_bias_v:P
6assignvariableop_137_adam_conv2d_transpose_12_kernel_v:B
4assignvariableop_138_adam_conv2d_transpose_12_bias_v:F
,assignvariableop_139_adam_conv2d_68_kernel_v:8
*assignvariableop_140_adam_conv2d_68_bias_v:F
,assignvariableop_141_adam_conv2d_69_kernel_v:8
*assignvariableop_142_adam_conv2d_69_bias_v:F
,assignvariableop_143_adam_conv2d_70_kernel_v:|8
*assignvariableop_144_adam_conv2d_70_bias_v:|
identity_146??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?T
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?S
value?SB?S?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/24/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/25/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/28/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/29/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/30/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/31/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/32/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/33/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/34/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/35/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/36/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/37/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/38/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/39/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/40/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/41/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/42/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/43/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/44/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/45/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/24/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/25/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/28/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/29/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/30/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/31/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/32/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/33/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/34/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/35/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/36/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/37/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/38/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/39/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/40/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/41/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/42/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/43/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/44/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/45/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_52_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_52_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_53_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_53_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_54_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_54_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_55_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_55_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_56_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_56_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_57_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_57_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_58_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_58_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_59_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_59_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_60_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_60_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_61_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_61_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_conv2d_transpose_9_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_conv2d_transpose_9_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp$assignvariableop_22_conv2d_62_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp"assignvariableop_23_conv2d_62_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_63_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_63_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp.assignvariableop_26_conv2d_transpose_10_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_conv2d_transpose_10_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_64_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv2d_64_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_65_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_65_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp.assignvariableop_32_conv2d_transpose_11_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_conv2d_transpose_11_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv2d_66_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp"assignvariableop_35_conv2d_66_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp$assignvariableop_36_conv2d_67_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp"assignvariableop_37_conv2d_67_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp.assignvariableop_38_conv2d_transpose_12_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_conv2d_transpose_12_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp$assignvariableop_40_conv2d_68_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp"assignvariableop_41_conv2d_68_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp$assignvariableop_42_conv2d_69_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp"assignvariableop_43_conv2d_69_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_conv2d_70_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp"assignvariableop_45_conv2d_70_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpassignvariableop_46_adam_iterIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOpassignvariableop_47_adam_beta_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpassignvariableop_48_adam_beta_2Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpassignvariableop_49_adam_decayIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_learning_rateIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpassignvariableop_51_totalIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpassignvariableop_52_countIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_52_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_52_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_53_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_53_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv2d_54_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv2d_54_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_55_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_55_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_56_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_56_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_57_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_57_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_58_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_58_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_59_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_59_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_60_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_60_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_61_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_61_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp4assignvariableop_73_adam_conv2d_transpose_9_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp2assignvariableop_74_adam_conv2d_transpose_9_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_62_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_62_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_63_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv2d_63_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp5assignvariableop_79_adam_conv2d_transpose_10_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp3assignvariableop_80_adam_conv2d_transpose_10_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv2d_64_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_conv2d_64_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_conv2d_65_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_conv2d_65_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp5assignvariableop_85_adam_conv2d_transpose_11_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp3assignvariableop_86_adam_conv2d_transpose_11_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_conv2d_66_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_conv2d_66_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_conv2d_67_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_conv2d_67_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_conv2d_transpose_12_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_conv2d_transpose_12_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv2d_68_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv2d_68_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_conv2d_69_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_conv2d_69_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_conv2d_70_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_conv2d_70_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_conv2d_52_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOp*assignvariableop_100_adam_conv2d_52_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_conv2d_53_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_conv2d_53_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_conv2d_54_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_conv2d_54_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv2d_55_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_conv2d_55_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_107AssignVariableOp,assignvariableop_107_adam_conv2d_56_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_conv2d_56_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv2d_57_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_conv2d_57_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_conv2d_58_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_112AssignVariableOp*assignvariableop_112_adam_conv2d_58_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_113AssignVariableOp,assignvariableop_113_adam_conv2d_59_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_114AssignVariableOp*assignvariableop_114_adam_conv2d_59_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_conv2d_60_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_conv2d_60_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_117AssignVariableOp,assignvariableop_117_adam_conv2d_61_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_118AssignVariableOp*assignvariableop_118_adam_conv2d_61_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_119AssignVariableOp5assignvariableop_119_adam_conv2d_transpose_9_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_120AssignVariableOp3assignvariableop_120_adam_conv2d_transpose_9_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_121AssignVariableOp,assignvariableop_121_adam_conv2d_62_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_122AssignVariableOp*assignvariableop_122_adam_conv2d_62_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_conv2d_63_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_124AssignVariableOp*assignvariableop_124_adam_conv2d_63_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_125AssignVariableOp6assignvariableop_125_adam_conv2d_transpose_10_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_126AssignVariableOp4assignvariableop_126_adam_conv2d_transpose_10_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_127AssignVariableOp,assignvariableop_127_adam_conv2d_64_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_128AssignVariableOp*assignvariableop_128_adam_conv2d_64_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_129AssignVariableOp,assignvariableop_129_adam_conv2d_65_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_130AssignVariableOp*assignvariableop_130_adam_conv2d_65_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_131AssignVariableOp6assignvariableop_131_adam_conv2d_transpose_11_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_132AssignVariableOp4assignvariableop_132_adam_conv2d_transpose_11_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_133AssignVariableOp,assignvariableop_133_adam_conv2d_66_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_134AssignVariableOp*assignvariableop_134_adam_conv2d_66_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_135AssignVariableOp,assignvariableop_135_adam_conv2d_67_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_136AssignVariableOp*assignvariableop_136_adam_conv2d_67_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_137AssignVariableOp6assignvariableop_137_adam_conv2d_transpose_12_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_138AssignVariableOp4assignvariableop_138_adam_conv2d_transpose_12_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_139AssignVariableOp,assignvariableop_139_adam_conv2d_68_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_140AssignVariableOp*assignvariableop_140_adam_conv2d_68_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_141AssignVariableOp,assignvariableop_141_adam_conv2d_69_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_142AssignVariableOp*assignvariableop_142_adam_conv2d_69_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_143AssignVariableOp,assignvariableop_143_adam_conv2d_70_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_144AssignVariableOp*assignvariableop_144_adam_conv2d_70_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_145Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_146IdentityIdentity_145:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_146Identity_146:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98050

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_94394

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_98450

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_94264

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_94590

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_53_layer_call_fn_97879

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_94306y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_11_layer_call_fn_98328
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_94560j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_98165

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_96541
model_2_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodel_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_94047u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
1
_output_shapes
:???????????
'
_user_specified_namemodel_2_input
?
?
3__inference_conv2d_transpose_12_layer_call_fn_98384

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_94264?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_65_layer_call_fn_98269

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_94542y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_52_layer_call_fn_97859

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_94289y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_98322

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_96442
model_2_input'
model_2_96347:
model_2_96349:'
model_2_96351:
model_2_96353:'
model_2_96355:
model_2_96357:'
model_2_96359:
model_2_96361:'
model_2_96363:
model_2_96365:'
model_2_96367:
model_2_96369:'
model_2_96371: 
model_2_96373: '
model_2_96375:  
model_2_96377: '
model_2_96379: @
model_2_96381:@'
model_2_96383:@@
model_2_96385:@'
model_2_96387: @
model_2_96389: '
model_2_96391:@ 
model_2_96393: '
model_2_96395:  
model_2_96397: '
model_2_96399: 
model_2_96401:'
model_2_96403: 
model_2_96405:'
model_2_96407:
model_2_96409:'
model_2_96411:
model_2_96413:'
model_2_96415:
model_2_96417:'
model_2_96419:
model_2_96421:'
model_2_96423:
model_2_96425:'
model_2_96427:
model_2_96429:'
model_2_96431:
model_2_96433:'
model_2_96435:|
model_2_96437:|
identity	??model_2/StatefulPartitionedCall?
model_2/StatefulPartitionedCallStatefulPartitionedCallmodel_2_inputmodel_2_96347model_2_96349model_2_96351model_2_96353model_2_96355model_2_96357model_2_96359model_2_96361model_2_96363model_2_96365model_2_96367model_2_96369model_2_96371model_2_96373model_2_96375model_2_96377model_2_96379model_2_96381model_2_96383model_2_96385model_2_96387model_2_96389model_2_96391model_2_96393model_2_96395model_2_96397model_2_96399model_2_96401model_2_96403model_2_96405model_2_96407model_2_96409model_2_96411model_2_96413model_2_96415model_2_96417model_2_96419model_2_96421model_2_96423model_2_96425model_2_96427model_2_96429model_2_96431model_2_96433model_2_96435model_2_96437*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95201?
argmax/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_95753t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????h
NoOpNoOp ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:` \
1
_output_shapes
:???????????
'
_user_specified_namemodel_2_input
?
Z
.__inference_concatenate_12_layer_call_fn_98423
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_94608j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
'__inference_model_2_layer_call_fn_97389

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95201y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_10_layer_call_fn_98233
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_94512j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:??????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_94429

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_98470

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_12_layer_call_and_return_conditional_losses_94608

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:YU
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_67_layer_call_fn_98364

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_94590y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_98490

inputs8
conv2d_readvariableop_resource:|-
biasadd_readvariableop_resource:|
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|`
SoftmaxSoftmaxBiasAdd:output:0*
T0*1
_output_shapes
:???????????|j
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*1
_output_shapes
:???????????|w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?+
E__inference_sequential_layer_call_and_return_conditional_losses_96968

inputsJ
0model_2_conv2d_52_conv2d_readvariableop_resource:?
1model_2_conv2d_52_biasadd_readvariableop_resource:J
0model_2_conv2d_53_conv2d_readvariableop_resource:?
1model_2_conv2d_53_biasadd_readvariableop_resource:J
0model_2_conv2d_54_conv2d_readvariableop_resource:?
1model_2_conv2d_54_biasadd_readvariableop_resource:J
0model_2_conv2d_55_conv2d_readvariableop_resource:?
1model_2_conv2d_55_biasadd_readvariableop_resource:J
0model_2_conv2d_56_conv2d_readvariableop_resource:?
1model_2_conv2d_56_biasadd_readvariableop_resource:J
0model_2_conv2d_57_conv2d_readvariableop_resource:?
1model_2_conv2d_57_biasadd_readvariableop_resource:J
0model_2_conv2d_58_conv2d_readvariableop_resource: ?
1model_2_conv2d_58_biasadd_readvariableop_resource: J
0model_2_conv2d_59_conv2d_readvariableop_resource:  ?
1model_2_conv2d_59_biasadd_readvariableop_resource: J
0model_2_conv2d_60_conv2d_readvariableop_resource: @?
1model_2_conv2d_60_biasadd_readvariableop_resource:@J
0model_2_conv2d_61_conv2d_readvariableop_resource:@@?
1model_2_conv2d_61_biasadd_readvariableop_resource:@]
Cmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource: @H
:model_2_conv2d_transpose_9_biasadd_readvariableop_resource: J
0model_2_conv2d_62_conv2d_readvariableop_resource:@ ?
1model_2_conv2d_62_biasadd_readvariableop_resource: J
0model_2_conv2d_63_conv2d_readvariableop_resource:  ?
1model_2_conv2d_63_biasadd_readvariableop_resource: ^
Dmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource: I
;model_2_conv2d_transpose_10_biasadd_readvariableop_resource:J
0model_2_conv2d_64_conv2d_readvariableop_resource: ?
1model_2_conv2d_64_biasadd_readvariableop_resource:J
0model_2_conv2d_65_conv2d_readvariableop_resource:?
1model_2_conv2d_65_biasadd_readvariableop_resource:^
Dmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource:I
;model_2_conv2d_transpose_11_biasadd_readvariableop_resource:J
0model_2_conv2d_66_conv2d_readvariableop_resource:?
1model_2_conv2d_66_biasadd_readvariableop_resource:J
0model_2_conv2d_67_conv2d_readvariableop_resource:?
1model_2_conv2d_67_biasadd_readvariableop_resource:^
Dmodel_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:I
;model_2_conv2d_transpose_12_biasadd_readvariableop_resource:J
0model_2_conv2d_68_conv2d_readvariableop_resource:?
1model_2_conv2d_68_biasadd_readvariableop_resource:J
0model_2_conv2d_69_conv2d_readvariableop_resource:?
1model_2_conv2d_69_biasadd_readvariableop_resource:J
0model_2_conv2d_70_conv2d_readvariableop_resource:|?
1model_2_conv2d_70_biasadd_readvariableop_resource:|
identity	??(model_2/conv2d_52/BiasAdd/ReadVariableOp?'model_2/conv2d_52/Conv2D/ReadVariableOp?(model_2/conv2d_53/BiasAdd/ReadVariableOp?'model_2/conv2d_53/Conv2D/ReadVariableOp?(model_2/conv2d_54/BiasAdd/ReadVariableOp?'model_2/conv2d_54/Conv2D/ReadVariableOp?(model_2/conv2d_55/BiasAdd/ReadVariableOp?'model_2/conv2d_55/Conv2D/ReadVariableOp?(model_2/conv2d_56/BiasAdd/ReadVariableOp?'model_2/conv2d_56/Conv2D/ReadVariableOp?(model_2/conv2d_57/BiasAdd/ReadVariableOp?'model_2/conv2d_57/Conv2D/ReadVariableOp?(model_2/conv2d_58/BiasAdd/ReadVariableOp?'model_2/conv2d_58/Conv2D/ReadVariableOp?(model_2/conv2d_59/BiasAdd/ReadVariableOp?'model_2/conv2d_59/Conv2D/ReadVariableOp?(model_2/conv2d_60/BiasAdd/ReadVariableOp?'model_2/conv2d_60/Conv2D/ReadVariableOp?(model_2/conv2d_61/BiasAdd/ReadVariableOp?'model_2/conv2d_61/Conv2D/ReadVariableOp?(model_2/conv2d_62/BiasAdd/ReadVariableOp?'model_2/conv2d_62/Conv2D/ReadVariableOp?(model_2/conv2d_63/BiasAdd/ReadVariableOp?'model_2/conv2d_63/Conv2D/ReadVariableOp?(model_2/conv2d_64/BiasAdd/ReadVariableOp?'model_2/conv2d_64/Conv2D/ReadVariableOp?(model_2/conv2d_65/BiasAdd/ReadVariableOp?'model_2/conv2d_65/Conv2D/ReadVariableOp?(model_2/conv2d_66/BiasAdd/ReadVariableOp?'model_2/conv2d_66/Conv2D/ReadVariableOp?(model_2/conv2d_67/BiasAdd/ReadVariableOp?'model_2/conv2d_67/Conv2D/ReadVariableOp?(model_2/conv2d_68/BiasAdd/ReadVariableOp?'model_2/conv2d_68/Conv2D/ReadVariableOp?(model_2/conv2d_69/BiasAdd/ReadVariableOp?'model_2/conv2d_69/Conv2D/ReadVariableOp?(model_2/conv2d_70/BiasAdd/ReadVariableOp?'model_2/conv2d_70/Conv2D/ReadVariableOp?2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp?:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
'model_2/conv2d_52/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_52/Conv2DConv2Dinputs/model_2/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_52/BiasAddBiasAdd!model_2/conv2d_52/Conv2D:output:00model_2/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_52/ReluRelu"model_2/conv2d_52/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_53/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_53/Conv2DConv2D$model_2/conv2d_52/Relu:activations:0/model_2/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_53/BiasAddBiasAdd!model_2/conv2d_53/Conv2D:output:00model_2/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_53/ReluRelu"model_2/conv2d_53/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_13/MaxPoolMaxPool$model_2/conv2d_53/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_54/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_54/Conv2DConv2D)model_2/max_pooling2d_13/MaxPool:output:0/model_2/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_54/BiasAddBiasAdd!model_2/conv2d_54/Conv2D:output:00model_2/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_54/ReluRelu"model_2/conv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_55/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_55/Conv2DConv2D$model_2/conv2d_54/Relu:activations:0/model_2/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_55/BiasAddBiasAdd!model_2/conv2d_55/Conv2D:output:00model_2/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_55/ReluRelu"model_2/conv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_14/MaxPoolMaxPool$model_2/conv2d_55/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_56/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_56/Conv2DConv2D)model_2/max_pooling2d_14/MaxPool:output:0/model_2/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_56/BiasAddBiasAdd!model_2/conv2d_56/Conv2D:output:00model_2/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_56/ReluRelu"model_2/conv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_57/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_57/Conv2DConv2D$model_2/conv2d_56/Relu:activations:0/model_2/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_57/BiasAddBiasAdd!model_2/conv2d_57/Conv2D:output:00model_2/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_57/ReluRelu"model_2/conv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_15/MaxPoolMaxPool$model_2/conv2d_57/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_58/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_58/Conv2DConv2D)model_2/max_pooling2d_15/MaxPool:output:0/model_2/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_58/BiasAddBiasAdd!model_2/conv2d_58/Conv2D:output:00model_2/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_58/ReluRelu"model_2/conv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
'model_2/conv2d_59/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_59/Conv2DConv2D$model_2/conv2d_58/Relu:activations:0/model_2/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_59/BiasAddBiasAdd!model_2/conv2d_59/Conv2D:output:00model_2/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_59/ReluRelu"model_2/conv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
 model_2/max_pooling2d_16/MaxPoolMaxPool$model_2/conv2d_59/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_60/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
model_2/conv2d_60/Conv2DConv2D)model_2/max_pooling2d_16/MaxPool:output:0/model_2/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
(model_2/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_60/BiasAddBiasAdd!model_2/conv2d_60/Conv2D:output:00model_2/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @|
model_2/conv2d_60/ReluRelu"model_2/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
'model_2/conv2d_61/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
model_2/conv2d_61/Conv2DConv2D$model_2/conv2d_60/Relu:activations:0/model_2/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
(model_2/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_61/BiasAddBiasAdd!model_2/conv2d_61/Conv2D:output:00model_2/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @|
model_2/conv2d_61/ReluRelu"model_2/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @t
 model_2/conv2d_transpose_9/ShapeShape$model_2/conv2d_61/Relu:activations:0*
T0*
_output_shapes
:x
.model_2/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_2/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_2/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(model_2/conv2d_transpose_9/strided_sliceStridedSlice)model_2/conv2d_transpose_9/Shape:output:07model_2/conv2d_transpose_9/strided_slice/stack:output:09model_2/conv2d_transpose_9/strided_slice/stack_1:output:09model_2/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_2/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@d
"model_2/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@d
"model_2/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
 model_2/conv2d_transpose_9/stackPack1model_2/conv2d_transpose_9/strided_slice:output:0+model_2/conv2d_transpose_9/stack/1:output:0+model_2/conv2d_transpose_9/stack/2:output:0+model_2/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_2/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_2/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_2/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model_2/conv2d_transpose_9/strided_slice_1StridedSlice)model_2/conv2d_transpose_9/stack:output:09model_2/conv2d_transpose_9/strided_slice_1/stack:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_1:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
+model_2/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput)model_2/conv2d_transpose_9/stack:output:0Bmodel_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp:model_2_conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
"model_2/conv2d_transpose_9/BiasAddBiasAdd4model_2/conv2d_transpose_9/conv2d_transpose:output:09model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ c
!model_2/concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_9/concatConcatV2+model_2/conv2d_transpose_9/BiasAdd:output:0$model_2/conv2d_59/Relu:activations:0*model_2/concatenate_9/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@?
'model_2/conv2d_62/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
model_2/conv2d_62/Conv2DConv2D%model_2/concatenate_9/concat:output:0/model_2/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_62/BiasAddBiasAdd!model_2/conv2d_62/Conv2D:output:00model_2/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_62/ReluRelu"model_2/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
'model_2/conv2d_63/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_63/Conv2DConv2D$model_2/conv2d_62/Relu:activations:0/model_2/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_63/BiasAddBiasAdd!model_2/conv2d_63/Conv2D:output:00model_2/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_63/ReluRelu"model_2/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ u
!model_2/conv2d_transpose_10/ShapeShape$model_2/conv2d_63/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_10/strided_sliceStridedSlice*model_2/conv2d_transpose_10/Shape:output:08model_2/conv2d_transpose_10/strided_slice/stack:output:0:model_2/conv2d_transpose_10/strided_slice/stack_1:output:0:model_2/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_10/stackPack2model_2/conv2d_transpose_10/strided_slice:output:0,model_2/conv2d_transpose_10/stack/1:output:0,model_2/conv2d_transpose_10/stack/2:output:0,model_2/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_10/strided_slice_1StridedSlice*model_2/conv2d_transpose_10/stack:output:0:model_2/conv2d_transpose_10/strided_slice_1/stack:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
,model_2/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_10/stack:output:0Cmodel_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_63/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_10/BiasAddBiasAdd5model_2/conv2d_transpose_10/conv2d_transpose:output:0:model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_10/concatConcatV2,model_2/conv2d_transpose_10/BiasAdd:output:0$model_2/conv2d_57/Relu:activations:0+model_2/concatenate_10/concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_64/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_64/Conv2DConv2D&model_2/concatenate_10/concat:output:0/model_2/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_64/BiasAddBiasAdd!model_2/conv2d_64/Conv2D:output:00model_2/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_64/ReluRelu"model_2/conv2d_64/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_65/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_65/Conv2DConv2D$model_2/conv2d_64/Relu:activations:0/model_2/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_65/BiasAddBiasAdd!model_2/conv2d_65/Conv2D:output:00model_2/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_65/ReluRelu"model_2/conv2d_65/BiasAdd:output:0*
T0*1
_output_shapes
:???????????u
!model_2/conv2d_transpose_11/ShapeShape$model_2/conv2d_65/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_11/strided_sliceStridedSlice*model_2/conv2d_transpose_11/Shape:output:08model_2/conv2d_transpose_11/strided_slice/stack:output:0:model_2/conv2d_transpose_11/strided_slice/stack_1:output:0:model_2/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_11/stackPack2model_2/conv2d_transpose_11/strided_slice:output:0,model_2/conv2d_transpose_11/stack/1:output:0,model_2/conv2d_transpose_11/stack/2:output:0,model_2/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_11/strided_slice_1StridedSlice*model_2/conv2d_transpose_11/stack:output:0:model_2/conv2d_transpose_11/strided_slice_1/stack:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
,model_2/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_11/stack:output:0Cmodel_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_65/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_11/BiasAddBiasAdd5model_2/conv2d_transpose_11/conv2d_transpose:output:0:model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_11/concatConcatV2,model_2/conv2d_transpose_11/BiasAdd:output:0$model_2/conv2d_55/Relu:activations:0+model_2/concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
'model_2/conv2d_66/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_66/Conv2DConv2D&model_2/concatenate_11/concat:output:0/model_2/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_66/BiasAddBiasAdd!model_2/conv2d_66/Conv2D:output:00model_2/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_66/ReluRelu"model_2/conv2d_66/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_67/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_67/Conv2DConv2D$model_2/conv2d_66/Relu:activations:0/model_2/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_67/BiasAddBiasAdd!model_2/conv2d_67/Conv2D:output:00model_2/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_67/ReluRelu"model_2/conv2d_67/BiasAdd:output:0*
T0*1
_output_shapes
:???????????u
!model_2/conv2d_transpose_12/ShapeShape$model_2/conv2d_67/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_12/strided_sliceStridedSlice*model_2/conv2d_transpose_12/Shape:output:08model_2/conv2d_transpose_12/strided_slice/stack:output:0:model_2/conv2d_transpose_12/strided_slice/stack_1:output:0:model_2/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_12/stackPack2model_2/conv2d_transpose_12/strided_slice:output:0,model_2/conv2d_transpose_12/stack/1:output:0,model_2/conv2d_transpose_12/stack/2:output:0,model_2/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_12/strided_slice_1StridedSlice*model_2/conv2d_transpose_12/stack:output:0:model_2/conv2d_transpose_12/strided_slice_1/stack:output:0<model_2/conv2d_transpose_12/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
,model_2/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_12/stack:output:0Cmodel_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_67/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_12/BiasAddBiasAdd5model_2/conv2d_transpose_12/conv2d_transpose:output:0:model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_12/concatConcatV2,model_2/conv2d_transpose_12/BiasAdd:output:0$model_2/conv2d_53/Relu:activations:0+model_2/concatenate_12/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
'model_2/conv2d_68/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_68/Conv2DConv2D&model_2/concatenate_12/concat:output:0/model_2/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_68/BiasAddBiasAdd!model_2/conv2d_68/Conv2D:output:00model_2/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_68/ReluRelu"model_2/conv2d_68/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_69/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_69/Conv2DConv2D$model_2/conv2d_68/Relu:activations:0/model_2/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_69/BiasAddBiasAdd!model_2/conv2d_69/Conv2D:output:00model_2/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_69/ReluRelu"model_2/conv2d_69/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_70/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
model_2/conv2d_70/Conv2DConv2D$model_2/conv2d_69/Relu:activations:0/model_2/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
?
(model_2/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
model_2/conv2d_70/BiasAddBiasAdd!model_2/conv2d_70/Conv2D:output:00model_2/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|?
model_2/conv2d_70/SoftmaxSoftmax"model_2/conv2d_70/BiasAdd:output:0*
T0*1
_output_shapes
:???????????|b
argmax/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
argmax/ArgMaxArgMax#model_2/conv2d_70/Softmax:softmax:0 argmax/ArgMax/dimension:output:0*
T0*-
_output_shapes
:???????????k
IdentityIdentityargmax/ArgMax:output:0^NoOp*
T0	*-
_output_shapes
:????????????
NoOpNoOp)^model_2/conv2d_52/BiasAdd/ReadVariableOp(^model_2/conv2d_52/Conv2D/ReadVariableOp)^model_2/conv2d_53/BiasAdd/ReadVariableOp(^model_2/conv2d_53/Conv2D/ReadVariableOp)^model_2/conv2d_54/BiasAdd/ReadVariableOp(^model_2/conv2d_54/Conv2D/ReadVariableOp)^model_2/conv2d_55/BiasAdd/ReadVariableOp(^model_2/conv2d_55/Conv2D/ReadVariableOp)^model_2/conv2d_56/BiasAdd/ReadVariableOp(^model_2/conv2d_56/Conv2D/ReadVariableOp)^model_2/conv2d_57/BiasAdd/ReadVariableOp(^model_2/conv2d_57/Conv2D/ReadVariableOp)^model_2/conv2d_58/BiasAdd/ReadVariableOp(^model_2/conv2d_58/Conv2D/ReadVariableOp)^model_2/conv2d_59/BiasAdd/ReadVariableOp(^model_2/conv2d_59/Conv2D/ReadVariableOp)^model_2/conv2d_60/BiasAdd/ReadVariableOp(^model_2/conv2d_60/Conv2D/ReadVariableOp)^model_2/conv2d_61/BiasAdd/ReadVariableOp(^model_2/conv2d_61/Conv2D/ReadVariableOp)^model_2/conv2d_62/BiasAdd/ReadVariableOp(^model_2/conv2d_62/Conv2D/ReadVariableOp)^model_2/conv2d_63/BiasAdd/ReadVariableOp(^model_2/conv2d_63/Conv2D/ReadVariableOp)^model_2/conv2d_64/BiasAdd/ReadVariableOp(^model_2/conv2d_64/Conv2D/ReadVariableOp)^model_2/conv2d_65/BiasAdd/ReadVariableOp(^model_2/conv2d_65/Conv2D/ReadVariableOp)^model_2/conv2d_66/BiasAdd/ReadVariableOp(^model_2/conv2d_66/Conv2D/ReadVariableOp)^model_2/conv2d_67/BiasAdd/ReadVariableOp(^model_2/conv2d_67/Conv2D/ReadVariableOp)^model_2/conv2d_68/BiasAdd/ReadVariableOp(^model_2/conv2d_68/Conv2D/ReadVariableOp)^model_2/conv2d_69/BiasAdd/ReadVariableOp(^model_2/conv2d_69/Conv2D/ReadVariableOp)^model_2/conv2d_70/BiasAdd/ReadVariableOp(^model_2/conv2d_70/Conv2D/ReadVariableOp3^model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2^model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp;^model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(model_2/conv2d_52/BiasAdd/ReadVariableOp(model_2/conv2d_52/BiasAdd/ReadVariableOp2R
'model_2/conv2d_52/Conv2D/ReadVariableOp'model_2/conv2d_52/Conv2D/ReadVariableOp2T
(model_2/conv2d_53/BiasAdd/ReadVariableOp(model_2/conv2d_53/BiasAdd/ReadVariableOp2R
'model_2/conv2d_53/Conv2D/ReadVariableOp'model_2/conv2d_53/Conv2D/ReadVariableOp2T
(model_2/conv2d_54/BiasAdd/ReadVariableOp(model_2/conv2d_54/BiasAdd/ReadVariableOp2R
'model_2/conv2d_54/Conv2D/ReadVariableOp'model_2/conv2d_54/Conv2D/ReadVariableOp2T
(model_2/conv2d_55/BiasAdd/ReadVariableOp(model_2/conv2d_55/BiasAdd/ReadVariableOp2R
'model_2/conv2d_55/Conv2D/ReadVariableOp'model_2/conv2d_55/Conv2D/ReadVariableOp2T
(model_2/conv2d_56/BiasAdd/ReadVariableOp(model_2/conv2d_56/BiasAdd/ReadVariableOp2R
'model_2/conv2d_56/Conv2D/ReadVariableOp'model_2/conv2d_56/Conv2D/ReadVariableOp2T
(model_2/conv2d_57/BiasAdd/ReadVariableOp(model_2/conv2d_57/BiasAdd/ReadVariableOp2R
'model_2/conv2d_57/Conv2D/ReadVariableOp'model_2/conv2d_57/Conv2D/ReadVariableOp2T
(model_2/conv2d_58/BiasAdd/ReadVariableOp(model_2/conv2d_58/BiasAdd/ReadVariableOp2R
'model_2/conv2d_58/Conv2D/ReadVariableOp'model_2/conv2d_58/Conv2D/ReadVariableOp2T
(model_2/conv2d_59/BiasAdd/ReadVariableOp(model_2/conv2d_59/BiasAdd/ReadVariableOp2R
'model_2/conv2d_59/Conv2D/ReadVariableOp'model_2/conv2d_59/Conv2D/ReadVariableOp2T
(model_2/conv2d_60/BiasAdd/ReadVariableOp(model_2/conv2d_60/BiasAdd/ReadVariableOp2R
'model_2/conv2d_60/Conv2D/ReadVariableOp'model_2/conv2d_60/Conv2D/ReadVariableOp2T
(model_2/conv2d_61/BiasAdd/ReadVariableOp(model_2/conv2d_61/BiasAdd/ReadVariableOp2R
'model_2/conv2d_61/Conv2D/ReadVariableOp'model_2/conv2d_61/Conv2D/ReadVariableOp2T
(model_2/conv2d_62/BiasAdd/ReadVariableOp(model_2/conv2d_62/BiasAdd/ReadVariableOp2R
'model_2/conv2d_62/Conv2D/ReadVariableOp'model_2/conv2d_62/Conv2D/ReadVariableOp2T
(model_2/conv2d_63/BiasAdd/ReadVariableOp(model_2/conv2d_63/BiasAdd/ReadVariableOp2R
'model_2/conv2d_63/Conv2D/ReadVariableOp'model_2/conv2d_63/Conv2D/ReadVariableOp2T
(model_2/conv2d_64/BiasAdd/ReadVariableOp(model_2/conv2d_64/BiasAdd/ReadVariableOp2R
'model_2/conv2d_64/Conv2D/ReadVariableOp'model_2/conv2d_64/Conv2D/ReadVariableOp2T
(model_2/conv2d_65/BiasAdd/ReadVariableOp(model_2/conv2d_65/BiasAdd/ReadVariableOp2R
'model_2/conv2d_65/Conv2D/ReadVariableOp'model_2/conv2d_65/Conv2D/ReadVariableOp2T
(model_2/conv2d_66/BiasAdd/ReadVariableOp(model_2/conv2d_66/BiasAdd/ReadVariableOp2R
'model_2/conv2d_66/Conv2D/ReadVariableOp'model_2/conv2d_66/Conv2D/ReadVariableOp2T
(model_2/conv2d_67/BiasAdd/ReadVariableOp(model_2/conv2d_67/BiasAdd/ReadVariableOp2R
'model_2/conv2d_67/Conv2D/ReadVariableOp'model_2/conv2d_67/Conv2D/ReadVariableOp2T
(model_2/conv2d_68/BiasAdd/ReadVariableOp(model_2/conv2d_68/BiasAdd/ReadVariableOp2R
'model_2/conv2d_68/Conv2D/ReadVariableOp'model_2/conv2d_68/Conv2D/ReadVariableOp2T
(model_2/conv2d_69/BiasAdd/ReadVariableOp(model_2/conv2d_69/BiasAdd/ReadVariableOp2R
'model_2/conv2d_69/Conv2D/ReadVariableOp'model_2/conv2d_69/Conv2D/ReadVariableOp2T
(model_2/conv2d_70/BiasAdd/ReadVariableOp(model_2/conv2d_70/BiasAdd/ReadVariableOp2R
'model_2/conv2d_70/Conv2D/ReadVariableOp'model_2/conv2d_70/Conv2D/ReadVariableOp2h
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2f
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp2x
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_16_layer_call_fn_98045

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_94092?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_70_layer_call_fn_98479

inputs!
unknown:|
	unknown_0:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_94655y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_97970

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_98132

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_94757
input_7!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_94662y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_7
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_94289

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_98227

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_94494

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_98040

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
??
?=
__inference__traced_save_98948
file_prefix/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop/
+savev2_conv2d_55_kernel_read_readvariableop-
)savev2_conv2d_55_bias_read_readvariableop/
+savev2_conv2d_56_kernel_read_readvariableop-
)savev2_conv2d_56_bias_read_readvariableop/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop8
4savev2_conv2d_transpose_9_kernel_read_readvariableop6
2savev2_conv2d_transpose_9_bias_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop9
5savev2_conv2d_transpose_10_kernel_read_readvariableop7
3savev2_conv2d_transpose_10_bias_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop/
+savev2_conv2d_65_kernel_read_readvariableop-
)savev2_conv2d_65_bias_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop7
3savev2_conv2d_transpose_11_bias_read_readvariableop/
+savev2_conv2d_66_kernel_read_readvariableop-
)savev2_conv2d_66_bias_read_readvariableop/
+savev2_conv2d_67_kernel_read_readvariableop-
)savev2_conv2d_67_bias_read_readvariableop9
5savev2_conv2d_transpose_12_kernel_read_readvariableop7
3savev2_conv2d_transpose_12_bias_read_readvariableop/
+savev2_conv2d_68_kernel_read_readvariableop-
)savev2_conv2d_68_bias_read_readvariableop/
+savev2_conv2d_69_kernel_read_readvariableop-
)savev2_conv2d_69_bias_read_readvariableop/
+savev2_conv2d_70_kernel_read_readvariableop-
)savev2_conv2d_70_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_52_kernel_m_read_readvariableop4
0savev2_adam_conv2d_52_bias_m_read_readvariableop6
2savev2_adam_conv2d_53_kernel_m_read_readvariableop4
0savev2_adam_conv2d_53_bias_m_read_readvariableop6
2savev2_adam_conv2d_54_kernel_m_read_readvariableop4
0savev2_adam_conv2d_54_bias_m_read_readvariableop6
2savev2_adam_conv2d_55_kernel_m_read_readvariableop4
0savev2_adam_conv2d_55_bias_m_read_readvariableop6
2savev2_adam_conv2d_56_kernel_m_read_readvariableop4
0savev2_adam_conv2d_56_bias_m_read_readvariableop6
2savev2_adam_conv2d_57_kernel_m_read_readvariableop4
0savev2_adam_conv2d_57_bias_m_read_readvariableop6
2savev2_adam_conv2d_58_kernel_m_read_readvariableop4
0savev2_adam_conv2d_58_bias_m_read_readvariableop6
2savev2_adam_conv2d_59_kernel_m_read_readvariableop4
0savev2_adam_conv2d_59_bias_m_read_readvariableop6
2savev2_adam_conv2d_60_kernel_m_read_readvariableop4
0savev2_adam_conv2d_60_bias_m_read_readvariableop6
2savev2_adam_conv2d_61_kernel_m_read_readvariableop4
0savev2_adam_conv2d_61_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_9_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop6
2savev2_adam_conv2d_63_kernel_m_read_readvariableop4
0savev2_adam_conv2d_63_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_64_kernel_m_read_readvariableop4
0savev2_adam_conv2d_64_bias_m_read_readvariableop6
2savev2_adam_conv2d_65_kernel_m_read_readvariableop4
0savev2_adam_conv2d_65_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop6
2savev2_adam_conv2d_66_kernel_m_read_readvariableop4
0savev2_adam_conv2d_66_bias_m_read_readvariableop6
2savev2_adam_conv2d_67_kernel_m_read_readvariableop4
0savev2_adam_conv2d_67_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_68_kernel_m_read_readvariableop4
0savev2_adam_conv2d_68_bias_m_read_readvariableop6
2savev2_adam_conv2d_69_kernel_m_read_readvariableop4
0savev2_adam_conv2d_69_bias_m_read_readvariableop6
2savev2_adam_conv2d_70_kernel_m_read_readvariableop4
0savev2_adam_conv2d_70_bias_m_read_readvariableop6
2savev2_adam_conv2d_52_kernel_v_read_readvariableop4
0savev2_adam_conv2d_52_bias_v_read_readvariableop6
2savev2_adam_conv2d_53_kernel_v_read_readvariableop4
0savev2_adam_conv2d_53_bias_v_read_readvariableop6
2savev2_adam_conv2d_54_kernel_v_read_readvariableop4
0savev2_adam_conv2d_54_bias_v_read_readvariableop6
2savev2_adam_conv2d_55_kernel_v_read_readvariableop4
0savev2_adam_conv2d_55_bias_v_read_readvariableop6
2savev2_adam_conv2d_56_kernel_v_read_readvariableop4
0savev2_adam_conv2d_56_bias_v_read_readvariableop6
2savev2_adam_conv2d_57_kernel_v_read_readvariableop4
0savev2_adam_conv2d_57_bias_v_read_readvariableop6
2savev2_adam_conv2d_58_kernel_v_read_readvariableop4
0savev2_adam_conv2d_58_bias_v_read_readvariableop6
2savev2_adam_conv2d_59_kernel_v_read_readvariableop4
0savev2_adam_conv2d_59_bias_v_read_readvariableop6
2savev2_adam_conv2d_60_kernel_v_read_readvariableop4
0savev2_adam_conv2d_60_bias_v_read_readvariableop6
2savev2_adam_conv2d_61_kernel_v_read_readvariableop4
0savev2_adam_conv2d_61_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_9_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop6
2savev2_adam_conv2d_63_kernel_v_read_readvariableop4
0savev2_adam_conv2d_63_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_64_kernel_v_read_readvariableop4
0savev2_adam_conv2d_64_bias_v_read_readvariableop6
2savev2_adam_conv2d_65_kernel_v_read_readvariableop4
0savev2_adam_conv2d_65_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop6
2savev2_adam_conv2d_66_kernel_v_read_readvariableop4
0savev2_adam_conv2d_66_bias_v_read_readvariableop6
2savev2_adam_conv2d_67_kernel_v_read_readvariableop4
0savev2_adam_conv2d_67_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_12_bias_v_read_readvariableop6
2savev2_adam_conv2d_68_kernel_v_read_readvariableop4
0savev2_adam_conv2d_68_bias_v_read_readvariableop6
2savev2_adam_conv2d_69_kernel_v_read_readvariableop4
0savev2_adam_conv2d_69_bias_v_read_readvariableop6
2savev2_adam_conv2d_70_kernel_v_read_readvariableop4
0savev2_adam_conv2d_70_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?T
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?S
value?SB?S?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/24/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/25/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/28/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/29/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/30/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/31/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/32/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/33/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/34/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/35/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/36/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/37/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/38/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/39/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/40/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/41/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/42/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/43/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/44/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/45/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/12/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/13/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/18/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/19/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/22/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/23/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/24/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/25/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/26/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/27/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/28/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/29/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/30/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/31/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/32/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/33/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/34/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/35/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/36/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/37/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/38/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/39/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/40/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/41/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/42/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/43/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/44/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/45/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?:
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop+savev2_conv2d_55_kernel_read_readvariableop)savev2_conv2d_55_bias_read_readvariableop+savev2_conv2d_56_kernel_read_readvariableop)savev2_conv2d_56_bias_read_readvariableop+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop4savev2_conv2d_transpose_9_kernel_read_readvariableop2savev2_conv2d_transpose_9_bias_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop5savev2_conv2d_transpose_10_kernel_read_readvariableop3savev2_conv2d_transpose_10_bias_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop+savev2_conv2d_65_kernel_read_readvariableop)savev2_conv2d_65_bias_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop3savev2_conv2d_transpose_11_bias_read_readvariableop+savev2_conv2d_66_kernel_read_readvariableop)savev2_conv2d_66_bias_read_readvariableop+savev2_conv2d_67_kernel_read_readvariableop)savev2_conv2d_67_bias_read_readvariableop5savev2_conv2d_transpose_12_kernel_read_readvariableop3savev2_conv2d_transpose_12_bias_read_readvariableop+savev2_conv2d_68_kernel_read_readvariableop)savev2_conv2d_68_bias_read_readvariableop+savev2_conv2d_69_kernel_read_readvariableop)savev2_conv2d_69_bias_read_readvariableop+savev2_conv2d_70_kernel_read_readvariableop)savev2_conv2d_70_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_52_kernel_m_read_readvariableop0savev2_adam_conv2d_52_bias_m_read_readvariableop2savev2_adam_conv2d_53_kernel_m_read_readvariableop0savev2_adam_conv2d_53_bias_m_read_readvariableop2savev2_adam_conv2d_54_kernel_m_read_readvariableop0savev2_adam_conv2d_54_bias_m_read_readvariableop2savev2_adam_conv2d_55_kernel_m_read_readvariableop0savev2_adam_conv2d_55_bias_m_read_readvariableop2savev2_adam_conv2d_56_kernel_m_read_readvariableop0savev2_adam_conv2d_56_bias_m_read_readvariableop2savev2_adam_conv2d_57_kernel_m_read_readvariableop0savev2_adam_conv2d_57_bias_m_read_readvariableop2savev2_adam_conv2d_58_kernel_m_read_readvariableop0savev2_adam_conv2d_58_bias_m_read_readvariableop2savev2_adam_conv2d_59_kernel_m_read_readvariableop0savev2_adam_conv2d_59_bias_m_read_readvariableop2savev2_adam_conv2d_60_kernel_m_read_readvariableop0savev2_adam_conv2d_60_bias_m_read_readvariableop2savev2_adam_conv2d_61_kernel_m_read_readvariableop0savev2_adam_conv2d_61_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_9_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_9_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop2savev2_adam_conv2d_63_kernel_m_read_readvariableop0savev2_adam_conv2d_63_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_10_bias_m_read_readvariableop2savev2_adam_conv2d_64_kernel_m_read_readvariableop0savev2_adam_conv2d_64_bias_m_read_readvariableop2savev2_adam_conv2d_65_kernel_m_read_readvariableop0savev2_adam_conv2d_65_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop2savev2_adam_conv2d_66_kernel_m_read_readvariableop0savev2_adam_conv2d_66_bias_m_read_readvariableop2savev2_adam_conv2d_67_kernel_m_read_readvariableop0savev2_adam_conv2d_67_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_12_bias_m_read_readvariableop2savev2_adam_conv2d_68_kernel_m_read_readvariableop0savev2_adam_conv2d_68_bias_m_read_readvariableop2savev2_adam_conv2d_69_kernel_m_read_readvariableop0savev2_adam_conv2d_69_bias_m_read_readvariableop2savev2_adam_conv2d_70_kernel_m_read_readvariableop0savev2_adam_conv2d_70_bias_m_read_readvariableop2savev2_adam_conv2d_52_kernel_v_read_readvariableop0savev2_adam_conv2d_52_bias_v_read_readvariableop2savev2_adam_conv2d_53_kernel_v_read_readvariableop0savev2_adam_conv2d_53_bias_v_read_readvariableop2savev2_adam_conv2d_54_kernel_v_read_readvariableop0savev2_adam_conv2d_54_bias_v_read_readvariableop2savev2_adam_conv2d_55_kernel_v_read_readvariableop0savev2_adam_conv2d_55_bias_v_read_readvariableop2savev2_adam_conv2d_56_kernel_v_read_readvariableop0savev2_adam_conv2d_56_bias_v_read_readvariableop2savev2_adam_conv2d_57_kernel_v_read_readvariableop0savev2_adam_conv2d_57_bias_v_read_readvariableop2savev2_adam_conv2d_58_kernel_v_read_readvariableop0savev2_adam_conv2d_58_bias_v_read_readvariableop2savev2_adam_conv2d_59_kernel_v_read_readvariableop0savev2_adam_conv2d_59_bias_v_read_readvariableop2savev2_adam_conv2d_60_kernel_v_read_readvariableop0savev2_adam_conv2d_60_bias_v_read_readvariableop2savev2_adam_conv2d_61_kernel_v_read_readvariableop0savev2_adam_conv2d_61_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_9_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_9_bias_v_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop2savev2_adam_conv2d_63_kernel_v_read_readvariableop0savev2_adam_conv2d_63_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_10_bias_v_read_readvariableop2savev2_adam_conv2d_64_kernel_v_read_readvariableop0savev2_adam_conv2d_64_bias_v_read_readvariableop2savev2_adam_conv2d_65_kernel_v_read_readvariableop0savev2_adam_conv2d_65_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop2savev2_adam_conv2d_66_kernel_v_read_readvariableop0savev2_adam_conv2d_66_bias_v_read_readvariableop2savev2_adam_conv2d_67_kernel_v_read_readvariableop0savev2_adam_conv2d_67_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_12_bias_v_read_readvariableop2savev2_adam_conv2d_68_kernel_v_read_readvariableop0savev2_adam_conv2d_68_bias_v_read_readvariableop2savev2_adam_conv2d_69_kernel_v_read_readvariableop0savev2_adam_conv2d_69_bias_v_read_readvariableop2savev2_adam_conv2d_70_kernel_v_read_readvariableop0savev2_adam_conv2d_70_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::::::::: : :  : : @:@:@@:@: @: :@ : :  : : :: ::::::::::::::::|:|: : : : : : : ::::::::::::: : :  : : @:@:@@:@: @: :@ : :  : : :: ::::::::::::::::|:|::::::::::::: : :  : : @:@:@@:@: @: :@ : :  : : :: ::::::::::::::::|:|: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
:: &

_output_shapes
::,'(
&
_output_shapes
:: (

_output_shapes
::,)(
&
_output_shapes
:: *

_output_shapes
::,+(
&
_output_shapes
:: ,

_output_shapes
::,-(
&
_output_shapes
:|: .

_output_shapes
:|:/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
:  : E

_output_shapes
: :,F(
&
_output_shapes
: @: G

_output_shapes
:@:,H(
&
_output_shapes
:@@: I

_output_shapes
:@:,J(
&
_output_shapes
: @: K

_output_shapes
: :,L(
&
_output_shapes
:@ : M

_output_shapes
: :,N(
&
_output_shapes
:  : O

_output_shapes
: :,P(
&
_output_shapes
: : Q

_output_shapes
::,R(
&
_output_shapes
: : S

_output_shapes
::,T(
&
_output_shapes
:: U

_output_shapes
::,V(
&
_output_shapes
:: W

_output_shapes
::,X(
&
_output_shapes
:: Y

_output_shapes
::,Z(
&
_output_shapes
:: [

_output_shapes
::,\(
&
_output_shapes
:: ]

_output_shapes
::,^(
&
_output_shapes
:: _

_output_shapes
::,`(
&
_output_shapes
:: a

_output_shapes
::,b(
&
_output_shapes
:|: c

_output_shapes
:|:,d(
&
_output_shapes
:: e

_output_shapes
::,f(
&
_output_shapes
:: g

_output_shapes
::,h(
&
_output_shapes
:: i

_output_shapes
::,j(
&
_output_shapes
:: k

_output_shapes
::,l(
&
_output_shapes
:: m

_output_shapes
::,n(
&
_output_shapes
:: o

_output_shapes
::,p(
&
_output_shapes
: : q

_output_shapes
: :,r(
&
_output_shapes
:  : s

_output_shapes
: :,t(
&
_output_shapes
: @: u

_output_shapes
:@:,v(
&
_output_shapes
:@@: w

_output_shapes
:@:,x(
&
_output_shapes
: @: y

_output_shapes
: :,z(
&
_output_shapes
:@ : {

_output_shapes
: :,|(
&
_output_shapes
:  : }

_output_shapes
: :,~(
&
_output_shapes
: : 

_output_shapes
::-?(
&
_output_shapes
: :!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
::!?

_output_shapes
::-?(
&
_output_shapes
:|:!?

_output_shapes
:|:?

_output_shapes
: 
?
s
I__inference_concatenate_10_layer_call_and_return_conditional_losses_94512

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:??????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:YU
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_94477

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_94638

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_97870

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_95520
input_7)
conv2d_52_95396:
conv2d_52_95398:)
conv2d_53_95401:
conv2d_53_95403:)
conv2d_54_95407:
conv2d_54_95409:)
conv2d_55_95412:
conv2d_55_95414:)
conv2d_56_95418:
conv2d_56_95420:)
conv2d_57_95423:
conv2d_57_95425:)
conv2d_58_95429: 
conv2d_58_95431: )
conv2d_59_95434:  
conv2d_59_95436: )
conv2d_60_95440: @
conv2d_60_95442:@)
conv2d_61_95445:@@
conv2d_61_95447:@2
conv2d_transpose_9_95450: @&
conv2d_transpose_9_95452: )
conv2d_62_95456:@ 
conv2d_62_95458: )
conv2d_63_95461:  
conv2d_63_95463: 3
conv2d_transpose_10_95466: '
conv2d_transpose_10_95468:)
conv2d_64_95472: 
conv2d_64_95474:)
conv2d_65_95477:
conv2d_65_95479:3
conv2d_transpose_11_95482:'
conv2d_transpose_11_95484:)
conv2d_66_95488:
conv2d_66_95490:)
conv2d_67_95493:
conv2d_67_95495:3
conv2d_transpose_12_95498:'
conv2d_transpose_12_95500:)
conv2d_68_95504:
conv2d_68_95506:)
conv2d_69_95509:
conv2d_69_95511:)
conv2d_70_95514:|
conv2d_70_95516:|
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinput_7conv2d_52_95396conv2d_52_95398*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_94289?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_95401conv2d_53_95403*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_94306?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94056?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_54_95407conv2d_54_95409*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_94324?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_95412conv2d_55_95414*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_94341?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94068?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_56_95418conv2d_56_95420*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_94359?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_95423conv2d_57_95425*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_94376?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94080?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_58_95429conv2d_58_95431*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_94394?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_95434conv2d_59_95436*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_94411?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_94092?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_60_95440conv2d_60_95442*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_94429?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_95445conv2d_61_95447*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_94446?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_transpose_9_95450conv2d_transpose_9_95452*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_94132?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_94464?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_62_95456conv2d_62_95458*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_94477?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_95461conv2d_63_95463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_94494?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_transpose_10_95466conv2d_transpose_10_95468*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_94176?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_94512?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_64_95472conv2d_64_95474*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_94525?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_95477conv2d_65_95479*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_94542?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_transpose_11_95482conv2d_transpose_11_95484*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_94220?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_94560?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_66_95488conv2d_66_95490*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_94573?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_95493conv2d_67_95495*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_94590?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0conv2d_transpose_12_95498conv2d_transpose_12_95500*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_94264?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_94608?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_68_95504conv2d_68_95506*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_94621?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_95509conv2d_69_95511*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_94638?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0conv2d_70_95514conv2d_70_95516*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_94655?
IdentityIdentity*conv2d_70/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_7
?
?
3__inference_conv2d_transpose_10_layer_call_fn_98194

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_94176?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?2
 __inference__wrapped_model_94047
model_2_inputU
;sequential_model_2_conv2d_52_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_52_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_53_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_53_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_54_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_54_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_55_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_55_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_56_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_56_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_57_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_57_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_58_conv2d_readvariableop_resource: J
<sequential_model_2_conv2d_58_biasadd_readvariableop_resource: U
;sequential_model_2_conv2d_59_conv2d_readvariableop_resource:  J
<sequential_model_2_conv2d_59_biasadd_readvariableop_resource: U
;sequential_model_2_conv2d_60_conv2d_readvariableop_resource: @J
<sequential_model_2_conv2d_60_biasadd_readvariableop_resource:@U
;sequential_model_2_conv2d_61_conv2d_readvariableop_resource:@@J
<sequential_model_2_conv2d_61_biasadd_readvariableop_resource:@h
Nsequential_model_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource: @S
Esequential_model_2_conv2d_transpose_9_biasadd_readvariableop_resource: U
;sequential_model_2_conv2d_62_conv2d_readvariableop_resource:@ J
<sequential_model_2_conv2d_62_biasadd_readvariableop_resource: U
;sequential_model_2_conv2d_63_conv2d_readvariableop_resource:  J
<sequential_model_2_conv2d_63_biasadd_readvariableop_resource: i
Osequential_model_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource: T
Fsequential_model_2_conv2d_transpose_10_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_64_conv2d_readvariableop_resource: J
<sequential_model_2_conv2d_64_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_65_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_65_biasadd_readvariableop_resource:i
Osequential_model_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource:T
Fsequential_model_2_conv2d_transpose_11_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_66_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_66_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_67_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_67_biasadd_readvariableop_resource:i
Osequential_model_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:T
Fsequential_model_2_conv2d_transpose_12_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_68_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_68_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_69_conv2d_readvariableop_resource:J
<sequential_model_2_conv2d_69_biasadd_readvariableop_resource:U
;sequential_model_2_conv2d_70_conv2d_readvariableop_resource:|J
<sequential_model_2_conv2d_70_biasadd_readvariableop_resource:|
identity	??3sequential/model_2/conv2d_52/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_52/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_53/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_53/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_54/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_54/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_55/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_55/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_56/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_56/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_57/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_57/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_58/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_58/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_59/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_59/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_60/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_60/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_61/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_61/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_62/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_62/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_63/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_63/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_64/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_64/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_65/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_65/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_66/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_66/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_67/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_67/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_68/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_68/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_69/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_69/Conv2D/ReadVariableOp?3sequential/model_2/conv2d_70/BiasAdd/ReadVariableOp?2sequential/model_2/conv2d_70/Conv2D/ReadVariableOp?=sequential/model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp?Fsequential/model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp?=sequential/model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp?Fsequential/model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?=sequential/model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp?Fsequential/model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?<sequential/model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp?Esequential/model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
2sequential/model_2/conv2d_52/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_52/Conv2DConv2Dmodel_2_input:sequential/model_2/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_52/BiasAddBiasAdd,sequential/model_2/conv2d_52/Conv2D:output:0;sequential/model_2/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_52/ReluRelu-sequential/model_2/conv2d_52/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_53/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_53/Conv2DConv2D/sequential/model_2/conv2d_52/Relu:activations:0:sequential/model_2/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_53/BiasAddBiasAdd,sequential/model_2/conv2d_53/Conv2D:output:0;sequential/model_2/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_53/ReluRelu-sequential/model_2/conv2d_53/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
+sequential/model_2/max_pooling2d_13/MaxPoolMaxPool/sequential/model_2/conv2d_53/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
2sequential/model_2/conv2d_54/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_54/Conv2DConv2D4sequential/model_2/max_pooling2d_13/MaxPool:output:0:sequential/model_2/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_54/BiasAddBiasAdd,sequential/model_2/conv2d_54/Conv2D:output:0;sequential/model_2/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_54/ReluRelu-sequential/model_2/conv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_55/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_55/Conv2DConv2D/sequential/model_2/conv2d_54/Relu:activations:0:sequential/model_2/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_55/BiasAddBiasAdd,sequential/model_2/conv2d_55/Conv2D:output:0;sequential/model_2/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_55/ReluRelu-sequential/model_2/conv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
+sequential/model_2/max_pooling2d_14/MaxPoolMaxPool/sequential/model_2/conv2d_55/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
2sequential/model_2/conv2d_56/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_56/Conv2DConv2D4sequential/model_2/max_pooling2d_14/MaxPool:output:0:sequential/model_2/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_56/BiasAddBiasAdd,sequential/model_2/conv2d_56/Conv2D:output:0;sequential/model_2/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_56/ReluRelu-sequential/model_2/conv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_57/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_57/Conv2DConv2D/sequential/model_2/conv2d_56/Relu:activations:0:sequential/model_2/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_57/BiasAddBiasAdd,sequential/model_2/conv2d_57/Conv2D:output:0;sequential/model_2/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_57/ReluRelu-sequential/model_2/conv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
+sequential/model_2/max_pooling2d_15/MaxPoolMaxPool/sequential/model_2/conv2d_57/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
2sequential/model_2/conv2d_58/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
#sequential/model_2/conv2d_58/Conv2DConv2D4sequential/model_2/max_pooling2d_15/MaxPool:output:0:sequential/model_2/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
3sequential/model_2/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
$sequential/model_2/conv2d_58/BiasAddBiasAdd,sequential/model_2/conv2d_58/Conv2D:output:0;sequential/model_2/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ ?
!sequential/model_2/conv2d_58/ReluRelu-sequential/model_2/conv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
2sequential/model_2/conv2d_59/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
#sequential/model_2/conv2d_59/Conv2DConv2D/sequential/model_2/conv2d_58/Relu:activations:0:sequential/model_2/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
3sequential/model_2/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
$sequential/model_2/conv2d_59/BiasAddBiasAdd,sequential/model_2/conv2d_59/Conv2D:output:0;sequential/model_2/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ ?
!sequential/model_2/conv2d_59/ReluRelu-sequential/model_2/conv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
+sequential/model_2/max_pooling2d_16/MaxPoolMaxPool/sequential/model_2/conv2d_59/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
2sequential/model_2/conv2d_60/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
#sequential/model_2/conv2d_60/Conv2DConv2D4sequential/model_2/max_pooling2d_16/MaxPool:output:0:sequential/model_2/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
3sequential/model_2/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
$sequential/model_2/conv2d_60/BiasAddBiasAdd,sequential/model_2/conv2d_60/Conv2D:output:0;sequential/model_2/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @?
!sequential/model_2/conv2d_60/ReluRelu-sequential/model_2/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
2sequential/model_2/conv2d_61/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
#sequential/model_2/conv2d_61/Conv2DConv2D/sequential/model_2/conv2d_60/Relu:activations:0:sequential/model_2/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
3sequential/model_2/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
$sequential/model_2/conv2d_61/BiasAddBiasAdd,sequential/model_2/conv2d_61/Conv2D:output:0;sequential/model_2/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @?
!sequential/model_2/conv2d_61/ReluRelu-sequential/model_2/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
+sequential/model_2/conv2d_transpose_9/ShapeShape/sequential/model_2/conv2d_61/Relu:activations:0*
T0*
_output_shapes
:?
9sequential/model_2/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;sequential/model_2/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential/model_2/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3sequential/model_2/conv2d_transpose_9/strided_sliceStridedSlice4sequential/model_2/conv2d_transpose_9/Shape:output:0Bsequential/model_2/conv2d_transpose_9/strided_slice/stack:output:0Dsequential/model_2/conv2d_transpose_9/strided_slice/stack_1:output:0Dsequential/model_2/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-sequential/model_2/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@o
-sequential/model_2/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@o
-sequential/model_2/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
+sequential/model_2/conv2d_transpose_9/stackPack<sequential/model_2/conv2d_transpose_9/strided_slice:output:06sequential/model_2/conv2d_transpose_9/stack/1:output:06sequential/model_2/conv2d_transpose_9/stack/2:output:06sequential/model_2/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:?
;sequential/model_2/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=sequential/model_2/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential/model_2/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5sequential/model_2/conv2d_transpose_9/strided_slice_1StridedSlice4sequential/model_2/conv2d_transpose_9/stack:output:0Dsequential/model_2/conv2d_transpose_9/strided_slice_1/stack:output:0Fsequential/model_2/conv2d_transpose_9/strided_slice_1/stack_1:output:0Fsequential/model_2/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Esequential/model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpNsequential_model_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
6sequential/model_2/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput4sequential/model_2/conv2d_transpose_9/stack:output:0Msequential/model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0/sequential/model_2/conv2d_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
<sequential/model_2/conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOpEsequential_model_2_conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
-sequential/model_2/conv2d_transpose_9/BiasAddBiasAdd?sequential/model_2/conv2d_transpose_9/conv2d_transpose:output:0Dsequential/model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ n
,sequential/model_2/concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
'sequential/model_2/concatenate_9/concatConcatV26sequential/model_2/conv2d_transpose_9/BiasAdd:output:0/sequential/model_2/conv2d_59/Relu:activations:05sequential/model_2/concatenate_9/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@?
2sequential/model_2/conv2d_62/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
#sequential/model_2/conv2d_62/Conv2DConv2D0sequential/model_2/concatenate_9/concat:output:0:sequential/model_2/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
3sequential/model_2/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
$sequential/model_2/conv2d_62/BiasAddBiasAdd,sequential/model_2/conv2d_62/Conv2D:output:0;sequential/model_2/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ ?
!sequential/model_2/conv2d_62/ReluRelu-sequential/model_2/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
2sequential/model_2/conv2d_63/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
#sequential/model_2/conv2d_63/Conv2DConv2D/sequential/model_2/conv2d_62/Relu:activations:0:sequential/model_2/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
3sequential/model_2/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
$sequential/model_2/conv2d_63/BiasAddBiasAdd,sequential/model_2/conv2d_63/Conv2D:output:0;sequential/model_2/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ ?
!sequential/model_2/conv2d_63/ReluRelu-sequential/model_2/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
,sequential/model_2/conv2d_transpose_10/ShapeShape/sequential/model_2/conv2d_63/Relu:activations:0*
T0*
_output_shapes
:?
:sequential/model_2/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/model_2/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential/model_2/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/model_2/conv2d_transpose_10/strided_sliceStridedSlice5sequential/model_2/conv2d_transpose_10/Shape:output:0Csequential/model_2/conv2d_transpose_10/strided_slice/stack:output:0Esequential/model_2/conv2d_transpose_10/strided_slice/stack_1:output:0Esequential/model_2/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
.sequential/model_2/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?q
.sequential/model_2/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?p
.sequential/model_2/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
,sequential/model_2/conv2d_transpose_10/stackPack=sequential/model_2/conv2d_transpose_10/strided_slice:output:07sequential/model_2/conv2d_transpose_10/stack/1:output:07sequential/model_2/conv2d_transpose_10/stack/2:output:07sequential/model_2/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:?
<sequential/model_2/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/model_2/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/model_2/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/model_2/conv2d_transpose_10/strided_slice_1StridedSlice5sequential/model_2/conv2d_transpose_10/stack:output:0Esequential/model_2/conv2d_transpose_10/strided_slice_1/stack:output:0Gsequential/model_2/conv2d_transpose_10/strided_slice_1/stack_1:output:0Gsequential/model_2/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Fsequential/model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpOsequential_model_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
7sequential/model_2/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput5sequential/model_2/conv2d_transpose_10/stack:output:0Nsequential/model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0/sequential/model_2/conv2d_63/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
=sequential/model_2/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOpFsequential_model_2_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
.sequential/model_2/conv2d_transpose_10/BiasAddBiasAdd@sequential/model_2/conv2d_transpose_10/conv2d_transpose:output:0Esequential/model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????o
-sequential/model_2/concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential/model_2/concatenate_10/concatConcatV27sequential/model_2/conv2d_transpose_10/BiasAdd:output:0/sequential/model_2/conv2d_57/Relu:activations:06sequential/model_2/concatenate_10/concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? ?
2sequential/model_2/conv2d_64/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
#sequential/model_2/conv2d_64/Conv2DConv2D1sequential/model_2/concatenate_10/concat:output:0:sequential/model_2/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_64/BiasAddBiasAdd,sequential/model_2/conv2d_64/Conv2D:output:0;sequential/model_2/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_64/ReluRelu-sequential/model_2/conv2d_64/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_65/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_65/Conv2DConv2D/sequential/model_2/conv2d_64/Relu:activations:0:sequential/model_2/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_65/BiasAddBiasAdd,sequential/model_2/conv2d_65/Conv2D:output:0;sequential/model_2/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_65/ReluRelu-sequential/model_2/conv2d_65/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
,sequential/model_2/conv2d_transpose_11/ShapeShape/sequential/model_2/conv2d_65/Relu:activations:0*
T0*
_output_shapes
:?
:sequential/model_2/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/model_2/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential/model_2/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/model_2/conv2d_transpose_11/strided_sliceStridedSlice5sequential/model_2/conv2d_transpose_11/Shape:output:0Csequential/model_2/conv2d_transpose_11/strided_slice/stack:output:0Esequential/model_2/conv2d_transpose_11/strided_slice/stack_1:output:0Esequential/model_2/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
.sequential/model_2/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?q
.sequential/model_2/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?p
.sequential/model_2/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
,sequential/model_2/conv2d_transpose_11/stackPack=sequential/model_2/conv2d_transpose_11/strided_slice:output:07sequential/model_2/conv2d_transpose_11/stack/1:output:07sequential/model_2/conv2d_transpose_11/stack/2:output:07sequential/model_2/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:?
<sequential/model_2/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/model_2/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/model_2/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/model_2/conv2d_transpose_11/strided_slice_1StridedSlice5sequential/model_2/conv2d_transpose_11/stack:output:0Esequential/model_2/conv2d_transpose_11/strided_slice_1/stack:output:0Gsequential/model_2/conv2d_transpose_11/strided_slice_1/stack_1:output:0Gsequential/model_2/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Fsequential/model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpOsequential_model_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
7sequential/model_2/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput5sequential/model_2/conv2d_transpose_11/stack:output:0Nsequential/model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0/sequential/model_2/conv2d_65/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
=sequential/model_2/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOpFsequential_model_2_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
.sequential/model_2/conv2d_transpose_11/BiasAddBiasAdd@sequential/model_2/conv2d_transpose_11/conv2d_transpose:output:0Esequential/model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????o
-sequential/model_2/concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential/model_2/concatenate_11/concatConcatV27sequential/model_2/conv2d_transpose_11/BiasAdd:output:0/sequential/model_2/conv2d_55/Relu:activations:06sequential/model_2/concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_66/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_66/Conv2DConv2D1sequential/model_2/concatenate_11/concat:output:0:sequential/model_2/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_66/BiasAddBiasAdd,sequential/model_2/conv2d_66/Conv2D:output:0;sequential/model_2/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_66/ReluRelu-sequential/model_2/conv2d_66/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_67/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_67/Conv2DConv2D/sequential/model_2/conv2d_66/Relu:activations:0:sequential/model_2/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_67/BiasAddBiasAdd,sequential/model_2/conv2d_67/Conv2D:output:0;sequential/model_2/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_67/ReluRelu-sequential/model_2/conv2d_67/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
,sequential/model_2/conv2d_transpose_12/ShapeShape/sequential/model_2/conv2d_67/Relu:activations:0*
T0*
_output_shapes
:?
:sequential/model_2/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/model_2/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential/model_2/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/model_2/conv2d_transpose_12/strided_sliceStridedSlice5sequential/model_2/conv2d_transpose_12/Shape:output:0Csequential/model_2/conv2d_transpose_12/strided_slice/stack:output:0Esequential/model_2/conv2d_transpose_12/strided_slice/stack_1:output:0Esequential/model_2/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
.sequential/model_2/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?q
.sequential/model_2/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?p
.sequential/model_2/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
,sequential/model_2/conv2d_transpose_12/stackPack=sequential/model_2/conv2d_transpose_12/strided_slice:output:07sequential/model_2/conv2d_transpose_12/stack/1:output:07sequential/model_2/conv2d_transpose_12/stack/2:output:07sequential/model_2/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:?
<sequential/model_2/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/model_2/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/model_2/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/model_2/conv2d_transpose_12/strided_slice_1StridedSlice5sequential/model_2/conv2d_transpose_12/stack:output:0Esequential/model_2/conv2d_transpose_12/strided_slice_1/stack:output:0Gsequential/model_2/conv2d_transpose_12/strided_slice_1/stack_1:output:0Gsequential/model_2/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Fsequential/model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpOsequential_model_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
7sequential/model_2/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput5sequential/model_2/conv2d_transpose_12/stack:output:0Nsequential/model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0/sequential/model_2/conv2d_67/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
=sequential/model_2/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOpFsequential_model_2_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
.sequential/model_2/conv2d_transpose_12/BiasAddBiasAdd@sequential/model_2/conv2d_transpose_12/conv2d_transpose:output:0Esequential/model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????o
-sequential/model_2/concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential/model_2/concatenate_12/concatConcatV27sequential/model_2/conv2d_transpose_12/BiasAdd:output:0/sequential/model_2/conv2d_53/Relu:activations:06sequential/model_2/concatenate_12/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_68/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_68/Conv2DConv2D1sequential/model_2/concatenate_12/concat:output:0:sequential/model_2/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_68/BiasAddBiasAdd,sequential/model_2/conv2d_68/Conv2D:output:0;sequential/model_2/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_68/ReluRelu-sequential/model_2/conv2d_68/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_69/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
#sequential/model_2/conv2d_69/Conv2DConv2D/sequential/model_2/conv2d_68/Relu:activations:0:sequential/model_2/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
3sequential/model_2/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
$sequential/model_2/conv2d_69/BiasAddBiasAdd,sequential/model_2/conv2d_69/Conv2D:output:0;sequential/model_2/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:????????????
!sequential/model_2/conv2d_69/ReluRelu-sequential/model_2/conv2d_69/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
2sequential/model_2/conv2d_70/Conv2D/ReadVariableOpReadVariableOp;sequential_model_2_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
#sequential/model_2/conv2d_70/Conv2DConv2D/sequential/model_2/conv2d_69/Relu:activations:0:sequential/model_2/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
?
3sequential/model_2/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp<sequential_model_2_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
$sequential/model_2/conv2d_70/BiasAddBiasAdd,sequential/model_2/conv2d_70/Conv2D:output:0;sequential/model_2/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|?
$sequential/model_2/conv2d_70/SoftmaxSoftmax-sequential/model_2/conv2d_70/BiasAdd:output:0*
T0*1
_output_shapes
:???????????|m
"sequential/argmax/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
sequential/argmax/ArgMaxArgMax.sequential/model_2/conv2d_70/Softmax:softmax:0+sequential/argmax/ArgMax/dimension:output:0*
T0*-
_output_shapes
:???????????v
IdentityIdentity!sequential/argmax/ArgMax:output:0^NoOp*
T0	*-
_output_shapes
:????????????
NoOpNoOp4^sequential/model_2/conv2d_52/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_52/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_53/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_53/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_54/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_54/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_55/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_55/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_56/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_56/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_57/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_57/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_58/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_58/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_59/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_59/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_60/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_60/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_61/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_61/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_62/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_62/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_63/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_63/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_64/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_64/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_65/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_65/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_66/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_66/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_67/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_67/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_68/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_68/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_69/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_69/Conv2D/ReadVariableOp4^sequential/model_2/conv2d_70/BiasAdd/ReadVariableOp3^sequential/model_2/conv2d_70/Conv2D/ReadVariableOp>^sequential/model_2/conv2d_transpose_10/BiasAdd/ReadVariableOpG^sequential/model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp>^sequential/model_2/conv2d_transpose_11/BiasAdd/ReadVariableOpG^sequential/model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp>^sequential/model_2/conv2d_transpose_12/BiasAdd/ReadVariableOpG^sequential/model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp=^sequential/model_2/conv2d_transpose_9/BiasAdd/ReadVariableOpF^sequential/model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3sequential/model_2/conv2d_52/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_52/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_52/Conv2D/ReadVariableOp2sequential/model_2/conv2d_52/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_53/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_53/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_53/Conv2D/ReadVariableOp2sequential/model_2/conv2d_53/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_54/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_54/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_54/Conv2D/ReadVariableOp2sequential/model_2/conv2d_54/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_55/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_55/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_55/Conv2D/ReadVariableOp2sequential/model_2/conv2d_55/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_56/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_56/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_56/Conv2D/ReadVariableOp2sequential/model_2/conv2d_56/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_57/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_57/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_57/Conv2D/ReadVariableOp2sequential/model_2/conv2d_57/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_58/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_58/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_58/Conv2D/ReadVariableOp2sequential/model_2/conv2d_58/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_59/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_59/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_59/Conv2D/ReadVariableOp2sequential/model_2/conv2d_59/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_60/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_60/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_60/Conv2D/ReadVariableOp2sequential/model_2/conv2d_60/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_61/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_61/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_61/Conv2D/ReadVariableOp2sequential/model_2/conv2d_61/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_62/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_62/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_62/Conv2D/ReadVariableOp2sequential/model_2/conv2d_62/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_63/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_63/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_63/Conv2D/ReadVariableOp2sequential/model_2/conv2d_63/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_64/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_64/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_64/Conv2D/ReadVariableOp2sequential/model_2/conv2d_64/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_65/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_65/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_65/Conv2D/ReadVariableOp2sequential/model_2/conv2d_65/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_66/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_66/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_66/Conv2D/ReadVariableOp2sequential/model_2/conv2d_66/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_67/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_67/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_67/Conv2D/ReadVariableOp2sequential/model_2/conv2d_67/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_68/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_68/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_68/Conv2D/ReadVariableOp2sequential/model_2/conv2d_68/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_69/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_69/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_69/Conv2D/ReadVariableOp2sequential/model_2/conv2d_69/Conv2D/ReadVariableOp2j
3sequential/model_2/conv2d_70/BiasAdd/ReadVariableOp3sequential/model_2/conv2d_70/BiasAdd/ReadVariableOp2h
2sequential/model_2/conv2d_70/Conv2D/ReadVariableOp2sequential/model_2/conv2d_70/Conv2D/ReadVariableOp2~
=sequential/model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp=sequential/model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2?
Fsequential/model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpFsequential/model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2~
=sequential/model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp=sequential/model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2?
Fsequential/model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpFsequential/model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2~
=sequential/model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp=sequential/model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2?
Fsequential/model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpFsequential/model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2|
<sequential/model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp<sequential/model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp2?
Esequential/model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOpEsequential/model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:` \
1
_output_shapes
:???????????
'
_user_specified_namemodel_2_input
?
?
)__inference_conv2d_62_layer_call_fn_98154

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_94477w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
u
I__inference_concatenate_11_layer_call_and_return_conditional_losses_98335
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_94092

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_98000

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
u
I__inference_concatenate_12_layer_call_and_return_conditional_losses_98430
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????:???????????:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
)__inference_conv2d_66_layer_call_fn_98344

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_94573y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_58008
input_7!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_57957`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_7
ç
?%
B__inference_model_2_layer_call_and_return_conditional_losses_97839

inputsB
(conv2d_52_conv2d_readvariableop_resource:7
)conv2d_52_biasadd_readvariableop_resource:B
(conv2d_53_conv2d_readvariableop_resource:7
)conv2d_53_biasadd_readvariableop_resource:B
(conv2d_54_conv2d_readvariableop_resource:7
)conv2d_54_biasadd_readvariableop_resource:B
(conv2d_55_conv2d_readvariableop_resource:7
)conv2d_55_biasadd_readvariableop_resource:B
(conv2d_56_conv2d_readvariableop_resource:7
)conv2d_56_biasadd_readvariableop_resource:B
(conv2d_57_conv2d_readvariableop_resource:7
)conv2d_57_biasadd_readvariableop_resource:B
(conv2d_58_conv2d_readvariableop_resource: 7
)conv2d_58_biasadd_readvariableop_resource: B
(conv2d_59_conv2d_readvariableop_resource:  7
)conv2d_59_biasadd_readvariableop_resource: B
(conv2d_60_conv2d_readvariableop_resource: @7
)conv2d_60_biasadd_readvariableop_resource:@B
(conv2d_61_conv2d_readvariableop_resource:@@7
)conv2d_61_biasadd_readvariableop_resource:@U
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_9_biasadd_readvariableop_resource: B
(conv2d_62_conv2d_readvariableop_resource:@ 7
)conv2d_62_biasadd_readvariableop_resource: B
(conv2d_63_conv2d_readvariableop_resource:  7
)conv2d_63_biasadd_readvariableop_resource: V
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_10_biasadd_readvariableop_resource:B
(conv2d_64_conv2d_readvariableop_resource: 7
)conv2d_64_biasadd_readvariableop_resource:B
(conv2d_65_conv2d_readvariableop_resource:7
)conv2d_65_biasadd_readvariableop_resource:V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_11_biasadd_readvariableop_resource:B
(conv2d_66_conv2d_readvariableop_resource:7
)conv2d_66_biasadd_readvariableop_resource:B
(conv2d_67_conv2d_readvariableop_resource:7
)conv2d_67_biasadd_readvariableop_resource:V
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:A
3conv2d_transpose_12_biasadd_readvariableop_resource:B
(conv2d_68_conv2d_readvariableop_resource:7
)conv2d_68_biasadd_readvariableop_resource:B
(conv2d_69_conv2d_readvariableop_resource:7
)conv2d_69_biasadd_readvariableop_resource:B
(conv2d_70_conv2d_readvariableop_resource:|7
)conv2d_70_biasadd_readvariableop_resource:|
identity?? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? conv2d_55/BiasAdd/ReadVariableOp?conv2d_55/Conv2D/ReadVariableOp? conv2d_56/BiasAdd/ReadVariableOp?conv2d_56/Conv2D/ReadVariableOp? conv2d_57/BiasAdd/ReadVariableOp?conv2d_57/Conv2D/ReadVariableOp? conv2d_58/BiasAdd/ReadVariableOp?conv2d_58/Conv2D/ReadVariableOp? conv2d_59/BiasAdd/ReadVariableOp?conv2d_59/Conv2D/ReadVariableOp? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp? conv2d_65/BiasAdd/ReadVariableOp?conv2d_65/Conv2D/ReadVariableOp? conv2d_66/BiasAdd/ReadVariableOp?conv2d_66/Conv2D/ReadVariableOp? conv2d_67/BiasAdd/ReadVariableOp?conv2d_67/Conv2D/ReadVariableOp? conv2d_68/BiasAdd/ReadVariableOp?conv2d_68/Conv2D/ReadVariableOp? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp?*conv2d_transpose_10/BiasAdd/ReadVariableOp?3conv2d_transpose_10/conv2d_transpose/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?*conv2d_transpose_12/BiasAdd/ReadVariableOp?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?)conv2d_transpose_9/BiasAdd/ReadVariableOp?2conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_52/Conv2DConv2Dinputs'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d_13/MaxPoolMaxPoolconv2d_53/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_54/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d_14/MaxPoolMaxPoolconv2d_55/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_56/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_57/Conv2DConv2Dconv2d_56/Relu:activations:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d_15/MaxPoolMaxPoolconv2d_57/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_58/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_59/Conv2DConv2Dconv2d_58/Relu:activations:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
max_pooling2d_16/MaxPoolMaxPoolconv2d_59/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_60/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @l
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_61/Conv2DConv2Dconv2d_60/Relu:activations:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @l
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @d
conv2d_transpose_9/ShapeShapeconv2d_61/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0conv2d_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_transpose_9/BiasAddBiasAdd,conv2d_transpose_9/conv2d_transpose:output:01conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ [
concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_9/concatConcatV2#conv2d_transpose_9/BiasAdd:output:0conv2d_59/Relu:activations:0"concatenate_9/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_62/Conv2DConv2Dconcatenate_9/concat:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ l
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ e
conv2d_transpose_10/ShapeShapeconv2d_63/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0conv2d_63/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????\
concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_10/concatConcatV2$conv2d_transpose_10/BiasAdd:output:0conv2d_57/Relu:activations:0#concatenate_10/concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? ?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_64/Conv2DConv2Dconcatenate_10/concat:output:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*1
_output_shapes
:???????????e
conv2d_transpose_11/ShapeShapeconv2d_65/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0conv2d_65/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????\
concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_11/concatConcatV2$conv2d_transpose_11/BiasAdd:output:0conv2d_55/Relu:activations:0#concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
conv2d_66/Conv2D/ReadVariableOpReadVariableOp(conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_66/Conv2DConv2Dconcatenate_11/concat:output:0'conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_66/BiasAdd/ReadVariableOpReadVariableOp)conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_66/BiasAddBiasAddconv2d_66/Conv2D:output:0(conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_66/ReluReluconv2d_66/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_67/Conv2DConv2Dconv2d_66/Relu:activations:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_67/ReluReluconv2d_67/BiasAdd:output:0*
T0*1
_output_shapes
:???????????e
conv2d_transpose_12/ShapeShapeconv2d_67/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0conv2d_67/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
*conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_12/BiasAddBiasAdd-conv2d_transpose_12/conv2d_transpose:output:02conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????\
concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_12/concatConcatV2$conv2d_transpose_12/BiasAdd:output:0conv2d_53/Relu:activations:0#concatenate_12/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_68/Conv2DConv2Dconcatenate_12/concat:output:0'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_68/ReluReluconv2d_68/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_69/Conv2DConv2Dconv2d_68/Relu:activations:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????n
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
conv2d_70/Conv2DConv2Dconv2d_69/Relu:activations:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|t
conv2d_70/SoftmaxSoftmaxconv2d_70/BiasAdd:output:0*
T0*1
_output_shapes
:???????????|t
IdentityIdentityconv2d_70/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:???????????|?
NoOpNoOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp!^conv2d_66/BiasAdd/ReadVariableOp ^conv2d_66/Conv2D/ReadVariableOp!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp+^conv2d_transpose_12/BiasAdd/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp*^conv2d_transpose_9/BiasAdd/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2D
 conv2d_66/BiasAdd/ReadVariableOp conv2d_66/BiasAdd/ReadVariableOp2B
conv2d_66/Conv2D/ReadVariableOpconv2d_66/Conv2D/ReadVariableOp2D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_12/BiasAdd/ReadVariableOp*conv2d_transpose_12/BiasAdd/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_9/BiasAdd/ReadVariableOp)conv2d_transpose_9/BiasAdd/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?+
E__inference_sequential_layer_call_and_return_conditional_losses_97195

inputsJ
0model_2_conv2d_52_conv2d_readvariableop_resource:?
1model_2_conv2d_52_biasadd_readvariableop_resource:J
0model_2_conv2d_53_conv2d_readvariableop_resource:?
1model_2_conv2d_53_biasadd_readvariableop_resource:J
0model_2_conv2d_54_conv2d_readvariableop_resource:?
1model_2_conv2d_54_biasadd_readvariableop_resource:J
0model_2_conv2d_55_conv2d_readvariableop_resource:?
1model_2_conv2d_55_biasadd_readvariableop_resource:J
0model_2_conv2d_56_conv2d_readvariableop_resource:?
1model_2_conv2d_56_biasadd_readvariableop_resource:J
0model_2_conv2d_57_conv2d_readvariableop_resource:?
1model_2_conv2d_57_biasadd_readvariableop_resource:J
0model_2_conv2d_58_conv2d_readvariableop_resource: ?
1model_2_conv2d_58_biasadd_readvariableop_resource: J
0model_2_conv2d_59_conv2d_readvariableop_resource:  ?
1model_2_conv2d_59_biasadd_readvariableop_resource: J
0model_2_conv2d_60_conv2d_readvariableop_resource: @?
1model_2_conv2d_60_biasadd_readvariableop_resource:@J
0model_2_conv2d_61_conv2d_readvariableop_resource:@@?
1model_2_conv2d_61_biasadd_readvariableop_resource:@]
Cmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource: @H
:model_2_conv2d_transpose_9_biasadd_readvariableop_resource: J
0model_2_conv2d_62_conv2d_readvariableop_resource:@ ?
1model_2_conv2d_62_biasadd_readvariableop_resource: J
0model_2_conv2d_63_conv2d_readvariableop_resource:  ?
1model_2_conv2d_63_biasadd_readvariableop_resource: ^
Dmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource: I
;model_2_conv2d_transpose_10_biasadd_readvariableop_resource:J
0model_2_conv2d_64_conv2d_readvariableop_resource: ?
1model_2_conv2d_64_biasadd_readvariableop_resource:J
0model_2_conv2d_65_conv2d_readvariableop_resource:?
1model_2_conv2d_65_biasadd_readvariableop_resource:^
Dmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource:I
;model_2_conv2d_transpose_11_biasadd_readvariableop_resource:J
0model_2_conv2d_66_conv2d_readvariableop_resource:?
1model_2_conv2d_66_biasadd_readvariableop_resource:J
0model_2_conv2d_67_conv2d_readvariableop_resource:?
1model_2_conv2d_67_biasadd_readvariableop_resource:^
Dmodel_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:I
;model_2_conv2d_transpose_12_biasadd_readvariableop_resource:J
0model_2_conv2d_68_conv2d_readvariableop_resource:?
1model_2_conv2d_68_biasadd_readvariableop_resource:J
0model_2_conv2d_69_conv2d_readvariableop_resource:?
1model_2_conv2d_69_biasadd_readvariableop_resource:J
0model_2_conv2d_70_conv2d_readvariableop_resource:|?
1model_2_conv2d_70_biasadd_readvariableop_resource:|
identity	??(model_2/conv2d_52/BiasAdd/ReadVariableOp?'model_2/conv2d_52/Conv2D/ReadVariableOp?(model_2/conv2d_53/BiasAdd/ReadVariableOp?'model_2/conv2d_53/Conv2D/ReadVariableOp?(model_2/conv2d_54/BiasAdd/ReadVariableOp?'model_2/conv2d_54/Conv2D/ReadVariableOp?(model_2/conv2d_55/BiasAdd/ReadVariableOp?'model_2/conv2d_55/Conv2D/ReadVariableOp?(model_2/conv2d_56/BiasAdd/ReadVariableOp?'model_2/conv2d_56/Conv2D/ReadVariableOp?(model_2/conv2d_57/BiasAdd/ReadVariableOp?'model_2/conv2d_57/Conv2D/ReadVariableOp?(model_2/conv2d_58/BiasAdd/ReadVariableOp?'model_2/conv2d_58/Conv2D/ReadVariableOp?(model_2/conv2d_59/BiasAdd/ReadVariableOp?'model_2/conv2d_59/Conv2D/ReadVariableOp?(model_2/conv2d_60/BiasAdd/ReadVariableOp?'model_2/conv2d_60/Conv2D/ReadVariableOp?(model_2/conv2d_61/BiasAdd/ReadVariableOp?'model_2/conv2d_61/Conv2D/ReadVariableOp?(model_2/conv2d_62/BiasAdd/ReadVariableOp?'model_2/conv2d_62/Conv2D/ReadVariableOp?(model_2/conv2d_63/BiasAdd/ReadVariableOp?'model_2/conv2d_63/Conv2D/ReadVariableOp?(model_2/conv2d_64/BiasAdd/ReadVariableOp?'model_2/conv2d_64/Conv2D/ReadVariableOp?(model_2/conv2d_65/BiasAdd/ReadVariableOp?'model_2/conv2d_65/Conv2D/ReadVariableOp?(model_2/conv2d_66/BiasAdd/ReadVariableOp?'model_2/conv2d_66/Conv2D/ReadVariableOp?(model_2/conv2d_67/BiasAdd/ReadVariableOp?'model_2/conv2d_67/Conv2D/ReadVariableOp?(model_2/conv2d_68/BiasAdd/ReadVariableOp?'model_2/conv2d_68/Conv2D/ReadVariableOp?(model_2/conv2d_69/BiasAdd/ReadVariableOp?'model_2/conv2d_69/Conv2D/ReadVariableOp?(model_2/conv2d_70/BiasAdd/ReadVariableOp?'model_2/conv2d_70/Conv2D/ReadVariableOp?2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp?:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
'model_2/conv2d_52/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_52/Conv2DConv2Dinputs/model_2/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_52/BiasAddBiasAdd!model_2/conv2d_52/Conv2D:output:00model_2/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_52/ReluRelu"model_2/conv2d_52/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_53/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_53/Conv2DConv2D$model_2/conv2d_52/Relu:activations:0/model_2/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_53/BiasAddBiasAdd!model_2/conv2d_53/Conv2D:output:00model_2/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_53/ReluRelu"model_2/conv2d_53/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_13/MaxPoolMaxPool$model_2/conv2d_53/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_54/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_54/Conv2DConv2D)model_2/max_pooling2d_13/MaxPool:output:0/model_2/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_54/BiasAddBiasAdd!model_2/conv2d_54/Conv2D:output:00model_2/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_54/ReluRelu"model_2/conv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_55/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_55/Conv2DConv2D$model_2/conv2d_54/Relu:activations:0/model_2/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_55/BiasAddBiasAdd!model_2/conv2d_55/Conv2D:output:00model_2/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_55/ReluRelu"model_2/conv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_14/MaxPoolMaxPool$model_2/conv2d_55/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_56/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_56/Conv2DConv2D)model_2/max_pooling2d_14/MaxPool:output:0/model_2/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_56/BiasAddBiasAdd!model_2/conv2d_56/Conv2D:output:00model_2/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_56/ReluRelu"model_2/conv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_57/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_57/Conv2DConv2D$model_2/conv2d_56/Relu:activations:0/model_2/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_57/BiasAddBiasAdd!model_2/conv2d_57/Conv2D:output:00model_2/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_57/ReluRelu"model_2/conv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
 model_2/max_pooling2d_15/MaxPoolMaxPool$model_2/conv2d_57/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_58/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_58/Conv2DConv2D)model_2/max_pooling2d_15/MaxPool:output:0/model_2/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_58/BiasAddBiasAdd!model_2/conv2d_58/Conv2D:output:00model_2/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_58/ReluRelu"model_2/conv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
'model_2/conv2d_59/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_59/Conv2DConv2D$model_2/conv2d_58/Relu:activations:0/model_2/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_59/BiasAddBiasAdd!model_2/conv2d_59/Conv2D:output:00model_2/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_59/ReluRelu"model_2/conv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
 model_2/max_pooling2d_16/MaxPoolMaxPool$model_2/conv2d_59/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_60/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
model_2/conv2d_60/Conv2DConv2D)model_2/max_pooling2d_16/MaxPool:output:0/model_2/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
(model_2/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_60/BiasAddBiasAdd!model_2/conv2d_60/Conv2D:output:00model_2/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @|
model_2/conv2d_60/ReluRelu"model_2/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
'model_2/conv2d_61/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
model_2/conv2d_61/Conv2DConv2D$model_2/conv2d_60/Relu:activations:0/model_2/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
(model_2/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_61/BiasAddBiasAdd!model_2/conv2d_61/Conv2D:output:00model_2/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @|
model_2/conv2d_61/ReluRelu"model_2/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @t
 model_2/conv2d_transpose_9/ShapeShape$model_2/conv2d_61/Relu:activations:0*
T0*
_output_shapes
:x
.model_2/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_2/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_2/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(model_2/conv2d_transpose_9/strided_sliceStridedSlice)model_2/conv2d_transpose_9/Shape:output:07model_2/conv2d_transpose_9/strided_slice/stack:output:09model_2/conv2d_transpose_9/strided_slice/stack_1:output:09model_2/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_2/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@d
"model_2/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@d
"model_2/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
 model_2/conv2d_transpose_9/stackPack1model_2/conv2d_transpose_9/strided_slice:output:0+model_2/conv2d_transpose_9/stack/1:output:0+model_2/conv2d_transpose_9/stack/2:output:0+model_2/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_2/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_2/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_2/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model_2/conv2d_transpose_9/strided_slice_1StridedSlice)model_2/conv2d_transpose_9/stack:output:09model_2/conv2d_transpose_9/strided_slice_1/stack:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_1:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
+model_2/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput)model_2/conv2d_transpose_9/stack:output:0Bmodel_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_61/Relu:activations:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp:model_2_conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
"model_2/conv2d_transpose_9/BiasAddBiasAdd4model_2/conv2d_transpose_9/conv2d_transpose:output:09model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ c
!model_2/concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_9/concatConcatV2+model_2/conv2d_transpose_9/BiasAdd:output:0$model_2/conv2d_59/Relu:activations:0*model_2/concatenate_9/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????@@@?
'model_2/conv2d_62/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
model_2/conv2d_62/Conv2DConv2D%model_2/concatenate_9/concat:output:0/model_2/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_62/BiasAddBiasAdd!model_2/conv2d_62/Conv2D:output:00model_2/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_62/ReluRelu"model_2/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ ?
'model_2/conv2d_63/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_63/Conv2DConv2D$model_2/conv2d_62/Relu:activations:0/model_2/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
?
(model_2/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_63/BiasAddBiasAdd!model_2/conv2d_63/Conv2D:output:00model_2/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ |
model_2/conv2d_63/ReluRelu"model_2/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ u
!model_2/conv2d_transpose_10/ShapeShape$model_2/conv2d_63/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_10/strided_sliceStridedSlice*model_2/conv2d_transpose_10/Shape:output:08model_2/conv2d_transpose_10/strided_slice/stack:output:0:model_2/conv2d_transpose_10/strided_slice/stack_1:output:0:model_2/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_10/stackPack2model_2/conv2d_transpose_10/strided_slice:output:0,model_2/conv2d_transpose_10/stack/1:output:0,model_2/conv2d_transpose_10/stack/2:output:0,model_2/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_10/strided_slice_1StridedSlice*model_2/conv2d_transpose_10/stack:output:0:model_2/conv2d_transpose_10/strided_slice_1/stack:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
,model_2/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_10/stack:output:0Cmodel_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_63/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_10/BiasAddBiasAdd5model_2/conv2d_transpose_10/conv2d_transpose:output:0:model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_10/concatConcatV2,model_2/conv2d_transpose_10/BiasAdd:output:0$model_2/conv2d_57/Relu:activations:0+model_2/concatenate_10/concat/axis:output:0*
N*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_64/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_64/Conv2DConv2D&model_2/concatenate_10/concat:output:0/model_2/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_64/BiasAddBiasAdd!model_2/conv2d_64/Conv2D:output:00model_2/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_64/ReluRelu"model_2/conv2d_64/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_65/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_65/Conv2DConv2D$model_2/conv2d_64/Relu:activations:0/model_2/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_65/BiasAddBiasAdd!model_2/conv2d_65/Conv2D:output:00model_2/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_65/ReluRelu"model_2/conv2d_65/BiasAdd:output:0*
T0*1
_output_shapes
:???????????u
!model_2/conv2d_transpose_11/ShapeShape$model_2/conv2d_65/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_11/strided_sliceStridedSlice*model_2/conv2d_transpose_11/Shape:output:08model_2/conv2d_transpose_11/strided_slice/stack:output:0:model_2/conv2d_transpose_11/strided_slice/stack_1:output:0:model_2/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_11/stackPack2model_2/conv2d_transpose_11/strided_slice:output:0,model_2/conv2d_transpose_11/stack/1:output:0,model_2/conv2d_transpose_11/stack/2:output:0,model_2/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_11/strided_slice_1StridedSlice*model_2/conv2d_transpose_11/stack:output:0:model_2/conv2d_transpose_11/strided_slice_1/stack:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
,model_2/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_11/stack:output:0Cmodel_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_65/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_11/BiasAddBiasAdd5model_2/conv2d_transpose_11/conv2d_transpose:output:0:model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_11/concatConcatV2,model_2/conv2d_transpose_11/BiasAdd:output:0$model_2/conv2d_55/Relu:activations:0+model_2/concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
'model_2/conv2d_66/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_66/Conv2DConv2D&model_2/concatenate_11/concat:output:0/model_2/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_66/BiasAddBiasAdd!model_2/conv2d_66/Conv2D:output:00model_2/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_66/ReluRelu"model_2/conv2d_66/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_67/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_67/Conv2DConv2D$model_2/conv2d_66/Relu:activations:0/model_2/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_67/BiasAddBiasAdd!model_2/conv2d_67/Conv2D:output:00model_2/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_67/ReluRelu"model_2/conv2d_67/BiasAdd:output:0*
T0*1
_output_shapes
:???????????u
!model_2/conv2d_transpose_12/ShapeShape$model_2/conv2d_67/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_12/strided_sliceStridedSlice*model_2/conv2d_transpose_12/Shape:output:08model_2/conv2d_transpose_12/strided_slice/stack:output:0:model_2/conv2d_transpose_12/strided_slice/stack_1:output:0:model_2/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
!model_2/conv2d_transpose_12/stackPack2model_2/conv2d_transpose_12/strided_slice:output:0,model_2/conv2d_transpose_12/stack/1:output:0,model_2/conv2d_transpose_12/stack/2:output:0,model_2/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_12/strided_slice_1StridedSlice*model_2/conv2d_transpose_12/stack:output:0:model_2/conv2d_transpose_12/strided_slice_1/stack:output:0<model_2/conv2d_transpose_12/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
,model_2/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_12/stack:output:0Cmodel_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_67/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
#model_2/conv2d_transpose_12/BiasAddBiasAdd5model_2/conv2d_transpose_12/conv2d_transpose:output:0:model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
"model_2/concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_12/concatConcatV2,model_2/conv2d_transpose_12/BiasAdd:output:0$model_2/conv2d_53/Relu:activations:0+model_2/concatenate_12/concat/axis:output:0*
N*
T0*1
_output_shapes
:????????????
'model_2/conv2d_68/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_68/Conv2DConv2D&model_2/concatenate_12/concat:output:0/model_2/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_68/BiasAddBiasAdd!model_2/conv2d_68/Conv2D:output:00model_2/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_68/ReluRelu"model_2/conv2d_68/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_69/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_2/conv2d_69/Conv2DConv2D$model_2/conv2d_68/Relu:activations:0/model_2/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_69/BiasAddBiasAdd!model_2/conv2d_69/Conv2D:output:00model_2/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????~
model_2/conv2d_69/ReluRelu"model_2/conv2d_69/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
'model_2/conv2d_70/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
model_2/conv2d_70/Conv2DConv2D$model_2/conv2d_69/Relu:activations:0/model_2/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
?
(model_2/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
model_2/conv2d_70/BiasAddBiasAdd!model_2/conv2d_70/Conv2D:output:00model_2/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|?
model_2/conv2d_70/SoftmaxSoftmax"model_2/conv2d_70/BiasAdd:output:0*
T0*1
_output_shapes
:???????????|b
argmax/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
??????????
argmax/ArgMaxArgMax#model_2/conv2d_70/Softmax:softmax:0 argmax/ArgMax/dimension:output:0*
T0*-
_output_shapes
:???????????k
IdentityIdentityargmax/ArgMax:output:0^NoOp*
T0	*-
_output_shapes
:????????????
NoOpNoOp)^model_2/conv2d_52/BiasAdd/ReadVariableOp(^model_2/conv2d_52/Conv2D/ReadVariableOp)^model_2/conv2d_53/BiasAdd/ReadVariableOp(^model_2/conv2d_53/Conv2D/ReadVariableOp)^model_2/conv2d_54/BiasAdd/ReadVariableOp(^model_2/conv2d_54/Conv2D/ReadVariableOp)^model_2/conv2d_55/BiasAdd/ReadVariableOp(^model_2/conv2d_55/Conv2D/ReadVariableOp)^model_2/conv2d_56/BiasAdd/ReadVariableOp(^model_2/conv2d_56/Conv2D/ReadVariableOp)^model_2/conv2d_57/BiasAdd/ReadVariableOp(^model_2/conv2d_57/Conv2D/ReadVariableOp)^model_2/conv2d_58/BiasAdd/ReadVariableOp(^model_2/conv2d_58/Conv2D/ReadVariableOp)^model_2/conv2d_59/BiasAdd/ReadVariableOp(^model_2/conv2d_59/Conv2D/ReadVariableOp)^model_2/conv2d_60/BiasAdd/ReadVariableOp(^model_2/conv2d_60/Conv2D/ReadVariableOp)^model_2/conv2d_61/BiasAdd/ReadVariableOp(^model_2/conv2d_61/Conv2D/ReadVariableOp)^model_2/conv2d_62/BiasAdd/ReadVariableOp(^model_2/conv2d_62/Conv2D/ReadVariableOp)^model_2/conv2d_63/BiasAdd/ReadVariableOp(^model_2/conv2d_63/Conv2D/ReadVariableOp)^model_2/conv2d_64/BiasAdd/ReadVariableOp(^model_2/conv2d_64/Conv2D/ReadVariableOp)^model_2/conv2d_65/BiasAdd/ReadVariableOp(^model_2/conv2d_65/Conv2D/ReadVariableOp)^model_2/conv2d_66/BiasAdd/ReadVariableOp(^model_2/conv2d_66/Conv2D/ReadVariableOp)^model_2/conv2d_67/BiasAdd/ReadVariableOp(^model_2/conv2d_67/Conv2D/ReadVariableOp)^model_2/conv2d_68/BiasAdd/ReadVariableOp(^model_2/conv2d_68/Conv2D/ReadVariableOp)^model_2/conv2d_69/BiasAdd/ReadVariableOp(^model_2/conv2d_69/Conv2D/ReadVariableOp)^model_2/conv2d_70/BiasAdd/ReadVariableOp(^model_2/conv2d_70/Conv2D/ReadVariableOp3^model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2^model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp;^model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(model_2/conv2d_52/BiasAdd/ReadVariableOp(model_2/conv2d_52/BiasAdd/ReadVariableOp2R
'model_2/conv2d_52/Conv2D/ReadVariableOp'model_2/conv2d_52/Conv2D/ReadVariableOp2T
(model_2/conv2d_53/BiasAdd/ReadVariableOp(model_2/conv2d_53/BiasAdd/ReadVariableOp2R
'model_2/conv2d_53/Conv2D/ReadVariableOp'model_2/conv2d_53/Conv2D/ReadVariableOp2T
(model_2/conv2d_54/BiasAdd/ReadVariableOp(model_2/conv2d_54/BiasAdd/ReadVariableOp2R
'model_2/conv2d_54/Conv2D/ReadVariableOp'model_2/conv2d_54/Conv2D/ReadVariableOp2T
(model_2/conv2d_55/BiasAdd/ReadVariableOp(model_2/conv2d_55/BiasAdd/ReadVariableOp2R
'model_2/conv2d_55/Conv2D/ReadVariableOp'model_2/conv2d_55/Conv2D/ReadVariableOp2T
(model_2/conv2d_56/BiasAdd/ReadVariableOp(model_2/conv2d_56/BiasAdd/ReadVariableOp2R
'model_2/conv2d_56/Conv2D/ReadVariableOp'model_2/conv2d_56/Conv2D/ReadVariableOp2T
(model_2/conv2d_57/BiasAdd/ReadVariableOp(model_2/conv2d_57/BiasAdd/ReadVariableOp2R
'model_2/conv2d_57/Conv2D/ReadVariableOp'model_2/conv2d_57/Conv2D/ReadVariableOp2T
(model_2/conv2d_58/BiasAdd/ReadVariableOp(model_2/conv2d_58/BiasAdd/ReadVariableOp2R
'model_2/conv2d_58/Conv2D/ReadVariableOp'model_2/conv2d_58/Conv2D/ReadVariableOp2T
(model_2/conv2d_59/BiasAdd/ReadVariableOp(model_2/conv2d_59/BiasAdd/ReadVariableOp2R
'model_2/conv2d_59/Conv2D/ReadVariableOp'model_2/conv2d_59/Conv2D/ReadVariableOp2T
(model_2/conv2d_60/BiasAdd/ReadVariableOp(model_2/conv2d_60/BiasAdd/ReadVariableOp2R
'model_2/conv2d_60/Conv2D/ReadVariableOp'model_2/conv2d_60/Conv2D/ReadVariableOp2T
(model_2/conv2d_61/BiasAdd/ReadVariableOp(model_2/conv2d_61/BiasAdd/ReadVariableOp2R
'model_2/conv2d_61/Conv2D/ReadVariableOp'model_2/conv2d_61/Conv2D/ReadVariableOp2T
(model_2/conv2d_62/BiasAdd/ReadVariableOp(model_2/conv2d_62/BiasAdd/ReadVariableOp2R
'model_2/conv2d_62/Conv2D/ReadVariableOp'model_2/conv2d_62/Conv2D/ReadVariableOp2T
(model_2/conv2d_63/BiasAdd/ReadVariableOp(model_2/conv2d_63/BiasAdd/ReadVariableOp2R
'model_2/conv2d_63/Conv2D/ReadVariableOp'model_2/conv2d_63/Conv2D/ReadVariableOp2T
(model_2/conv2d_64/BiasAdd/ReadVariableOp(model_2/conv2d_64/BiasAdd/ReadVariableOp2R
'model_2/conv2d_64/Conv2D/ReadVariableOp'model_2/conv2d_64/Conv2D/ReadVariableOp2T
(model_2/conv2d_65/BiasAdd/ReadVariableOp(model_2/conv2d_65/BiasAdd/ReadVariableOp2R
'model_2/conv2d_65/Conv2D/ReadVariableOp'model_2/conv2d_65/Conv2D/ReadVariableOp2T
(model_2/conv2d_66/BiasAdd/ReadVariableOp(model_2/conv2d_66/BiasAdd/ReadVariableOp2R
'model_2/conv2d_66/Conv2D/ReadVariableOp'model_2/conv2d_66/Conv2D/ReadVariableOp2T
(model_2/conv2d_67/BiasAdd/ReadVariableOp(model_2/conv2d_67/BiasAdd/ReadVariableOp2R
'model_2/conv2d_67/Conv2D/ReadVariableOp'model_2/conv2d_67/Conv2D/ReadVariableOp2T
(model_2/conv2d_68/BiasAdd/ReadVariableOp(model_2/conv2d_68/BiasAdd/ReadVariableOp2R
'model_2/conv2d_68/Conv2D/ReadVariableOp'model_2/conv2d_68/Conv2D/ReadVariableOp2T
(model_2/conv2d_69/BiasAdd/ReadVariableOp(model_2/conv2d_69/BiasAdd/ReadVariableOp2R
'model_2/conv2d_69/Conv2D/ReadVariableOp'model_2/conv2d_69/Conv2D/ReadVariableOp2T
(model_2/conv2d_70/BiasAdd/ReadVariableOp(model_2/conv2d_70/BiasAdd/ReadVariableOp2R
'model_2/conv2d_70/Conv2D/ReadVariableOp'model_2/conv2d_70/Conv2D/ReadVariableOp2h
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_12/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2f
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp2x
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
B
&__inference_argmax_layer_call_fn_97844

inputs
identity	?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_95753f
IdentityIdentityPartitionedCall:output:0*
T0	*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????|:Y U
1
_output_shapes
:???????????|
 
_user_specified_nameinputs
?
?
)__inference_conv2d_59_layer_call_fn_98029

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_94411w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_94324

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_94542

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_96054

inputs'
model_2_95959:
model_2_95961:'
model_2_95963:
model_2_95965:'
model_2_95967:
model_2_95969:'
model_2_95971:
model_2_95973:'
model_2_95975:
model_2_95977:'
model_2_95979:
model_2_95981:'
model_2_95983: 
model_2_95985: '
model_2_95987:  
model_2_95989: '
model_2_95991: @
model_2_95993:@'
model_2_95995:@@
model_2_95997:@'
model_2_95999: @
model_2_96001: '
model_2_96003:@ 
model_2_96005: '
model_2_96007:  
model_2_96009: '
model_2_96011: 
model_2_96013:'
model_2_96015: 
model_2_96017:'
model_2_96019:
model_2_96021:'
model_2_96023:
model_2_96025:'
model_2_96027:
model_2_96029:'
model_2_96031:
model_2_96033:'
model_2_96035:
model_2_96037:'
model_2_96039:
model_2_96041:'
model_2_96043:
model_2_96045:'
model_2_96047:|
model_2_96049:|
identity	??model_2/StatefulPartitionedCall?
model_2/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_2_95959model_2_95961model_2_95963model_2_95965model_2_95967model_2_95969model_2_95971model_2_95973model_2_95975model_2_95977model_2_95979model_2_95981model_2_95983model_2_95985model_2_95987model_2_95989model_2_95991model_2_95993model_2_95995model_2_95997model_2_95999model_2_96001model_2_96003model_2_96005model_2_96007model_2_96009model_2_96011model_2_96013model_2_96015model_2_96017model_2_96019model_2_96021model_2_96023model_2_96025model_2_96027model_2_96029model_2_96031model_2_96033model_2_96035model_2_96037model_2_96039model_2_96041model_2_96043model_2_96045model_2_96047model_2_96049*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_95201?
argmax/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_95753t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????h
NoOpNoOp ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_95201

inputs)
conv2d_52_95077:
conv2d_52_95079:)
conv2d_53_95082:
conv2d_53_95084:)
conv2d_54_95088:
conv2d_54_95090:)
conv2d_55_95093:
conv2d_55_95095:)
conv2d_56_95099:
conv2d_56_95101:)
conv2d_57_95104:
conv2d_57_95106:)
conv2d_58_95110: 
conv2d_58_95112: )
conv2d_59_95115:  
conv2d_59_95117: )
conv2d_60_95121: @
conv2d_60_95123:@)
conv2d_61_95126:@@
conv2d_61_95128:@2
conv2d_transpose_9_95131: @&
conv2d_transpose_9_95133: )
conv2d_62_95137:@ 
conv2d_62_95139: )
conv2d_63_95142:  
conv2d_63_95144: 3
conv2d_transpose_10_95147: '
conv2d_transpose_10_95149:)
conv2d_64_95153: 
conv2d_64_95155:)
conv2d_65_95158:
conv2d_65_95160:3
conv2d_transpose_11_95163:'
conv2d_transpose_11_95165:)
conv2d_66_95169:
conv2d_66_95171:)
conv2d_67_95174:
conv2d_67_95176:3
conv2d_transpose_12_95179:'
conv2d_transpose_12_95181:)
conv2d_68_95185:
conv2d_68_95187:)
conv2d_69_95190:
conv2d_69_95192:)
conv2d_70_95195:|
conv2d_70_95197:|
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_52_95077conv2d_52_95079*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_94289?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_95082conv2d_53_95084*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_94306?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94056?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_54_95088conv2d_54_95090*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_94324?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_95093conv2d_55_95095*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_94341?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94068?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_56_95099conv2d_56_95101*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_94359?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_95104conv2d_57_95106*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_94376?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94080?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_58_95110conv2d_58_95112*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_94394?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_95115conv2d_59_95117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_94411?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_94092?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_60_95121conv2d_60_95123*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_94429?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_95126conv2d_61_95128*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_94446?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_transpose_9_95131conv2d_transpose_9_95133*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_94132?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_94464?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_62_95137conv2d_62_95139*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_94477?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_95142conv2d_63_95144*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_94494?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_transpose_10_95147conv2d_transpose_10_95149*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_94176?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_94512?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_64_95153conv2d_64_95155*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_94525?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_95158conv2d_65_95160*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_94542?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_transpose_11_95163conv2d_transpose_11_95165*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_94220?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_94560?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_66_95169conv2d_66_95171*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_94573?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_95174conv2d_67_95176*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_94590?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0conv2d_transpose_12_95179conv2d_transpose_12_95181*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_94264?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_94608?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_68_95185conv2d_68_95187*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_94621?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_95190conv2d_69_95192*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_94638?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0conv2d_70_95195conv2d_70_95197*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_94655?
IdentityIdentity*conv2d_70/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_94525

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_58_layer_call_fn_98009

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_94394w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_95647
input_7)
conv2d_52_95523:
conv2d_52_95525:)
conv2d_53_95528:
conv2d_53_95530:)
conv2d_54_95534:
conv2d_54_95536:)
conv2d_55_95539:
conv2d_55_95541:)
conv2d_56_95545:
conv2d_56_95547:)
conv2d_57_95550:
conv2d_57_95552:)
conv2d_58_95556: 
conv2d_58_95558: )
conv2d_59_95561:  
conv2d_59_95563: )
conv2d_60_95567: @
conv2d_60_95569:@)
conv2d_61_95572:@@
conv2d_61_95574:@2
conv2d_transpose_9_95577: @&
conv2d_transpose_9_95579: )
conv2d_62_95583:@ 
conv2d_62_95585: )
conv2d_63_95588:  
conv2d_63_95590: 3
conv2d_transpose_10_95593: '
conv2d_transpose_10_95595:)
conv2d_64_95599: 
conv2d_64_95601:)
conv2d_65_95604:
conv2d_65_95606:3
conv2d_transpose_11_95609:'
conv2d_transpose_11_95611:)
conv2d_66_95615:
conv2d_66_95617:)
conv2d_67_95620:
conv2d_67_95622:3
conv2d_transpose_12_95625:'
conv2d_transpose_12_95627:)
conv2d_68_95631:
conv2d_68_95633:)
conv2d_69_95636:
conv2d_69_95638:)
conv2d_70_95641:|
conv2d_70_95643:|
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinput_7conv2d_52_95523conv2d_52_95525*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_94289?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_95528conv2d_53_95530*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_94306?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94056?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_54_95534conv2d_54_95536*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_94324?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_95539conv2d_55_95541*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_94341?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94068?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_56_95545conv2d_56_95547*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_94359?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_95550conv2d_57_95552*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_94376?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94080?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_58_95556conv2d_58_95558*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_94394?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_95561conv2d_59_95563*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_94411?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_94092?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_60_95567conv2d_60_95569*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_94429?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_95572conv2d_61_95574*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_94446?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_transpose_9_95577conv2d_transpose_9_95579*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_94132?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_94464?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_62_95583conv2d_62_95585*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_94477?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_95588conv2d_63_95590*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_94494?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_transpose_10_95593conv2d_transpose_10_95595*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_94176?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*conv2d_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_94512?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_64_95599conv2d_64_95601*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_94525?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_95604conv2d_65_95606*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_94542?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_transpose_11_95609conv2d_transpose_11_95611*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_94220?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_94560?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_66_95615conv2d_66_95617*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_66_layer_call_and_return_conditional_losses_94573?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_95620conv2d_67_95622*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_67_layer_call_and_return_conditional_losses_94590?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0conv2d_transpose_12_95625conv2d_transpose_12_95627*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_94264?
concatenate_12/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_12_layer_call_and_return_conditional_losses_94608?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall'concatenate_12/PartitionedCall:output:0conv2d_68_95631conv2d_68_95633*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_68_layer_call_and_return_conditional_losses_94621?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_95636conv2d_69_95638*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_94638?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0conv2d_70_95641conv2d_70_95643*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_70_layer_call_and_return_conditional_losses_94655?
IdentityIdentity*conv2d_70/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_7
?
?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_97920

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_94621

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
]
A__inference_argmax_layer_call_and_return_conditional_losses_97850

inputs
identity	[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
ArgMaxArgMaxinputsArgMax/dimension:output:0*
T0*-
_output_shapes
:???????????]
IdentityIdentityArgMax:output:0*
T0	*-
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????|:Y U
1
_output_shapes
:???????????|
 
_user_specified_nameinputs
?
?
)__inference_conv2d_63_layer_call_fn_98174

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_94494w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_11_layer_call_fn_98289

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_94220?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_98375

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_15_layer_call_fn_97995

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94080?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_96344
model_2_input'
model_2_96249:
model_2_96251:'
model_2_96253:
model_2_96255:'
model_2_96257:
model_2_96259:'
model_2_96261:
model_2_96263:'
model_2_96265:
model_2_96267:'
model_2_96269:
model_2_96271:'
model_2_96273: 
model_2_96275: '
model_2_96277:  
model_2_96279: '
model_2_96281: @
model_2_96283:@'
model_2_96285:@@
model_2_96287:@'
model_2_96289: @
model_2_96291: '
model_2_96293:@ 
model_2_96295: '
model_2_96297:  
model_2_96299: '
model_2_96301: 
model_2_96303:'
model_2_96305: 
model_2_96307:'
model_2_96309:
model_2_96311:'
model_2_96313:
model_2_96315:'
model_2_96317:
model_2_96319:'
model_2_96321:
model_2_96323:'
model_2_96325:
model_2_96327:'
model_2_96329:
model_2_96331:'
model_2_96333:
model_2_96335:'
model_2_96337:|
model_2_96339:|
identity	??model_2/StatefulPartitionedCall?
model_2/StatefulPartitionedCallStatefulPartitionedCallmodel_2_inputmodel_2_96249model_2_96251model_2_96253model_2_96255model_2_96257model_2_96259model_2_96261model_2_96263model_2_96265model_2_96267model_2_96269model_2_96271model_2_96273model_2_96275model_2_96277model_2_96279model_2_96281model_2_96283model_2_96285model_2_96287model_2_96289model_2_96291model_2_96293model_2_96295model_2_96297model_2_96299model_2_96301model_2_96303model_2_96305model_2_96307model_2_96309model_2_96311model_2_96313model_2_96315model_2_96317model_2_96319model_2_96321model_2_96323model_2_96325model_2_96327model_2_96329model_2_96331model_2_96333model_2_96335model_2_96337model_2_96339*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_94662?
argmax/PartitionedCallPartitionedCall(model_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_95753t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????h
NoOpNoOp ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:` \
1
_output_shapes
:???????????
'
_user_specified_namemodel_2_input
?
?
)__inference_conv2d_69_layer_call_fn_98459

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_69_layer_call_and_return_conditional_losses_94638y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_98070

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_95851
model_2_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodel_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_95756u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
1
_output_shapes
:???????????
'
_user_specified_namemodel_2_input
?
?
)__inference_conv2d_64_layer_call_fn_98249

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_94525y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_98280

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94080

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_97940

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_96741

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_96054u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_55_layer_call_fn_97929

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_94341y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_98417

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_96644

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:???????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_95756u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_98020

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_61_layer_call_fn_98079

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_94446w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94056

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_97900

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_97292

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: $

unknown_13:  

unknown_14: $

unknown_15: @

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19: @

unknown_20: $

unknown_21:@ 

unknown_22: $

unknown_23:  

unknown_24: $

unknown_25: 

unknown_26:$

unknown_27: 

unknown_28:$

unknown_29:

unknown_30:$

unknown_31:

unknown_32:$

unknown_33:

unknown_34:$

unknown_35:

unknown_36:$

unknown_37:

unknown_38:$

unknown_39:

unknown_40:$

unknown_41:

unknown_42:$

unknown_43:|

unknown_44:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????|*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_94662y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_94655

inputs8
conv2d_readvariableop_resource:|-
biasadd_readvariableop_resource:|
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:|*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|`
SoftmaxSoftmaxBiasAdd:output:0*
T0*1
_output_shapes
:???????????|j
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*1
_output_shapes
:???????????|w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_94359

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
model_2_input@
serving_default_model_2_input:0???????????@
argmax6
StatefulPartitionedCall:0	???????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures"
_tf_keras_sequential
?

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer_with_weights-10
layer-15
layer-16
layer_with_weights-11
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer-20
 layer_with_weights-14
 layer-21
!layer_with_weights-15
!layer-22
"layer_with_weights-16
"layer-23
#layer-24
$layer_with_weights-17
$layer-25
%layer_with_weights-18
%layer-26
&layer_with_weights-19
&layer-27
'layer-28
(layer_with_weights-20
(layer-29
)layer_with_weights-21
)layer-30
*layer_with_weights-22
*layer-31
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1	optimizer
2
signatures
#3_self_saveable_object_factories"
_tf_keras_network
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45"
trackable_list_wrapper
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
mtrace_0
ntrace_1
otrace_2
ptrace_32?
*__inference_sequential_layer_call_fn_95851
*__inference_sequential_layer_call_fn_96644
*__inference_sequential_layer_call_fn_96741
*__inference_sequential_layer_call_fn_96246?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zmtrace_0zntrace_1zotrace_2zptrace_3
?
qtrace_0
rtrace_1
strace_2
ttrace_32?
E__inference_sequential_layer_call_and_return_conditional_losses_96968
E__inference_sequential_layer_call_and_return_conditional_losses_97195
E__inference_sequential_layer_call_and_return_conditional_losses_96344
E__inference_sequential_layer_call_and_return_conditional_losses_96442?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zqtrace_0zrtrace_1zstrace_2zttrace_3
?B?
 __inference__wrapped_model_94047model_2_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
userving_default"
signature_map
D
#v_self_saveable_object_factories"
_tf_keras_input_layer
?
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

:kernel
;bias
#}_self_saveable_object_factories
 ~_jit_compiled_convolution_op"
_tf_keras_layer
?
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

<kernel
=bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

>kernel
?bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

@kernel
Abias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Bkernel
Cbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Dkernel
Ebias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Fkernel
Gbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Hkernel
Ibias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Jkernel
Kbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Lkernel
Mbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Nkernel
Obias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Pkernel
Qbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Rkernel
Sbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Tkernel
Ubias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Vkernel
Wbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Xkernel
Ybias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

Zkernel
[bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

\kernel
]bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

^kernel
_bias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

`kernel
abias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
$?_self_saveable_object_factories"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

bkernel
cbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

dkernel
ebias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

fkernel
gbias
$?_self_saveable_object_factories
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45"
trackable_list_wrapper
?
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
T26
U27
V28
W29
X30
Y31
Z32
[33
\34
]35
^36
_37
`38
a39
b40
c41
d42
e43
f44
g45"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
'__inference_model_2_layer_call_fn_94757
'__inference_model_2_layer_call_fn_97292
'__inference_model_2_layer_call_fn_97389
'__inference_model_2_layer_call_fn_95393?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
B__inference_model_2_layer_call_and_return_conditional_losses_97614
B__inference_model_2_layer_call_and_return_conditional_losses_97839
B__inference_model_2_layer_call_and_return_conditional_losses_95520
B__inference_model_2_layer_call_and_return_conditional_losses_95647?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate:m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?_m?`m?am?bm?cm?dm?em?fm?gm?:v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?_v?`v?av?bv?cv?dv?ev?fv?gv?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
&__inference_argmax_layer_call_fn_97844?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
A__inference_argmax_layer_call_and_return_conditional_losses_97850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:(2conv2d_52/kernel
:2conv2d_52/bias
*:(2conv2d_53/kernel
:2conv2d_53/bias
*:(2conv2d_54/kernel
:2conv2d_54/bias
*:(2conv2d_55/kernel
:2conv2d_55/bias
*:(2conv2d_56/kernel
:2conv2d_56/bias
*:(2conv2d_57/kernel
:2conv2d_57/bias
*:( 2conv2d_58/kernel
: 2conv2d_58/bias
*:(  2conv2d_59/kernel
: 2conv2d_59/bias
*:( @2conv2d_60/kernel
:@2conv2d_60/bias
*:(@@2conv2d_61/kernel
:@2conv2d_61/bias
3:1 @2conv2d_transpose_9/kernel
%:# 2conv2d_transpose_9/bias
*:(@ 2conv2d_62/kernel
: 2conv2d_62/bias
*:(  2conv2d_63/kernel
: 2conv2d_63/bias
4:2 2conv2d_transpose_10/kernel
&:$2conv2d_transpose_10/bias
*:( 2conv2d_64/kernel
:2conv2d_64/bias
*:(2conv2d_65/kernel
:2conv2d_65/bias
4:22conv2d_transpose_11/kernel
&:$2conv2d_transpose_11/bias
*:(2conv2d_66/kernel
:2conv2d_66/bias
*:(2conv2d_67/kernel
:2conv2d_67/bias
4:22conv2d_transpose_12/kernel
&:$2conv2d_transpose_12/bias
*:(2conv2d_68/kernel
:2conv2d_68/bias
*:(2conv2d_69/kernel
:2conv2d_69/bias
*:(|2conv2d_70/kernel
:|2conv2d_70/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_sequential_layer_call_fn_95851model_2_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_sequential_layer_call_fn_96644inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_sequential_layer_call_fn_96741inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_sequential_layer_call_fn_96246model_2_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_96968inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_97195inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_96344model_2_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_96442model_2_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference_signature_wrapper_96541model_2_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_52_layer_call_fn_97859?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_97870?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_53_layer_call_fn_97879?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_97890?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_max_pooling2d_13_layer_call_fn_97895?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_97900?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_54_layer_call_fn_97909?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_97920?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_55_layer_call_fn_97929?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_97940?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_max_pooling2d_14_layer_call_fn_97945?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_97950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_56_layer_call_fn_97959?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_97970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_57_layer_call_fn_97979?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_97990?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_max_pooling2d_15_layer_call_fn_97995?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_98000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_58_layer_call_fn_98009?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_98020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_59_layer_call_fn_98029?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_98040?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_max_pooling2d_16_layer_call_fn_98045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98050?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_60_layer_call_fn_98059?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_98070?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_61_layer_call_fn_98079?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_98090?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_conv2d_transpose_9_layer_call_fn_98099?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_98132?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_concatenate_9_layer_call_fn_98138?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_concatenate_9_layer_call_and_return_conditional_losses_98145?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_62_layer_call_fn_98154?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_98165?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_63_layer_call_fn_98174?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_98185?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv2d_transpose_10_layer_call_fn_98194?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_98227?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_concatenate_10_layer_call_fn_98233?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_concatenate_10_layer_call_and_return_conditional_losses_98240?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_64_layer_call_fn_98249?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_98260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_65_layer_call_fn_98269?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_98280?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv2d_transpose_11_layer_call_fn_98289?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_98322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_concatenate_11_layer_call_fn_98328?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_concatenate_11_layer_call_and_return_conditional_losses_98335?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_66_layer_call_fn_98344?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_98355?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_67_layer_call_fn_98364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_98375?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv2d_transpose_12_layer_call_fn_98384?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_98417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_concatenate_12_layer_call_fn_98423?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_concatenate_12_layer_call_and_return_conditional_losses_98430?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_68_layer_call_fn_98439?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_98450?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_69_layer_call_fn_98459?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_98470?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv2d_70_layer_call_fn_98479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_98490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_dict_wrapper
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27
'28
(29
)30
*31"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_model_2_layer_call_fn_94757input_7"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_2_layer_call_fn_97292inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_2_layer_call_fn_97389inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_2_layer_call_fn_95393input_7"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_2_layer_call_and_return_conditional_losses_97614inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_2_layer_call_and_return_conditional_losses_97839inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_2_layer_call_and_return_conditional_losses_95520input_7"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_2_layer_call_and_return_conditional_losses_95647input_7"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
#__inference_signature_wrapper_58008input_7"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_argmax_layer_call_fn_97844inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_argmax_layer_call_and_return_conditional_losses_97850inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_52_layer_call_fn_97859inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_97870inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_53_layer_call_fn_97879inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_97890inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_max_pooling2d_13_layer_call_fn_97895inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_97900inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_54_layer_call_fn_97909inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_97920inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_55_layer_call_fn_97929inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_97940inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_max_pooling2d_14_layer_call_fn_97945inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_97950inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_56_layer_call_fn_97959inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_97970inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_57_layer_call_fn_97979inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_97990inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_max_pooling2d_15_layer_call_fn_97995inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_98000inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_58_layer_call_fn_98009inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_98020inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_59_layer_call_fn_98029inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_98040inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_max_pooling2d_16_layer_call_fn_98045inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98050inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_60_layer_call_fn_98059inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_98070inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_61_layer_call_fn_98079inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_98090inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_conv2d_transpose_9_layer_call_fn_98099inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_98132inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_concatenate_9_layer_call_fn_98138inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_concatenate_9_layer_call_and_return_conditional_losses_98145inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_62_layer_call_fn_98154inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_98165inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_63_layer_call_fn_98174inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_98185inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv2d_transpose_10_layer_call_fn_98194inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_98227inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_concatenate_10_layer_call_fn_98233inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_concatenate_10_layer_call_and_return_conditional_losses_98240inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_64_layer_call_fn_98249inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_98260inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_65_layer_call_fn_98269inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_98280inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv2d_transpose_11_layer_call_fn_98289inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_98322inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_concatenate_11_layer_call_fn_98328inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_concatenate_11_layer_call_and_return_conditional_losses_98335inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_66_layer_call_fn_98344inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_98355inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_67_layer_call_fn_98364inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_98375inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv2d_transpose_12_layer_call_fn_98384inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_98417inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_concatenate_12_layer_call_fn_98423inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_concatenate_12_layer_call_and_return_conditional_losses_98430inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_68_layer_call_fn_98439inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_68_layer_call_and_return_conditional_losses_98450inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_69_layer_call_fn_98459inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_69_layer_call_and_return_conditional_losses_98470inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv2d_70_layer_call_fn_98479inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv2d_70_layer_call_and_return_conditional_losses_98490inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
/:-2Adam/conv2d_52/kernel/m
!:2Adam/conv2d_52/bias/m
/:-2Adam/conv2d_53/kernel/m
!:2Adam/conv2d_53/bias/m
/:-2Adam/conv2d_54/kernel/m
!:2Adam/conv2d_54/bias/m
/:-2Adam/conv2d_55/kernel/m
!:2Adam/conv2d_55/bias/m
/:-2Adam/conv2d_56/kernel/m
!:2Adam/conv2d_56/bias/m
/:-2Adam/conv2d_57/kernel/m
!:2Adam/conv2d_57/bias/m
/:- 2Adam/conv2d_58/kernel/m
!: 2Adam/conv2d_58/bias/m
/:-  2Adam/conv2d_59/kernel/m
!: 2Adam/conv2d_59/bias/m
/:- @2Adam/conv2d_60/kernel/m
!:@2Adam/conv2d_60/bias/m
/:-@@2Adam/conv2d_61/kernel/m
!:@2Adam/conv2d_61/bias/m
8:6 @2 Adam/conv2d_transpose_9/kernel/m
*:( 2Adam/conv2d_transpose_9/bias/m
/:-@ 2Adam/conv2d_62/kernel/m
!: 2Adam/conv2d_62/bias/m
/:-  2Adam/conv2d_63/kernel/m
!: 2Adam/conv2d_63/bias/m
9:7 2!Adam/conv2d_transpose_10/kernel/m
+:)2Adam/conv2d_transpose_10/bias/m
/:- 2Adam/conv2d_64/kernel/m
!:2Adam/conv2d_64/bias/m
/:-2Adam/conv2d_65/kernel/m
!:2Adam/conv2d_65/bias/m
9:72!Adam/conv2d_transpose_11/kernel/m
+:)2Adam/conv2d_transpose_11/bias/m
/:-2Adam/conv2d_66/kernel/m
!:2Adam/conv2d_66/bias/m
/:-2Adam/conv2d_67/kernel/m
!:2Adam/conv2d_67/bias/m
9:72!Adam/conv2d_transpose_12/kernel/m
+:)2Adam/conv2d_transpose_12/bias/m
/:-2Adam/conv2d_68/kernel/m
!:2Adam/conv2d_68/bias/m
/:-2Adam/conv2d_69/kernel/m
!:2Adam/conv2d_69/bias/m
/:-|2Adam/conv2d_70/kernel/m
!:|2Adam/conv2d_70/bias/m
/:-2Adam/conv2d_52/kernel/v
!:2Adam/conv2d_52/bias/v
/:-2Adam/conv2d_53/kernel/v
!:2Adam/conv2d_53/bias/v
/:-2Adam/conv2d_54/kernel/v
!:2Adam/conv2d_54/bias/v
/:-2Adam/conv2d_55/kernel/v
!:2Adam/conv2d_55/bias/v
/:-2Adam/conv2d_56/kernel/v
!:2Adam/conv2d_56/bias/v
/:-2Adam/conv2d_57/kernel/v
!:2Adam/conv2d_57/bias/v
/:- 2Adam/conv2d_58/kernel/v
!: 2Adam/conv2d_58/bias/v
/:-  2Adam/conv2d_59/kernel/v
!: 2Adam/conv2d_59/bias/v
/:- @2Adam/conv2d_60/kernel/v
!:@2Adam/conv2d_60/bias/v
/:-@@2Adam/conv2d_61/kernel/v
!:@2Adam/conv2d_61/bias/v
8:6 @2 Adam/conv2d_transpose_9/kernel/v
*:( 2Adam/conv2d_transpose_9/bias/v
/:-@ 2Adam/conv2d_62/kernel/v
!: 2Adam/conv2d_62/bias/v
/:-  2Adam/conv2d_63/kernel/v
!: 2Adam/conv2d_63/bias/v
9:7 2!Adam/conv2d_transpose_10/kernel/v
+:)2Adam/conv2d_transpose_10/bias/v
/:- 2Adam/conv2d_64/kernel/v
!:2Adam/conv2d_64/bias/v
/:-2Adam/conv2d_65/kernel/v
!:2Adam/conv2d_65/bias/v
9:72!Adam/conv2d_transpose_11/kernel/v
+:)2Adam/conv2d_transpose_11/bias/v
/:-2Adam/conv2d_66/kernel/v
!:2Adam/conv2d_66/bias/v
/:-2Adam/conv2d_67/kernel/v
!:2Adam/conv2d_67/bias/v
9:72!Adam/conv2d_transpose_12/kernel/v
+:)2Adam/conv2d_transpose_12/bias/v
/:-2Adam/conv2d_68/kernel/v
!:2Adam/conv2d_68/bias/v
/:-2Adam/conv2d_69/kernel/v
!:2Adam/conv2d_69/bias/v
/:-|2Adam/conv2d_70/kernel/v
!:|2Adam/conv2d_70/bias/v?
 __inference__wrapped_model_94047?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefg@?=
6?3
1?.
model_2_input???????????
? "5?2
0
argmax&?#
argmax???????????	?
A__inference_argmax_layer_call_and_return_conditional_losses_97850h9?6
/?,
*?'
inputs???????????|
? "+?(
!?
0???????????	
? ?
&__inference_argmax_layer_call_fn_97844[9?6
/?,
*?'
inputs???????????|
? "????????????	?
I__inference_concatenate_10_layer_call_and_return_conditional_losses_98240?n?k
d?a
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
? "/?,
%?"
0??????????? 
? ?
.__inference_concatenate_10_layer_call_fn_98233?n?k
d?a
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
? ""???????????? ?
I__inference_concatenate_11_layer_call_and_return_conditional_losses_98335?n?k
d?a
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
? "/?,
%?"
0???????????
? ?
.__inference_concatenate_11_layer_call_fn_98328?n?k
d?a
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
? ""?????????????
I__inference_concatenate_12_layer_call_and_return_conditional_losses_98430?n?k
d?a
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
? "/?,
%?"
0???????????
? ?
.__inference_concatenate_12_layer_call_fn_98423?n?k
d?a
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
? ""?????????????
H__inference_concatenate_9_layer_call_and_return_conditional_losses_98145?j?g
`?]
[?X
*?'
inputs/0?????????@@ 
*?'
inputs/1?????????@@ 
? "-?*
#? 
0?????????@@@
? ?
-__inference_concatenate_9_layer_call_fn_98138?j?g
`?]
[?X
*?'
inputs/0?????????@@ 
*?'
inputs/1?????????@@ 
? " ??????????@@@?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_97870p:;9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_52_layer_call_fn_97859c:;9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_53_layer_call_and_return_conditional_losses_97890p<=9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_53_layer_call_fn_97879c<=9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_54_layer_call_and_return_conditional_losses_97920p>?9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_54_layer_call_fn_97909c>?9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_55_layer_call_and_return_conditional_losses_97940p@A9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_55_layer_call_fn_97929c@A9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_56_layer_call_and_return_conditional_losses_97970pBC9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_56_layer_call_fn_97959cBC9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_57_layer_call_and_return_conditional_losses_97990pDE9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_57_layer_call_fn_97979cDE9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_58_layer_call_and_return_conditional_losses_98020lFG7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@ 
? ?
)__inference_conv2d_58_layer_call_fn_98009_FG7?4
-?*
(?%
inputs?????????@@
? " ??????????@@ ?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_98040lHI7?4
-?*
(?%
inputs?????????@@ 
? "-?*
#? 
0?????????@@ 
? ?
)__inference_conv2d_59_layer_call_fn_98029_HI7?4
-?*
(?%
inputs?????????@@ 
? " ??????????@@ ?
D__inference_conv2d_60_layer_call_and_return_conditional_losses_98070lJK7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????  @
? ?
)__inference_conv2d_60_layer_call_fn_98059_JK7?4
-?*
(?%
inputs?????????   
? " ??????????  @?
D__inference_conv2d_61_layer_call_and_return_conditional_losses_98090lLM7?4
-?*
(?%
inputs?????????  @
? "-?*
#? 
0?????????  @
? ?
)__inference_conv2d_61_layer_call_fn_98079_LM7?4
-?*
(?%
inputs?????????  @
? " ??????????  @?
D__inference_conv2d_62_layer_call_and_return_conditional_losses_98165lPQ7?4
-?*
(?%
inputs?????????@@@
? "-?*
#? 
0?????????@@ 
? ?
)__inference_conv2d_62_layer_call_fn_98154_PQ7?4
-?*
(?%
inputs?????????@@@
? " ??????????@@ ?
D__inference_conv2d_63_layer_call_and_return_conditional_losses_98185lRS7?4
-?*
(?%
inputs?????????@@ 
? "-?*
#? 
0?????????@@ 
? ?
)__inference_conv2d_63_layer_call_fn_98174_RS7?4
-?*
(?%
inputs?????????@@ 
? " ??????????@@ ?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_98260pVW9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_64_layer_call_fn_98249cVW9?6
/?,
*?'
inputs??????????? 
? ""?????????????
D__inference_conv2d_65_layer_call_and_return_conditional_losses_98280pXY9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_65_layer_call_fn_98269cXY9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_66_layer_call_and_return_conditional_losses_98355p\]9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_66_layer_call_fn_98344c\]9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_67_layer_call_and_return_conditional_losses_98375p^_9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_67_layer_call_fn_98364c^_9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_68_layer_call_and_return_conditional_losses_98450pbc9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_68_layer_call_fn_98439cbc9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_69_layer_call_and_return_conditional_losses_98470pde9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_69_layer_call_fn_98459cde9?6
/?,
*?'
inputs???????????
? ""?????????????
D__inference_conv2d_70_layer_call_and_return_conditional_losses_98490pfg9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????|
? ?
)__inference_conv2d_70_layer_call_fn_98479cfg9?6
/?,
*?'
inputs???????????
? ""????????????|?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_98227?TUI?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
3__inference_conv2d_transpose_10_layer_call_fn_98194?TUI?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_98322?Z[I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
3__inference_conv2d_transpose_11_layer_call_fn_98289?Z[I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
N__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_98417?`aI?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
3__inference_conv2d_transpose_12_layer_call_fn_98384?`aI?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_98132?NOI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
2__inference_conv2d_transpose_9_layer_call_fn_98099?NOI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_97900?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_13_layer_call_fn_97895?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_97950?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_14_layer_call_fn_97945?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_98000?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_15_layer_call_fn_97995?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_98050?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_16_layer_call_fn_98045?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_model_2_layer_call_and_return_conditional_losses_95520?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgB??
8?5
+?(
input_7???????????
p 

 
? "/?,
%?"
0???????????|
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_95647?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgB??
8?5
+?(
input_7???????????
p

 
? "/?,
%?"
0???????????|
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_97614?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????|
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_97839?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????|
? ?
'__inference_model_2_layer_call_fn_94757?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgB??
8?5
+?(
input_7???????????
p 

 
? ""????????????|?
'__inference_model_2_layer_call_fn_95393?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgB??
8?5
+?(
input_7???????????
p

 
? ""????????????|?
'__inference_model_2_layer_call_fn_97292?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p 

 
? ""????????????|?
'__inference_model_2_layer_call_fn_97389?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p

 
? ""????????????|?
E__inference_sequential_layer_call_and_return_conditional_losses_96344?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgH?E
>?;
1?.
model_2_input???????????
p 

 
? "+?(
!?
0???????????	
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_96442?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgH?E
>?;
1?.
model_2_input???????????
p

 
? "+?(
!?
0???????????	
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_96968?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p 

 
? "+?(
!?
0???????????	
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_97195?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p

 
? "+?(
!?
0???????????	
? ?
*__inference_sequential_layer_call_fn_95851?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgH?E
>?;
1?.
model_2_input???????????
p 

 
? "????????????	?
*__inference_sequential_layer_call_fn_96246?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgH?E
>?;
1?.
model_2_input???????????
p

 
? "????????????	?
*__inference_sequential_layer_call_fn_96644?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p 

 
? "????????????	?
*__inference_sequential_layer_call_fn_96741?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgA?>
7?4
*?'
inputs???????????
p

 
? "????????????	?
#__inference_signature_wrapper_58008?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgE?B
? 
;?8
6
input_7+?(
input_7???????????"??<
:
	conv2d_70-?*
	conv2d_70???????????|?
#__inference_signature_wrapper_96541?.:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgQ?N
? 
G?D
B
model_2_input1?.
model_2_input???????????"5?2
0
argmax&?#
argmax???????????	