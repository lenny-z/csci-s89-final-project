¾
é¾

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
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
À
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

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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018±÷

Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*/
shared_name Adam/conv2d_transpose_2/bias/v

2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
:|*
dtype0
¤
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*1
shared_name" Adam/conv2d_transpose_2/kernel/v

4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*&
_output_shapes
:|*
dtype0

Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_1/bias/v

2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes
:*
dtype0
¤
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_1/kernel/v

4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/v

0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes
:*
dtype0
 
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose/kernel/v

2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*/
shared_name Adam/conv2d_transpose_2/bias/m

2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
:|*
dtype0
¤
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*1
shared_name" Adam/conv2d_transpose_2/kernel/m

4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*&
_output_shapes
:|*
dtype0

Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_1/bias/m

2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes
:*
dtype0
¤
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_1/kernel/m

4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/m

0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes
:*
dtype0
 
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose/kernel/m

2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
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

conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:|*
dtype0

conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:|**
shared_nameconv2d_transpose_2/kernel

-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:|*
dtype0

conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:*
dtype0

conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_1/kernel

-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
:*
dtype0

conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose/kernel

+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
¹t
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ôs
valueêsBçs Bàs
ñ
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
í
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	optimizer*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Z
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11*
Z
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11*
* 
°
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
+trace_0
,trace_1
-trace_2
.trace_3* 
6
/trace_0
0trace_1
1trace_2
2trace_3* 
* 

3serving_default* 
¬
4layer_with_weights-0
4layer-0
5layer-1
6layer_with_weights-1
6layer-2
7layer-3
8layer_with_weights-2
8layer-4
9layer-5
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*

@layer_with_weights-0
@layer-0
Alayer_with_weights-1
Alayer-1
Blayer_with_weights-2
Blayer-2
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses*
Z
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11*
Z
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11*
* 

Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
´
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_ratemümýmþmÿmm m!m"m#m$m%mvvvvvv v!v"v#v$v%v*
* 
* 
* 

[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

`trace_0* 

atrace_0* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEconv2d_transpose/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
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
È
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

kernel
bias
 h_jit_compiled_convolution_op*

i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
È
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

kernel
bias
 u_jit_compiled_convolution_op*

v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
Ë
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
Ï
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

 kernel
!bias
!_jit_compiled_convolution_op*
Ï
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses

"kernel
#bias
!£_jit_compiled_convolution_op*
Ï
¤	variables
¥trainable_variables
¦regularization_losses
§	keras_api
¨__call__
+©&call_and_return_all_conditional_losses

$kernel
%bias
!ª_jit_compiled_convolution_op*
.
 0
!1
"2
#3
$4
%5*
.
 0
!1
"2
#3
$4
%5*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*
:
°trace_0
±trace_1
²trace_2
³trace_3* 
:
´trace_0
µtrace_1
¶trace_2
·trace_3* 
* 

0
1*

¸0*
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

0
1*

0
1*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

¾trace_0* 

¿trace_0* 
* 
* 
* 
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

Åtrace_0* 

Ætrace_0* 

0
1*

0
1*
* 

Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

Ìtrace_0* 

Ítrace_0* 
* 
* 
* 
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

Ótrace_0* 

Ôtrace_0* 

0
1*

0
1*
* 

Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Útrace_0* 

Ûtrace_0* 
* 
* 
* 
* 

Ünon_trainable_variables
Ýlayers
Þmetrics
 ßlayer_regularization_losses
àlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

átrace_0* 

âtrace_0* 
* 
.
40
51
62
73
84
95*
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
 0
!1*

 0
!1*
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ètrace_0* 

étrace_0* 
* 

"0
#1*

"0
#1*
* 

ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses*

ïtrace_0* 

ðtrace_0* 
* 

$0
%1*

$0
%1*
* 

ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
õlayer_metrics
¤	variables
¥trainable_variables
¦regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses*

ötrace_0* 

÷trace_0* 
* 
* 

@0
A1
B2*
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
ø	variables
ù	keras_api

útotal

ûcount*
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

ú0
û1*

ø	variables*
hb
VARIABLE_VALUEtotalIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEcountIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d/kernel/mWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d/bias/mWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_1/kernel/mWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_1/bias/mWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_2/kernel/mWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_2/bias/mWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose/kernel/mWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose/bias/mWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d/kernel/vWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d/bias/vWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_1/kernel/vWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_1/bias/vWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_2/kernel/vWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_2/bias/vWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose/kernel/vWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose/bias/vWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_sequential_5_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ
Ñ
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_5_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/bias*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_47899
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
û
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOp0Adam/conv2d_transpose/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOp0Adam/conv2d_transpose/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_49011


StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/v*7
Tin0
.2,*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_49150Â
Þ
ë
E__inference_sequential_layer_call_and_return_conditional_losses_47658

inputs,
sequential_5_47624: 
sequential_5_47626:,
sequential_5_47628: 
sequential_5_47630:,
sequential_5_47632: 
sequential_5_47634:,
sequential_5_47636: 
sequential_5_47638:,
sequential_5_47640: 
sequential_5_47642:,
sequential_5_47644:| 
sequential_5_47646:|
identity	¢$sequential_5/StatefulPartitionedCallæ
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallinputssequential_5_47624sequential_5_47626sequential_5_47628sequential_5_47630sequential_5_47632sequential_5_47634sequential_5_47636sequential_5_47638sequential_5_47640sequential_5_47642sequential_5_47644sequential_5_47646*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47413ã
argmax/PartitionedCallPartitionedCall-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_47655t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
NoOpNoOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
I
-__inference_max_pooling2d_layer_call_fn_48665

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_46847
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
]
A__inference_argmax_layer_call_and_return_conditional_losses_47655

inputs
identity	[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿk
ArgMaxArgMaxinputsArgMax/dimension:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityArgMax:output:0*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ|:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
 
_user_specified_nameinputs

÷
E__inference_sequential_layer_call_and_return_conditional_losses_47868
sequential_5_input,
sequential_5_47841: 
sequential_5_47843:,
sequential_5_47845: 
sequential_5_47847:,
sequential_5_47849: 
sequential_5_47851:,
sequential_5_47853: 
sequential_5_47855:,
sequential_5_47857: 
sequential_5_47859:,
sequential_5_47861:| 
sequential_5_47863:|
identity	¢$sequential_5/StatefulPartitionedCallò
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallsequential_5_inputsequential_5_47841sequential_5_47843sequential_5_47845sequential_5_47847sequential_5_47849sequential_5_47851sequential_5_47853sequential_5_47855sequential_5_47857sequential_5_47859sequential_5_47861sequential_5_47863*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47501ã
argmax/PartitionedCallPartitionedCall-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_47655t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
NoOpNoOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_5_input
Á	
£
,__inference_sequential_3_layer_call_fn_47054
conv2d_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_47022w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameconv2d_input
á
â
*__inference_sequential_layer_call_fn_47685
sequential_5_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity	¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallsequential_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_47658u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_5_input
¯	

,__inference_sequential_4_layer_call_fn_48495

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:|
	unknown_4:|
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47256y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
í
ä
,__inference_sequential_5_layer_call_fn_47557
sequential_3_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47501y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_3_input
ó

(__inference_conv2d_2_layer_call_fn_48709

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_46928y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_48730

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
§
2__inference_conv2d_transpose_2_layer_call_fn_48825

inputs!
unknown:|
	unknown_0:|
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_47226
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_46871

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
K
/__inference_max_pooling2d_1_layer_call_fn_48695

inputs
identityÛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_46859
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
G__inference_sequential_4_layer_call_and_return_conditional_losses_47309

inputs0
conv2d_transpose_47293:$
conv2d_transpose_47295:2
conv2d_transpose_1_47298:&
conv2d_transpose_1_47300:2
conv2d_transpose_2_47303:|&
conv2d_transpose_2_47305:|
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCall
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_47293conv2d_transpose_47295*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_47136Í
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_47298conv2d_transpose_1_47300*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_47181Ï
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_47303conv2d_transpose_2_47305*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_47226
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Ë
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_46859

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_2_layer_call_and_return_conditional_losses_46928

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß	
­
,__inference_sequential_4_layer_call_fn_47341
conv2d_transpose_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:|
	unknown_4:|
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47309y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
0
_user_specified_nameconv2d_transpose_input

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_48700

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°"

G__inference_sequential_3_layer_call_and_return_conditional_losses_48478

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Å
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ç
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides
w
IdentityIdentity max_pooling2d_2/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
ä
,__inference_sequential_5_layer_call_fn_47440
sequential_3_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47413y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_3_input
¯	

,__inference_sequential_3_layer_call_fn_48405

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_46936w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¡
G__inference_sequential_3_layer_call_and_return_conditional_losses_47022

inputs&
conv2d_47003:
conv2d_47005:(
conv2d_1_47009:
conv2d_1_47011:(
conv2d_2_47015:
conv2d_2_47017:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCallò
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_47003conv2d_47005*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_46892ï
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_46847
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_47009conv2d_1_47011*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_46910õ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_46859
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_47015conv2d_2_47017*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_46928ó
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_46871
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@­
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
B
&__inference_argmax_layer_call_fn_48382

inputs
identity	µ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_47655f
IdentityIdentityPartitionedCall:output:0*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ|:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
 
_user_specified_nameinputs

¡
G__inference_sequential_3_layer_call_and_return_conditional_losses_46936

inputs&
conv2d_46893:
conv2d_46895:(
conv2d_1_46911:
conv2d_1_46913:(
conv2d_2_46929:
conv2d_2_46931:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCallò
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_46893conv2d_46895*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_46892ï
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_46847
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_46911conv2d_1_46913*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_46910õ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_46859
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_46929conv2d_2_46931*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_46928ó
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_46871
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@­
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
ë
E__inference_sequential_layer_call_and_return_conditional_losses_47752

inputs,
sequential_5_47725: 
sequential_5_47727:,
sequential_5_47729: 
sequential_5_47731:,
sequential_5_47733: 
sequential_5_47735:,
sequential_5_47737: 
sequential_5_47739:,
sequential_5_47741: 
sequential_5_47743:,
sequential_5_47745:| 
sequential_5_47747:|
identity	¢$sequential_5/StatefulPartitionedCallæ
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallinputssequential_5_47725sequential_5_47727sequential_5_47729sequential_5_47731sequential_5_47733sequential_5_47735sequential_5_47737sequential_5_47739sequential_5_47741sequential_5_47743sequential_5_47745sequential_5_47747*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47501ã
argmax/PartitionedCallPartitionedCall-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_47655t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
NoOpNoOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô]
÷
__inference__traced_save_49011
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop6
2savev2_conv2d_transpose_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¬
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Õ
valueËBÈ,B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÅ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B »
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*×
_input_shapesÅ
Â: :::::::::::|:|: : : : : : : :::::::::::|:|:::::::::::|:|: 2(
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
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:|: 

_output_shapes
:|:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:|: 

_output_shapes
:|:, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:|: +

_output_shapes
:|:,

_output_shapes
: 
¨
§
G__inference_sequential_3_layer_call_and_return_conditional_losses_47076
conv2d_input&
conv2d_47057:
conv2d_47059:(
conv2d_1_47063:
conv2d_1_47065:(
conv2d_2_47069:
conv2d_2_47071:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCallø
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_47057conv2d_47059*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_46892ï
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_46847
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_47063conv2d_1_47065*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_46910õ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_46859
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_47069conv2d_2_47071*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_46928ó
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_46871
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@­
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:_ [
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameconv2d_input
°

G__inference_sequential_5_layer_call_and_return_conditional_losses_47501

inputs,
sequential_3_47474: 
sequential_3_47476:,
sequential_3_47478: 
sequential_3_47480:,
sequential_3_47482: 
sequential_3_47484:,
sequential_4_47487: 
sequential_4_47489:,
sequential_4_47491: 
sequential_4_47493:,
sequential_4_47495:| 
sequential_4_47497:|
identity¢$sequential_3/StatefulPartitionedCall¢$sequential_4/StatefulPartitionedCallà
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinputssequential_3_47474sequential_3_47476sequential_3_47478sequential_3_47480sequential_3_47482sequential_3_47484*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_47022
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_47487sequential_4_47489sequential_4_47491sequential_4_47493sequential_4_47495sequential_4_47497*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47309
IdentityIdentity-sequential_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_1_layer_call_and_return_conditional_losses_48690

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_2_layer_call_and_return_conditional_losses_48720

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È!

M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_48859

inputsB
(conv2d_transpose_readvariableop_resource:|-
biasadd_readvariableop_resource:|
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
value	B :|y
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|p
SoftmaxSoftmaxBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|z
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹°
«
!__inference__traced_restore_49150
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel:.
 assignvariableop_3_conv2d_1_bias:<
"assignvariableop_4_conv2d_2_kernel:.
 assignvariableop_5_conv2d_2_bias:D
*assignvariableop_6_conv2d_transpose_kernel:6
(assignvariableop_7_conv2d_transpose_bias:F
,assignvariableop_8_conv2d_transpose_1_kernel:8
*assignvariableop_9_conv2d_transpose_1_bias:G
-assignvariableop_10_conv2d_transpose_2_kernel:|9
+assignvariableop_11_conv2d_transpose_2_bias:|'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: B
(assignvariableop_19_adam_conv2d_kernel_m:4
&assignvariableop_20_adam_conv2d_bias_m:D
*assignvariableop_21_adam_conv2d_1_kernel_m:6
(assignvariableop_22_adam_conv2d_1_bias_m:D
*assignvariableop_23_adam_conv2d_2_kernel_m:6
(assignvariableop_24_adam_conv2d_2_bias_m:L
2assignvariableop_25_adam_conv2d_transpose_kernel_m:>
0assignvariableop_26_adam_conv2d_transpose_bias_m:N
4assignvariableop_27_adam_conv2d_transpose_1_kernel_m:@
2assignvariableop_28_adam_conv2d_transpose_1_bias_m:N
4assignvariableop_29_adam_conv2d_transpose_2_kernel_m:|@
2assignvariableop_30_adam_conv2d_transpose_2_bias_m:|B
(assignvariableop_31_adam_conv2d_kernel_v:4
&assignvariableop_32_adam_conv2d_bias_v:D
*assignvariableop_33_adam_conv2d_1_kernel_v:6
(assignvariableop_34_adam_conv2d_1_bias_v:D
*assignvariableop_35_adam_conv2d_2_kernel_v:6
(assignvariableop_36_adam_conv2d_2_bias_v:L
2assignvariableop_37_adam_conv2d_transpose_kernel_v:>
0assignvariableop_38_adam_conv2d_transpose_bias_v:N
4assignvariableop_39_adam_conv2d_transpose_1_kernel_v:@
2assignvariableop_40_adam_conv2d_transpose_1_bias_v:N
4assignvariableop_41_adam_conv2d_transpose_2_kernel_v:|@
2assignvariableop_42_adam_conv2d_transpose_2_bias_v:|
identity_44¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¯
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*Õ
valueËBÈ,B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÈ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ý
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Æ
_output_shapes³
°::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp*assignvariableop_6_conv2d_transpose_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp(assignvariableop_7_conv2d_transpose_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp,assignvariableop_8_conv2d_transpose_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_conv2d_transpose_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp-assignvariableop_10_conv2d_transpose_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp+assignvariableop_11_conv2d_transpose_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv2d_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_conv2d_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_conv2d_transpose_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_conv2d_transpose_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_conv2d_transpose_1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_conv2d_transpose_1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_conv2d_transpose_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_conv2d_transpose_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv2d_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_conv2d_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_37AssignVariableOp2assignvariableop_37_adam_conv2d_transpose_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_38AssignVariableOp0assignvariableop_38_adam_conv2d_transpose_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_conv2d_transpose_1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_conv2d_transpose_1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_conv2d_transpose_2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_conv2d_transpose_2_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: î
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
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
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
°

G__inference_sequential_5_layer_call_and_return_conditional_losses_47413

inputs,
sequential_3_47386: 
sequential_3_47388:,
sequential_3_47390: 
sequential_3_47392:,
sequential_3_47394: 
sequential_3_47396:,
sequential_4_47399: 
sequential_4_47401:,
sequential_4_47403: 
sequential_4_47405:,
sequential_4_47407:| 
sequential_4_47409:|
identity¢$sequential_3/StatefulPartitionedCall¢$sequential_4/StatefulPartitionedCallà
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallinputssequential_3_47386sequential_3_47388sequential_3_47390sequential_3_47392sequential_3_47394sequential_3_47396*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_46936
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_47399sequential_4_47401sequential_4_47403sequential_4_47405sequential_4_47407sequential_4_47409*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47256
IdentityIdentity-sequential_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á!

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_47136

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
K
/__inference_max_pooling2d_2_layer_call_fn_48725

inputs
identityÛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_46871
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
§
G__inference_sequential_3_layer_call_and_return_conditional_losses_47098
conv2d_input&
conv2d_47079:
conv2d_47081:(
conv2d_1_47085:
conv2d_1_47087:(
conv2d_2_47091:
conv2d_2_47093:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCallø
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_47079conv2d_47081*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_46892ï
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_46847
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_47085conv2d_1_47087*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_46910õ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_46859
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_47091conv2d_2_47093*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_46928ó
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_46871
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@­
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:_ [
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameconv2d_input
°"

G__inference_sequential_3_layer_call_and_return_conditional_losses_48450

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Å
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ç
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides
w
IdentityIdentity max_pooling2d_2/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Û
#__inference_signature_wrapper_47899
sequential_5_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity	¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallsequential_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_46838u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_5_input
¡
ì
E__inference_sequential_layer_call_and_return_conditional_losses_48053

inputsY
?sequential_5_sequential_3_conv2d_conv2d_readvariableop_resource:N
@sequential_5_sequential_3_conv2d_biasadd_readvariableop_resource:[
Asequential_5_sequential_3_conv2d_1_conv2d_readvariableop_resource:P
Bsequential_5_sequential_3_conv2d_1_biasadd_readvariableop_resource:[
Asequential_5_sequential_3_conv2d_2_conv2d_readvariableop_resource:P
Bsequential_5_sequential_3_conv2d_2_biasadd_readvariableop_resource:m
Ssequential_5_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource:X
Jsequential_5_sequential_4_conv2d_transpose_biasadd_readvariableop_resource:o
Usequential_5_sequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:Z
Lsequential_5_sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource:o
Usequential_5_sequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|Z
Lsequential_5_sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource:|
identity	¢7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp¢6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp¢9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp¢8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp¢9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp¢8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp¢Asequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp¢Jsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp¢Csequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp¢Lsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢Csequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp¢Lsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¾
6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_5_sequential_3_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ý
'sequential_5/sequential_3/conv2d/Conv2DConv2Dinputs>sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
´
7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_5_sequential_3_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0â
(sequential_5/sequential_3/conv2d/BiasAddBiasAdd0sequential_5/sequential_3/conv2d/Conv2D:output:0?sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_5/sequential_3/conv2d/ReluRelu1sequential_5/sequential_3/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
/sequential_5/sequential_3/max_pooling2d/MaxPoolMaxPool3sequential_5/sequential_3/conv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Â
8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
)sequential_5/sequential_3/conv2d_1/Conv2DConv2D8sequential_5/sequential_3/max_pooling2d/MaxPool:output:0@sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¸
9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0è
*sequential_5/sequential_3/conv2d_1/BiasAddBiasAdd2sequential_5/sequential_3/conv2d_1/Conv2D:output:0Asequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'sequential_5/sequential_3/conv2d_1/ReluRelu3sequential_5/sequential_3/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
1sequential_5/sequential_3/max_pooling2d_1/MaxPoolMaxPool5sequential_5/sequential_3/conv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Â
8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
)sequential_5/sequential_3/conv2d_2/Conv2DConv2D:sequential_5/sequential_3/max_pooling2d_1/MaxPool:output:0@sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¸
9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0è
*sequential_5/sequential_3/conv2d_2/BiasAddBiasAdd2sequential_5/sequential_3/conv2d_2/Conv2D:output:0Asequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'sequential_5/sequential_3/conv2d_2/ReluRelu3sequential_5/sequential_3/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
1sequential_5/sequential_3/max_pooling2d_2/MaxPoolMaxPool5sequential_5/sequential_3/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides

0sequential_5/sequential_4/conv2d_transpose/ShapeShape:sequential_5/sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:
>sequential_5/sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_5/sequential_4/conv2d_transpose/strided_sliceStridedSlice9sequential_5/sequential_4/conv2d_transpose/Shape:output:0Gsequential_5/sequential_4/conv2d_transpose/strided_slice/stack:output:0Isequential_5/sequential_4/conv2d_transpose/strided_slice/stack_1:output:0Isequential_5/sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
2sequential_5/sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :u
2sequential_5/sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :t
2sequential_5/sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :à
0sequential_5/sequential_4/conv2d_transpose/stackPackAsequential_5/sequential_4/conv2d_transpose/strided_slice:output:0;sequential_5/sequential_4/conv2d_transpose/stack/1:output:0;sequential_5/sequential_4/conv2d_transpose/stack/2:output:0;sequential_5/sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:
@sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
:sequential_5/sequential_4/conv2d_transpose/strided_slice_1StridedSlice9sequential_5/sequential_4/conv2d_transpose/stack:output:0Isequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack:output:0Ksequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0Ksequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskæ
Jsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpSsequential_5_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
;sequential_5/sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput9sequential_5/sequential_4/conv2d_transpose/stack:output:0Rsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0:sequential_5/sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
È
Asequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpJsequential_5_sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
2sequential_5/sequential_4/conv2d_transpose/BiasAddBiasAddDsequential_5/sequential_4/conv2d_transpose/conv2d_transpose:output:0Isequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
/sequential_5/sequential_4/conv2d_transpose/ReluRelu;sequential_5/sequential_4/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_5/sequential_4/conv2d_transpose_1/ShapeShape=sequential_5/sequential_4/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:
@sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_5/sequential_4/conv2d_transpose_1/strided_sliceStridedSlice;sequential_5/sequential_4/conv2d_transpose_1/Shape:output:0Isequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_1:output:0Ksequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
4sequential_5/sequential_4/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :w
4sequential_5/sequential_4/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :v
4sequential_5/sequential_4/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ê
2sequential_5/sequential_4/conv2d_transpose_1/stackPackCsequential_5/sequential_4/conv2d_transpose_1/strided_slice:output:0=sequential_5/sequential_4/conv2d_transpose_1/stack/1:output:0=sequential_5/sequential_4/conv2d_transpose_1/stack/2:output:0=sequential_5/sequential_4/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
Bsequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
<sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1StridedSlice;sequential_5/sequential_4/conv2d_transpose_1/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack:output:0Msequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_1:output:0Msequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskê
Lsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpUsequential_5_sequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
=sequential_5/sequential_4/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput;sequential_5/sequential_4/conv2d_transpose_1/stack:output:0Tsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0=sequential_5/sequential_4/conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Ì
Csequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpLsequential_5_sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
4sequential_5/sequential_4/conv2d_transpose_1/BiasAddBiasAddFsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose:output:0Ksequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
1sequential_5/sequential_4/conv2d_transpose_1/ReluRelu=sequential_5/sequential_4/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
2sequential_5/sequential_4/conv2d_transpose_2/ShapeShape?sequential_5/sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:
@sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_5/sequential_4/conv2d_transpose_2/strided_sliceStridedSlice;sequential_5/sequential_4/conv2d_transpose_2/Shape:output:0Isequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_1:output:0Ksequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
4sequential_5/sequential_4/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :w
4sequential_5/sequential_4/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :v
4sequential_5/sequential_4/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|ê
2sequential_5/sequential_4/conv2d_transpose_2/stackPackCsequential_5/sequential_4/conv2d_transpose_2/strided_slice:output:0=sequential_5/sequential_4/conv2d_transpose_2/stack/1:output:0=sequential_5/sequential_4/conv2d_transpose_2/stack/2:output:0=sequential_5/sequential_4/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
Bsequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
<sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1StridedSlice;sequential_5/sequential_4/conv2d_transpose_2/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack:output:0Msequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_1:output:0Msequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskê
Lsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpUsequential_5_sequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0
=sequential_5/sequential_4/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput;sequential_5/sequential_4/conv2d_transpose_2/stack:output:0Tsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0?sequential_5/sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
Ì
Csequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpLsequential_5_sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
4sequential_5/sequential_4/conv2d_transpose_2/BiasAddBiasAddFsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose:output:0Ksequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|º
4sequential_5/sequential_4/conv2d_transpose_2/SoftmaxSoftmax=sequential_5/sequential_4/conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|b
argmax/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
argmax/ArgMaxArgMax>sequential_5/sequential_4/conv2d_transpose_2/Softmax:softmax:0 argmax/ArgMax/dimension:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityargmax/ArgMax:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp8^sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp7^sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp:^sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp9^sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp:^sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp9^sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpB^sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpK^sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpD^sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpM^sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpD^sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpM^sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2r
7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp2p
6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp2v
9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp2v
9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp2
Asequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpAsequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2
Jsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpJsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2
Csequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpCsequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp2
Lsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpLsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2
Csequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpCsequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp2
Lsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpLsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾´
Û
 __inference__wrapped_model_46838
sequential_5_inputd
Jsequential_sequential_5_sequential_3_conv2d_conv2d_readvariableop_resource:Y
Ksequential_sequential_5_sequential_3_conv2d_biasadd_readvariableop_resource:f
Lsequential_sequential_5_sequential_3_conv2d_1_conv2d_readvariableop_resource:[
Msequential_sequential_5_sequential_3_conv2d_1_biasadd_readvariableop_resource:f
Lsequential_sequential_5_sequential_3_conv2d_2_conv2d_readvariableop_resource:[
Msequential_sequential_5_sequential_3_conv2d_2_biasadd_readvariableop_resource:x
^sequential_sequential_5_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource:c
Usequential_sequential_5_sequential_4_conv2d_transpose_biasadd_readvariableop_resource:z
`sequential_sequential_5_sequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:e
Wsequential_sequential_5_sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource:z
`sequential_sequential_5_sequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|e
Wsequential_sequential_5_sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource:|
identity	¢Bsequential/sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp¢Asequential/sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp¢Dsequential/sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp¢Csequential/sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp¢Dsequential/sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp¢Csequential/sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp¢Lsequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp¢Usequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp¢Nsequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp¢Wsequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢Nsequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp¢Wsequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpÔ
Asequential/sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOpReadVariableOpJsequential_sequential_5_sequential_3_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ÿ
2sequential/sequential_5/sequential_3/conv2d/Conv2DConv2Dsequential_5_inputIsequential/sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Ê
Bsequential/sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOpReadVariableOpKsequential_sequential_5_sequential_3_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
3sequential/sequential_5/sequential_3/conv2d/BiasAddBiasAdd;sequential/sequential_5/sequential_3/conv2d/Conv2D:output:0Jsequential/sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
0sequential/sequential_5/sequential_3/conv2d/ReluRelu<sequential/sequential_5/sequential_3/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
:sequential/sequential_5/sequential_3/max_pooling2d/MaxPoolMaxPool>sequential/sequential_5/sequential_3/conv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Ø
Csequential/sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpLsequential_sequential_5_sequential_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0´
4sequential/sequential_5/sequential_3/conv2d_1/Conv2DConv2DCsequential/sequential_5/sequential_3/max_pooling2d/MaxPool:output:0Ksequential/sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Î
Dsequential/sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpMsequential_sequential_5_sequential_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
5sequential/sequential_5/sequential_3/conv2d_1/BiasAddBiasAdd=sequential/sequential_5/sequential_3/conv2d_1/Conv2D:output:0Lsequential/sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
2sequential/sequential_5/sequential_3/conv2d_1/ReluRelu>sequential/sequential_5/sequential_3/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
<sequential/sequential_5/sequential_3/max_pooling2d_1/MaxPoolMaxPool@sequential/sequential_5/sequential_3/conv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Ø
Csequential/sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOpLsequential_sequential_5_sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¶
4sequential/sequential_5/sequential_3/conv2d_2/Conv2DConv2DEsequential/sequential_5/sequential_3/max_pooling2d_1/MaxPool:output:0Ksequential/sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Î
Dsequential/sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpMsequential_sequential_5_sequential_3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
5sequential/sequential_5/sequential_3/conv2d_2/BiasAddBiasAdd=sequential/sequential_5/sequential_3/conv2d_2/Conv2D:output:0Lsequential/sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
2sequential/sequential_5/sequential_3/conv2d_2/ReluRelu>sequential/sequential_5/sequential_3/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
<sequential/sequential_5/sequential_3/max_pooling2d_2/MaxPoolMaxPool@sequential/sequential_5/sequential_3/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides
°
;sequential/sequential_5/sequential_4/conv2d_transpose/ShapeShapeEsequential/sequential_5/sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:
Isequential/sequential_5/sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ksequential/sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ksequential/sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ß
Csequential/sequential_5/sequential_4/conv2d_transpose/strided_sliceStridedSliceDsequential/sequential_5/sequential_4/conv2d_transpose/Shape:output:0Rsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice/stack:output:0Tsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_1:output:0Tsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
=sequential/sequential_5/sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :
=sequential/sequential_5/sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :
=sequential/sequential_5/sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :
;sequential/sequential_5/sequential_4/conv2d_transpose/stackPackLsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice:output:0Fsequential/sequential_5/sequential_4/conv2d_transpose/stack/1:output:0Fsequential/sequential_5/sequential_4/conv2d_transpose/stack/2:output:0Fsequential/sequential_5/sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:
Ksequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Msequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Msequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
Esequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1StridedSliceDsequential/sequential_5/sequential_4/conv2d_transpose/stack:output:0Tsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskü
Usequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp^sequential_sequential_5_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0­
Fsequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInputDsequential/sequential_5/sequential_4/conv2d_transpose/stack:output:0]sequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Esequential/sequential_5/sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Þ
Lsequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpUsequential_sequential_5_sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0«
=sequential/sequential_5/sequential_4/conv2d_transpose/BiasAddBiasAddOsequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose:output:0Tsequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
:sequential/sequential_5/sequential_4/conv2d_transpose/ReluReluFsequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
=sequential/sequential_5/sequential_4/conv2d_transpose_1/ShapeShapeHsequential/sequential_5/sequential_4/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:
Ksequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Msequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Msequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
Esequential/sequential_5/sequential_4/conv2d_transpose_1/strided_sliceStridedSliceFsequential/sequential_5/sequential_4/conv2d_transpose_1/Shape:output:0Tsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_1:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?sequential/sequential_5/sequential_4/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :
?sequential/sequential_5/sequential_4/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :
?sequential/sequential_5/sequential_4/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :¡
=sequential/sequential_5/sequential_4/conv2d_transpose_1/stackPackNsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice:output:0Hsequential/sequential_5/sequential_4/conv2d_transpose_1/stack/1:output:0Hsequential/sequential_5/sequential_4/conv2d_transpose_1/stack/2:output:0Hsequential/sequential_5/sequential_4/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
Msequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Osequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Osequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
Gsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1StridedSliceFsequential/sequential_5/sequential_4/conv2d_transpose_1/stack:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack:output:0Xsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_1:output:0Xsequential/sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Wsequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp`sequential_sequential_5_sequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0¶
Hsequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transposeConv2DBackpropInputFsequential/sequential_5/sequential_4/conv2d_transpose_1/stack:output:0_sequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Hsequential/sequential_5/sequential_4/conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
â
Nsequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpWsequential_sequential_5_sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0±
?sequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAddBiasAddQsequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
<sequential/sequential_5/sequential_4/conv2d_transpose_1/ReluReluHsequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
=sequential/sequential_5/sequential_4/conv2d_transpose_2/ShapeShapeJsequential/sequential_5/sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:
Ksequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Msequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Msequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
Esequential/sequential_5/sequential_4/conv2d_transpose_2/strided_sliceStridedSliceFsequential/sequential_5/sequential_4/conv2d_transpose_2/Shape:output:0Tsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_1:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?sequential/sequential_5/sequential_4/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :
?sequential/sequential_5/sequential_4/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :
?sequential/sequential_5/sequential_4/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|¡
=sequential/sequential_5/sequential_4/conv2d_transpose_2/stackPackNsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice:output:0Hsequential/sequential_5/sequential_4/conv2d_transpose_2/stack/1:output:0Hsequential/sequential_5/sequential_4/conv2d_transpose_2/stack/2:output:0Hsequential/sequential_5/sequential_4/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
Msequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Osequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Osequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
Gsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1StridedSliceFsequential/sequential_5/sequential_4/conv2d_transpose_2/stack:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack:output:0Xsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_1:output:0Xsequential/sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Wsequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp`sequential_sequential_5_sequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0¸
Hsequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transposeConv2DBackpropInputFsequential/sequential_5/sequential_4/conv2d_transpose_2/stack:output:0_sequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0Jsequential/sequential_5/sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
â
Nsequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpWsequential_sequential_5_sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0±
?sequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAddBiasAddQsequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose:output:0Vsequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Ð
?sequential/sequential_5/sequential_4/conv2d_transpose_2/SoftmaxSoftmaxHsequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|m
"sequential/argmax/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÒ
sequential/argmax/ArgMaxArgMaxIsequential/sequential_5/sequential_4/conv2d_transpose_2/Softmax:softmax:0+sequential/argmax/ArgMax/dimension:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity!sequential/argmax/ArgMax:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOpC^sequential/sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOpB^sequential/sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOpE^sequential/sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOpD^sequential/sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOpE^sequential/sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOpD^sequential/sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpM^sequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpV^sequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpO^sequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpX^sequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpO^sequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpX^sequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2
Bsequential/sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOpBsequential/sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp2
Asequential/sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOpAsequential/sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp2
Dsequential/sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOpDsequential/sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp2
Csequential/sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOpCsequential/sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp2
Dsequential/sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOpDsequential/sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp2
Csequential/sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpCsequential/sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp2
Lsequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpLsequential/sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2®
Usequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpUsequential/sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2 
Nsequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpNsequential/sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp2²
Wsequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpWsequential/sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2 
Nsequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpNsequential/sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp2²
Wsequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpWsequential/sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_5_input
á
â
*__inference_sequential_layer_call_fn_47808
sequential_5_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity	¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallsequential_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_47752u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_5_input
È!

M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_47226

inputsB
(conv2d_transpose_readvariableop_resource:|-
biasadd_readvariableop_resource:|
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
value	B :|y
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|p
SoftmaxSoftmaxBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|z
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¶
G__inference_sequential_5_layer_call_and_return_conditional_losses_48289

inputsL
2sequential_3_conv2d_conv2d_readvariableop_resource:A
3sequential_3_conv2d_biasadd_readvariableop_resource:N
4sequential_3_conv2d_1_conv2d_readvariableop_resource:C
5sequential_3_conv2d_1_biasadd_readvariableop_resource:N
4sequential_3_conv2d_2_conv2d_readvariableop_resource:C
5sequential_3_conv2d_2_biasadd_readvariableop_resource:`
Fsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource:K
=sequential_4_conv2d_transpose_biasadd_readvariableop_resource:b
Hsequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:M
?sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource:b
Hsequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|M
?sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource:|
identity¢*sequential_3/conv2d/BiasAdd/ReadVariableOp¢)sequential_3/conv2d/Conv2D/ReadVariableOp¢,sequential_3/conv2d_1/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_1/Conv2D/ReadVariableOp¢,sequential_3/conv2d_2/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_2/Conv2D/ReadVariableOp¢4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¤
)sequential_3/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_3_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ã
sequential_3/conv2d/Conv2DConv2Dinputs1sequential_3/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

*sequential_3/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_3_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_3/conv2d/BiasAddBiasAdd#sequential_3/conv2d/Conv2D:output:02sequential_3/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d/ReluRelu$sequential_3/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"sequential_3/max_pooling2d/MaxPoolMaxPool&sequential_3/conv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¨
+sequential_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ì
sequential_3/conv2d_1/Conv2DConv2D+sequential_3/max_pooling2d/MaxPool:output:03sequential_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

,sequential_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
sequential_3/conv2d_1/BiasAddBiasAdd%sequential_3/conv2d_1/Conv2D:output:04sequential_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_1/ReluRelu&sequential_3/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$sequential_3/max_pooling2d_1/MaxPoolMaxPool(sequential_3/conv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¨
+sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0î
sequential_3/conv2d_2/Conv2DConv2D-sequential_3/max_pooling2d_1/MaxPool:output:03sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

,sequential_3/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
sequential_3/conv2d_2/BiasAddBiasAdd%sequential_3/conv2d_2/Conv2D:output:04sequential_3/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_2/ReluRelu&sequential_3/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
$sequential_3/max_pooling2d_2/MaxPoolMaxPool(sequential_3/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides

#sequential_4/conv2d_transpose/ShapeShape-sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:{
1sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+sequential_4/conv2d_transpose/strided_sliceStridedSlice,sequential_4/conv2d_transpose/Shape:output:0:sequential_4/conv2d_transpose/strided_slice/stack:output:0<sequential_4/conv2d_transpose/strided_slice/stack_1:output:0<sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
%sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :h
%sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :g
%sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :
#sequential_4/conv2d_transpose/stackPack4sequential_4/conv2d_transpose/strided_slice:output:0.sequential_4/conv2d_transpose/stack/1:output:0.sequential_4/conv2d_transpose/stack/2:output:0.sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
-sequential_4/conv2d_transpose/strided_slice_1StridedSlice,sequential_4/conv2d_transpose/stack:output:0<sequential_4/conv2d_transpose/strided_slice_1/stack:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÌ
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Í
.sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_4/conv2d_transpose/stack:output:0Esequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
®
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ã
%sequential_4/conv2d_transpose/BiasAddBiasAdd7sequential_4/conv2d_transpose/conv2d_transpose:output:0<sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential_4/conv2d_transpose/ReluRelu.sequential_4/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_4/conv2d_transpose_1/ShapeShape0sequential_4/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_4/conv2d_transpose_1/strided_sliceStridedSlice.sequential_4/conv2d_transpose_1/Shape:output:0<sequential_4/conv2d_transpose_1/strided_slice/stack:output:0>sequential_4/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
'sequential_4/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :j
'sequential_4/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :i
'sequential_4/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :©
%sequential_4/conv2d_transpose_1/stackPack6sequential_4/conv2d_transpose_1/strided_slice:output:00sequential_4/conv2d_transpose_1/stack/1:output:00sequential_4/conv2d_transpose_1/stack/2:output:00sequential_4/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_4/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_4/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_4/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_1/stack:output:0>sequential_4/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ö
0sequential_4/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_1/stack:output:0Gsequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_4/conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
²
6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0é
'sequential_4/conv2d_transpose_1/BiasAddBiasAdd9sequential_4/conv2d_transpose_1/conv2d_transpose:output:0>sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$sequential_4/conv2d_transpose_1/ReluRelu0sequential_4/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_4/conv2d_transpose_2/ShapeShape2sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_4/conv2d_transpose_2/strided_sliceStridedSlice.sequential_4/conv2d_transpose_2/Shape:output:0<sequential_4/conv2d_transpose_2/strided_slice/stack:output:0>sequential_4/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
'sequential_4/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :j
'sequential_4/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :i
'sequential_4/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|©
%sequential_4/conv2d_transpose_2/stackPack6sequential_4/conv2d_transpose_2/strided_slice:output:00sequential_4/conv2d_transpose_2/stack/1:output:00sequential_4/conv2d_transpose_2/stack/2:output:00sequential_4/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_4/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_4/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_4/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_2/stack:output:0>sequential_4/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0Ø
0sequential_4/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_2/stack:output:0Gsequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
²
6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0é
'sequential_4/conv2d_transpose_2/BiasAddBiasAdd9sequential_4/conv2d_transpose_2/conv2d_transpose:output:0>sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ| 
'sequential_4/conv2d_transpose_2/SoftmaxSoftmax0sequential_4/conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
IdentityIdentity1sequential_4/conv2d_transpose_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Æ
NoOpNoOp+^sequential_3/conv2d/BiasAdd/ReadVariableOp*^sequential_3/conv2d/Conv2D/ReadVariableOp-^sequential_3/conv2d_1/BiasAdd/ReadVariableOp,^sequential_3/conv2d_1/Conv2D/ReadVariableOp-^sequential_3/conv2d_2/BiasAdd/ReadVariableOp,^sequential_3/conv2d_2/Conv2D/ReadVariableOp5^sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2X
*sequential_3/conv2d/BiasAdd/ReadVariableOp*sequential_3/conv2d/BiasAdd/ReadVariableOp2V
)sequential_3/conv2d/Conv2D/ReadVariableOp)sequential_3/conv2d/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_1/BiasAdd/ReadVariableOp,sequential_3/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_1/Conv2D/ReadVariableOp+sequential_3/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_2/BiasAdd/ReadVariableOp,sequential_3/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_2/Conv2D/ReadVariableOp+sequential_3/conv2d_2/Conv2D/ReadVariableOp2l
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

(__inference_conv2d_1_layer_call_fn_48679

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_46910y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
îS
Ì
G__inference_sequential_4_layer_call_and_return_conditional_losses_48576

inputsS
9conv2d_transpose_conv2d_transpose_readvariableop_resource:>
0conv2d_transpose_biasadd_readvariableop_resource:U
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_1_biasadd_readvariableop_resource:U
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|@
2conv2d_transpose_2_biasadd_readvariableop_resource:|
identity¢'conv2d_transpose/BiasAdd/ReadVariableOp¢0conv2d_transpose/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_2/BiasAdd/ReadVariableOp¢2conv2d_transpose_2/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :[
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Þ
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:®
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ÿ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¼
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :è
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0¢
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :\
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|è
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0¤
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides

)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0Â
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
conv2d_transpose_2/SoftmaxSoftmax#conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|}
IdentityIdentity$conv2d_transpose_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|å
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
¯	

,__inference_sequential_3_layer_call_fn_48422

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_47022w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Ö
*__inference_sequential_layer_call_fn_47963

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity	¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_47752u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
G__inference_sequential_4_layer_call_and_return_conditional_losses_47256

inputs0
conv2d_transpose_47240:$
conv2d_transpose_47242:2
conv2d_transpose_1_47245:&
conv2d_transpose_1_47247:2
conv2d_transpose_2_47250:|&
conv2d_transpose_2_47252:|
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCall
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_47240conv2d_transpose_47242*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_47136Í
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_47245conv2d_transpose_1_47247*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_47181Ï
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_47250conv2d_transpose_2_47252*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_47226
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Ë
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs

ü
C__inference_conv2d_1_layer_call_and_return_conditional_losses_46910

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß	
­
,__inference_sequential_4_layer_call_fn_47271
conv2d_transpose_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:|
	unknown_4:|
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47256y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
0
_user_specified_nameconv2d_transpose_input

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_46847

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
¥
0__inference_conv2d_transpose_layer_call_fn_48739

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_47136
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã!

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_47181

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
 
G__inference_sequential_5_layer_call_and_return_conditional_losses_47587
sequential_3_input,
sequential_3_47560: 
sequential_3_47562:,
sequential_3_47564: 
sequential_3_47566:,
sequential_3_47568: 
sequential_3_47570:,
sequential_4_47573: 
sequential_4_47575:,
sequential_4_47577: 
sequential_4_47579:,
sequential_4_47581:| 
sequential_4_47583:|
identity¢$sequential_3/StatefulPartitionedCall¢$sequential_4/StatefulPartitionedCallì
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputsequential_3_47560sequential_3_47562sequential_3_47564sequential_3_47566sequential_3_47568sequential_3_47570*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_46936
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_47573sequential_4_47575sequential_4_47577sequential_4_47579sequential_4_47581sequential_4_47583*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47256
IdentityIdentity-sequential_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_3_input
Á	
£
,__inference_sequential_3_layer_call_fn_46951
conv2d_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_46936w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_nameconv2d_input

ú
A__inference_conv2d_layer_call_and_return_conditional_losses_48660

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï

&__inference_conv2d_layer_call_fn_48649

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_46892y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

G__inference_sequential_4_layer_call_and_return_conditional_losses_47379
conv2d_transpose_input0
conv2d_transpose_47363:$
conv2d_transpose_47365:2
conv2d_transpose_1_47368:&
conv2d_transpose_1_47370:2
conv2d_transpose_2_47373:|&
conv2d_transpose_2_47375:|
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCallª
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputconv2d_transpose_47363conv2d_transpose_47365*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_47136Í
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_47368conv2d_transpose_1_47370*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_47181Ï
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_47373conv2d_transpose_2_47375*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_47226
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Ë
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:g c
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
0
_user_specified_nameconv2d_transpose_input
½
Ö
*__inference_sequential_layer_call_fn_47934

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity	¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_47658u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã!

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_48816

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

÷
E__inference_sequential_layer_call_and_return_conditional_losses_47838
sequential_5_input,
sequential_5_47811: 
sequential_5_47813:,
sequential_5_47815: 
sequential_5_47817:,
sequential_5_47819: 
sequential_5_47821:,
sequential_5_47823: 
sequential_5_47825:,
sequential_5_47827: 
sequential_5_47829:,
sequential_5_47831:| 
sequential_5_47833:|
identity	¢$sequential_5/StatefulPartitionedCallò
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallsequential_5_inputsequential_5_47811sequential_5_47813sequential_5_47815sequential_5_47817sequential_5_47819sequential_5_47821sequential_5_47823sequential_5_47825sequential_5_47827sequential_5_47829sequential_5_47831sequential_5_47833*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47413ã
argmax/PartitionedCallPartitionedCall-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2	*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_argmax_layer_call_and_return_conditional_losses_47655t
IdentityIdentityargmax/PartitionedCall:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
NoOpNoOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_5_input

¶
G__inference_sequential_5_layer_call_and_return_conditional_losses_48377

inputsL
2sequential_3_conv2d_conv2d_readvariableop_resource:A
3sequential_3_conv2d_biasadd_readvariableop_resource:N
4sequential_3_conv2d_1_conv2d_readvariableop_resource:C
5sequential_3_conv2d_1_biasadd_readvariableop_resource:N
4sequential_3_conv2d_2_conv2d_readvariableop_resource:C
5sequential_3_conv2d_2_biasadd_readvariableop_resource:`
Fsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource:K
=sequential_4_conv2d_transpose_biasadd_readvariableop_resource:b
Hsequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:M
?sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource:b
Hsequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|M
?sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource:|
identity¢*sequential_3/conv2d/BiasAdd/ReadVariableOp¢)sequential_3/conv2d/Conv2D/ReadVariableOp¢,sequential_3/conv2d_1/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_1/Conv2D/ReadVariableOp¢,sequential_3/conv2d_2/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_2/Conv2D/ReadVariableOp¢4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¤
)sequential_3/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_3_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ã
sequential_3/conv2d/Conv2DConv2Dinputs1sequential_3/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

*sequential_3/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_3_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_3/conv2d/BiasAddBiasAdd#sequential_3/conv2d/Conv2D:output:02sequential_3/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d/ReluRelu$sequential_3/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"sequential_3/max_pooling2d/MaxPoolMaxPool&sequential_3/conv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¨
+sequential_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ì
sequential_3/conv2d_1/Conv2DConv2D+sequential_3/max_pooling2d/MaxPool:output:03sequential_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

,sequential_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
sequential_3/conv2d_1/BiasAddBiasAdd%sequential_3/conv2d_1/Conv2D:output:04sequential_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_1/ReluRelu&sequential_3/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$sequential_3/max_pooling2d_1/MaxPoolMaxPool(sequential_3/conv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¨
+sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0î
sequential_3/conv2d_2/Conv2DConv2D-sequential_3/max_pooling2d_1/MaxPool:output:03sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

,sequential_3/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
sequential_3/conv2d_2/BiasAddBiasAdd%sequential_3/conv2d_2/Conv2D:output:04sequential_3/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_2/ReluRelu&sequential_3/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
$sequential_3/max_pooling2d_2/MaxPoolMaxPool(sequential_3/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides

#sequential_4/conv2d_transpose/ShapeShape-sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:{
1sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+sequential_4/conv2d_transpose/strided_sliceStridedSlice,sequential_4/conv2d_transpose/Shape:output:0:sequential_4/conv2d_transpose/strided_slice/stack:output:0<sequential_4/conv2d_transpose/strided_slice/stack_1:output:0<sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
%sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :h
%sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :g
%sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :
#sequential_4/conv2d_transpose/stackPack4sequential_4/conv2d_transpose/strided_slice:output:0.sequential_4/conv2d_transpose/stack/1:output:0.sequential_4/conv2d_transpose/stack/2:output:0.sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
-sequential_4/conv2d_transpose/strided_slice_1StridedSlice,sequential_4/conv2d_transpose/stack:output:0<sequential_4/conv2d_transpose/strided_slice_1/stack:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÌ
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Í
.sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_4/conv2d_transpose/stack:output:0Esequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
®
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ã
%sequential_4/conv2d_transpose/BiasAddBiasAdd7sequential_4/conv2d_transpose/conv2d_transpose:output:0<sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential_4/conv2d_transpose/ReluRelu.sequential_4/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_4/conv2d_transpose_1/ShapeShape0sequential_4/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_4/conv2d_transpose_1/strided_sliceStridedSlice.sequential_4/conv2d_transpose_1/Shape:output:0<sequential_4/conv2d_transpose_1/strided_slice/stack:output:0>sequential_4/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
'sequential_4/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :j
'sequential_4/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :i
'sequential_4/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :©
%sequential_4/conv2d_transpose_1/stackPack6sequential_4/conv2d_transpose_1/strided_slice:output:00sequential_4/conv2d_transpose_1/stack/1:output:00sequential_4/conv2d_transpose_1/stack/2:output:00sequential_4/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_4/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_4/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_4/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_1/stack:output:0>sequential_4/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ö
0sequential_4/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_1/stack:output:0Gsequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_4/conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
²
6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0é
'sequential_4/conv2d_transpose_1/BiasAddBiasAdd9sequential_4/conv2d_transpose_1/conv2d_transpose:output:0>sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$sequential_4/conv2d_transpose_1/ReluRelu0sequential_4/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_4/conv2d_transpose_2/ShapeShape2sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_4/conv2d_transpose_2/strided_sliceStridedSlice.sequential_4/conv2d_transpose_2/Shape:output:0<sequential_4/conv2d_transpose_2/strided_slice/stack:output:0>sequential_4/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
'sequential_4/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :j
'sequential_4/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :i
'sequential_4/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|©
%sequential_4/conv2d_transpose_2/stackPack6sequential_4/conv2d_transpose_2/strided_slice:output:00sequential_4/conv2d_transpose_2/stack/1:output:00sequential_4/conv2d_transpose_2/stack/2:output:00sequential_4/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7sequential_4/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_4/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_4/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_2/stack:output:0>sequential_4/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÐ
?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0Ø
0sequential_4/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_2/stack:output:0Gsequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
²
6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0é
'sequential_4/conv2d_transpose_2/BiasAddBiasAdd9sequential_4/conv2d_transpose_2/conv2d_transpose:output:0>sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ| 
'sequential_4/conv2d_transpose_2/SoftmaxSoftmax0sequential_4/conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
IdentityIdentity1sequential_4/conv2d_transpose_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Æ
NoOpNoOp+^sequential_3/conv2d/BiasAdd/ReadVariableOp*^sequential_3/conv2d/Conv2D/ReadVariableOp-^sequential_3/conv2d_1/BiasAdd/ReadVariableOp,^sequential_3/conv2d_1/Conv2D/ReadVariableOp-^sequential_3/conv2d_2/BiasAdd/ReadVariableOp,^sequential_3/conv2d_2/Conv2D/ReadVariableOp5^sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2X
*sequential_3/conv2d/BiasAdd/ReadVariableOp*sequential_3/conv2d/BiasAdd/ReadVariableOp2V
)sequential_3/conv2d/Conv2D/ReadVariableOp)sequential_3/conv2d/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_1/BiasAdd/ReadVariableOp,sequential_3/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_1/Conv2D/ReadVariableOp+sequential_3/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_2/BiasAdd/ReadVariableOp,sequential_3/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_2/Conv2D/ReadVariableOp+sequential_3/conv2d_2/Conv2D/ReadVariableOp2l
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
]
A__inference_argmax_layer_call_and_return_conditional_losses_48388

inputs
identity	[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿk
ArgMaxArgMaxinputsArgMax/dimension:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityArgMax:output:0*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ|:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
 
_user_specified_nameinputs
¯	

,__inference_sequential_4_layer_call_fn_48512

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:|
	unknown_4:|
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47309y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
îS
Ì
G__inference_sequential_4_layer_call_and_return_conditional_losses_48640

inputsS
9conv2d_transpose_conv2d_transpose_readvariableop_resource:>
0conv2d_transpose_biasadd_readvariableop_resource:U
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_1_biasadd_readvariableop_resource:U
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|@
2conv2d_transpose_2_biasadd_readvariableop_resource:|
identity¢'conv2d_transpose/BiasAdd/ReadVariableOp¢0conv2d_transpose/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_2/BiasAdd/ReadVariableOp¢2conv2d_transpose_2/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :[
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Þ
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:®
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0ÿ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¼
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :è
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0¢
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :\
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|è
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¶
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0¤
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides

)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0Â
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
conv2d_transpose_2/SoftmaxSoftmax#conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|}
IdentityIdentity$conv2d_transpose_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|å
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
²

G__inference_sequential_4_layer_call_and_return_conditional_losses_47360
conv2d_transpose_input0
conv2d_transpose_47344:$
conv2d_transpose_47346:2
conv2d_transpose_1_47349:&
conv2d_transpose_1_47351:2
conv2d_transpose_2_47354:|&
conv2d_transpose_2_47356:|
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCallª
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputconv2d_transpose_47344conv2d_transpose_47346*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_47136Í
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_47349conv2d_transpose_1_47351*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_47181Ï
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_47354conv2d_transpose_2_47356*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_47226
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|Ë
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ@@: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:g c
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
0
_user_specified_nameconv2d_transpose_input
É
Ø
,__inference_sequential_5_layer_call_fn_48201

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47501y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_48670

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ú
A__inference_conv2d_layer_call_and_return_conditional_losses_46892

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
ì
E__inference_sequential_layer_call_and_return_conditional_losses_48143

inputsY
?sequential_5_sequential_3_conv2d_conv2d_readvariableop_resource:N
@sequential_5_sequential_3_conv2d_biasadd_readvariableop_resource:[
Asequential_5_sequential_3_conv2d_1_conv2d_readvariableop_resource:P
Bsequential_5_sequential_3_conv2d_1_biasadd_readvariableop_resource:[
Asequential_5_sequential_3_conv2d_2_conv2d_readvariableop_resource:P
Bsequential_5_sequential_3_conv2d_2_biasadd_readvariableop_resource:m
Ssequential_5_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource:X
Jsequential_5_sequential_4_conv2d_transpose_biasadd_readvariableop_resource:o
Usequential_5_sequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:Z
Lsequential_5_sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource:o
Usequential_5_sequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:|Z
Lsequential_5_sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource:|
identity	¢7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp¢6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp¢9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp¢8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp¢9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp¢8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp¢Asequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp¢Jsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp¢Csequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp¢Lsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢Csequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp¢Lsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¾
6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_5_sequential_3_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ý
'sequential_5/sequential_3/conv2d/Conv2DConv2Dinputs>sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
´
7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_5_sequential_3_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0â
(sequential_5/sequential_3/conv2d/BiasAddBiasAdd0sequential_5/sequential_3/conv2d/Conv2D:output:0?sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_5/sequential_3/conv2d/ReluRelu1sequential_5/sequential_3/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
/sequential_5/sequential_3/max_pooling2d/MaxPoolMaxPool3sequential_5/sequential_3/conv2d/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Â
8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
)sequential_5/sequential_3/conv2d_1/Conv2DConv2D8sequential_5/sequential_3/max_pooling2d/MaxPool:output:0@sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¸
9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0è
*sequential_5/sequential_3/conv2d_1/BiasAddBiasAdd2sequential_5/sequential_3/conv2d_1/Conv2D:output:0Asequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'sequential_5/sequential_3/conv2d_1/ReluRelu3sequential_5/sequential_3/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
1sequential_5/sequential_3/max_pooling2d_1/MaxPoolMaxPool5sequential_5/sequential_3/conv2d_1/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Â
8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
)sequential_5/sequential_3/conv2d_2/Conv2DConv2D:sequential_5/sequential_3/max_pooling2d_1/MaxPool:output:0@sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¸
9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0è
*sequential_5/sequential_3/conv2d_2/BiasAddBiasAdd2sequential_5/sequential_3/conv2d_2/Conv2D:output:0Asequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'sequential_5/sequential_3/conv2d_2/ReluRelu3sequential_5/sequential_3/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
1sequential_5/sequential_3/max_pooling2d_2/MaxPoolMaxPool5sequential_5/sequential_3/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
ksize
*
paddingVALID*
strides

0sequential_5/sequential_4/conv2d_transpose/ShapeShape:sequential_5/sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:
>sequential_5/sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_5/sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_5/sequential_4/conv2d_transpose/strided_sliceStridedSlice9sequential_5/sequential_4/conv2d_transpose/Shape:output:0Gsequential_5/sequential_4/conv2d_transpose/strided_slice/stack:output:0Isequential_5/sequential_4/conv2d_transpose/strided_slice/stack_1:output:0Isequential_5/sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
2sequential_5/sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value
B :u
2sequential_5/sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value
B :t
2sequential_5/sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :à
0sequential_5/sequential_4/conv2d_transpose/stackPackAsequential_5/sequential_4/conv2d_transpose/strided_slice:output:0;sequential_5/sequential_4/conv2d_transpose/stack/1:output:0;sequential_5/sequential_4/conv2d_transpose/stack/2:output:0;sequential_5/sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:
@sequential_5/sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
:sequential_5/sequential_4/conv2d_transpose/strided_slice_1StridedSlice9sequential_5/sequential_4/conv2d_transpose/stack:output:0Isequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack:output:0Ksequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0Ksequential_5/sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskæ
Jsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpSsequential_5_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
;sequential_5/sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput9sequential_5/sequential_4/conv2d_transpose/stack:output:0Rsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0:sequential_5/sequential_3/max_pooling2d_2/MaxPool:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
È
Asequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpJsequential_5_sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
2sequential_5/sequential_4/conv2d_transpose/BiasAddBiasAddDsequential_5/sequential_4/conv2d_transpose/conv2d_transpose:output:0Isequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
/sequential_5/sequential_4/conv2d_transpose/ReluRelu;sequential_5/sequential_4/conv2d_transpose/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_5/sequential_4/conv2d_transpose_1/ShapeShape=sequential_5/sequential_4/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:
@sequential_5/sequential_4/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_5/sequential_4/conv2d_transpose_1/strided_sliceStridedSlice;sequential_5/sequential_4/conv2d_transpose_1/Shape:output:0Isequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_1:output:0Ksequential_5/sequential_4/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
4sequential_5/sequential_4/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value
B :w
4sequential_5/sequential_4/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value
B :v
4sequential_5/sequential_4/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ê
2sequential_5/sequential_4/conv2d_transpose_1/stackPackCsequential_5/sequential_4/conv2d_transpose_1/strided_slice:output:0=sequential_5/sequential_4/conv2d_transpose_1/stack/1:output:0=sequential_5/sequential_4/conv2d_transpose_1/stack/2:output:0=sequential_5/sequential_4/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
Bsequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
<sequential_5/sequential_4/conv2d_transpose_1/strided_slice_1StridedSlice;sequential_5/sequential_4/conv2d_transpose_1/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack:output:0Msequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_1:output:0Msequential_5/sequential_4/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskê
Lsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpUsequential_5_sequential_4_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0
=sequential_5/sequential_4/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput;sequential_5/sequential_4/conv2d_transpose_1/stack:output:0Tsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0=sequential_5/sequential_4/conv2d_transpose/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
Ì
Csequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpLsequential_5_sequential_4_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
4sequential_5/sequential_4/conv2d_transpose_1/BiasAddBiasAddFsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose:output:0Ksequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
1sequential_5/sequential_4/conv2d_transpose_1/ReluRelu=sequential_5/sequential_4/conv2d_transpose_1/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
2sequential_5/sequential_4/conv2d_transpose_2/ShapeShape?sequential_5/sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:
@sequential_5/sequential_4/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_5/sequential_4/conv2d_transpose_2/strided_sliceStridedSlice;sequential_5/sequential_4/conv2d_transpose_2/Shape:output:0Isequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_1:output:0Ksequential_5/sequential_4/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
4sequential_5/sequential_4/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value
B :w
4sequential_5/sequential_4/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :v
4sequential_5/sequential_4/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :|ê
2sequential_5/sequential_4/conv2d_transpose_2/stackPackCsequential_5/sequential_4/conv2d_transpose_2/strided_slice:output:0=sequential_5/sequential_4/conv2d_transpose_2/stack/1:output:0=sequential_5/sequential_4/conv2d_transpose_2/stack/2:output:0=sequential_5/sequential_4/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
Bsequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
<sequential_5/sequential_4/conv2d_transpose_2/strided_slice_1StridedSlice;sequential_5/sequential_4/conv2d_transpose_2/stack:output:0Ksequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack:output:0Msequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_1:output:0Msequential_5/sequential_4/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskê
Lsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpUsequential_5_sequential_4_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:|*
dtype0
=sequential_5/sequential_4/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput;sequential_5/sequential_4/conv2d_transpose_2/stack:output:0Tsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0?sequential_5/sequential_4/conv2d_transpose_1/Relu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*
paddingSAME*
strides
Ì
Csequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpLsequential_5_sequential_4_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
4sequential_5/sequential_4/conv2d_transpose_2/BiasAddBiasAddFsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose:output:0Ksequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|º
4sequential_5/sequential_4/conv2d_transpose_2/SoftmaxSoftmax=sequential_5/sequential_4/conv2d_transpose_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|b
argmax/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
argmax/ArgMaxArgMax>sequential_5/sequential_4/conv2d_transpose_2/Softmax:softmax:0 argmax/ArgMax/dimension:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityargmax/ArgMax:output:0^NoOp*
T0	*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp8^sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp7^sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp:^sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp9^sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp:^sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp9^sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOpB^sequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpK^sequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpD^sequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpM^sequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpD^sequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpM^sequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2r
7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp7sequential_5/sequential_3/conv2d/BiasAdd/ReadVariableOp2p
6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp6sequential_5/sequential_3/conv2d/Conv2D/ReadVariableOp2v
9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp9sequential_5/sequential_3/conv2d_1/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp8sequential_5/sequential_3/conv2d_1/Conv2D/ReadVariableOp2v
9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp9sequential_5/sequential_3/conv2d_2/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp8sequential_5/sequential_3/conv2d_2/Conv2D/ReadVariableOp2
Asequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpAsequential_5/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2
Jsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpJsequential_5/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2
Csequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOpCsequential_5/sequential_4/conv2d_transpose_1/BiasAdd/ReadVariableOp2
Lsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOpLsequential_5/sequential_4/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2
Csequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOpCsequential_5/sequential_4/conv2d_transpose_2/BiasAdd/ReadVariableOp2
Lsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOpLsequential_5/sequential_4/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
Ø
,__inference_sequential_5_layer_call_fn_48172

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:|

unknown_10:|
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_47413y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
 
G__inference_sequential_5_layer_call_and_return_conditional_losses_47617
sequential_3_input,
sequential_3_47590: 
sequential_3_47592:,
sequential_3_47594: 
sequential_3_47596:,
sequential_3_47598: 
sequential_3_47600:,
sequential_4_47603: 
sequential_4_47605:,
sequential_4_47607: 
sequential_4_47609:,
sequential_4_47611:| 
sequential_4_47613:|
identity¢$sequential_3/StatefulPartitionedCall¢$sequential_4/StatefulPartitionedCallì
$sequential_3/StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputsequential_3_47590sequential_3_47592sequential_3_47594sequential_3_47596sequential_3_47598sequential_3_47600*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_47022
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_47603sequential_4_47605sequential_4_47607sequential_4_47609sequential_4_47611sequential_4_47613*
Tin
	2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_47309
IdentityIdentity-sequential_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
NoOpNoOp%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : 2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_3_input
È
§
2__inference_conv2d_transpose_1_layer_call_fn_48782

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_47181
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á!

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_48773

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOp;
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
valueB:Ñ
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
valueB:Ù
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
valueB:Ù
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
valueB:Ù
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0Ü
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ï
serving_default»
[
sequential_5_inputE
$serving_default_sequential_5_input:0ÿÿÿÿÿÿÿÿÿ@
argmax6
StatefulPartitionedCall:0	ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:

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

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	optimizer"
_tf_keras_sequential
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
v
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11"
trackable_list_wrapper
v
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Þ
+trace_0
,trace_1
-trace_2
.trace_32ó
*__inference_sequential_layer_call_fn_47685
*__inference_sequential_layer_call_fn_47934
*__inference_sequential_layer_call_fn_47963
*__inference_sequential_layer_call_fn_47808À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z+trace_0z,trace_1z-trace_2z.trace_3
Ê
/trace_0
0trace_1
1trace_2
2trace_32ß
E__inference_sequential_layer_call_and_return_conditional_losses_48053
E__inference_sequential_layer_call_and_return_conditional_losses_48143
E__inference_sequential_layer_call_and_return_conditional_losses_47838
E__inference_sequential_layer_call_and_return_conditional_losses_47868À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z/trace_0z0trace_1z1trace_2z2trace_3
ÖBÓ
 __inference__wrapped_model_46838sequential_5_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
3serving_default"
signature_map
Æ
4layer_with_weights-0
4layer-0
5layer-1
6layer_with_weights-1
6layer-2
7layer-3
8layer_with_weights-2
8layer-4
9layer-5
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_sequential

@layer_with_weights-0
@layer-0
Alayer_with_weights-1
Alayer-1
Blayer_with_weights-2
Blayer-2
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_sequential
v
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11"
trackable_list_wrapper
v
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
æ
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32û
,__inference_sequential_5_layer_call_fn_47440
,__inference_sequential_5_layer_call_fn_48172
,__inference_sequential_5_layer_call_fn_48201
,__inference_sequential_5_layer_call_fn_47557À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
Ò
Rtrace_0
Strace_1
Ttrace_2
Utrace_32ç
G__inference_sequential_5_layer_call_and_return_conditional_losses_48289
G__inference_sequential_5_layer_call_and_return_conditional_losses_48377
G__inference_sequential_5_layer_call_and_return_conditional_losses_47587
G__inference_sequential_5_layer_call_and_return_conditional_losses_47617À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
Ã
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_ratemümýmþmÿmm m!m"m#m$m%mvvvvvv v!v"v#v$v%v"
	optimizer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ê
`trace_02Í
&__inference_argmax_layer_call_fn_48382¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z`trace_0

atrace_02è
A__inference_argmax_layer_call_and_return_conditional_losses_48388¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zatrace_0
':%2conv2d/kernel
:2conv2d/bias
):'2conv2d_1/kernel
:2conv2d_1/bias
):'2conv2d_2/kernel
:2conv2d_2/bias
1:/2conv2d_transpose/kernel
#:!2conv2d_transpose/bias
3:12conv2d_transpose_1/kernel
%:#2conv2d_transpose_1/bias
3:1|2conv2d_transpose_2/kernel
%:#|2conv2d_transpose_2/bias
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
B
*__inference_sequential_layer_call_fn_47685sequential_5_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
üBù
*__inference_sequential_layer_call_fn_47934inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
üBù
*__inference_sequential_layer_call_fn_47963inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_sequential_layer_call_fn_47808sequential_5_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_48053inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_48143inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
E__inference_sequential_layer_call_and_return_conditional_losses_47838sequential_5_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
E__inference_sequential_layer_call_and_return_conditional_losses_47868sequential_5_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÕBÒ
#__inference_signature_wrapper_47899sequential_5_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ý
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

kernel
bias
 h_jit_compiled_convolution_op"
_tf_keras_layer
¥
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

kernel
bias
 u_jit_compiled_convolution_op"
_tf_keras_layer
¥
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
à
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
î
trace_0
trace_1
trace_2
trace_32û
,__inference_sequential_3_layer_call_fn_46951
,__inference_sequential_3_layer_call_fn_48405
,__inference_sequential_3_layer_call_fn_48422
,__inference_sequential_3_layer_call_fn_47054À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ú
trace_0
trace_1
trace_2
trace_32ç
G__inference_sequential_3_layer_call_and_return_conditional_losses_48450
G__inference_sequential_3_layer_call_and_return_conditional_losses_48478
G__inference_sequential_3_layer_call_and_return_conditional_losses_47076
G__inference_sequential_3_layer_call_and_return_conditional_losses_47098À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

 kernel
!bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses

"kernel
#bias
!£_jit_compiled_convolution_op"
_tf_keras_layer
ä
¤	variables
¥trainable_variables
¦regularization_losses
§	keras_api
¨__call__
+©&call_and_return_all_conditional_losses

$kernel
%bias
!ª_jit_compiled_convolution_op"
_tf_keras_layer
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
 "
trackable_list_wrapper
²
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
î
°trace_0
±trace_1
²trace_2
³trace_32û
,__inference_sequential_4_layer_call_fn_47271
,__inference_sequential_4_layer_call_fn_48495
,__inference_sequential_4_layer_call_fn_48512
,__inference_sequential_4_layer_call_fn_47341À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z°trace_0z±trace_1z²trace_2z³trace_3
Ú
´trace_0
µtrace_1
¶trace_2
·trace_32ç
G__inference_sequential_4_layer_call_and_return_conditional_losses_48576
G__inference_sequential_4_layer_call_and_return_conditional_losses_48640
G__inference_sequential_4_layer_call_and_return_conditional_losses_47360
G__inference_sequential_4_layer_call_and_return_conditional_losses_47379À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z´trace_0zµtrace_1z¶trace_2z·trace_3
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
¸0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_5_layer_call_fn_47440sequential_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_5_layer_call_fn_48172inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_5_layer_call_fn_48201inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
,__inference_sequential_5_layer_call_fn_47557sequential_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_5_layer_call_and_return_conditional_losses_48289inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_5_layer_call_and_return_conditional_losses_48377inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¥B¢
G__inference_sequential_5_layer_call_and_return_conditional_losses_47587sequential_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¥B¢
G__inference_sequential_5_layer_call_and_return_conditional_losses_47617sequential_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
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
ÚB×
&__inference_argmax_layer_call_fn_48382inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_argmax_layer_call_and_return_conditional_losses_48388inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
ì
¾trace_02Í
&__inference_conv2d_layer_call_fn_48649¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0

¿trace_02è
A__inference_conv2d_layer_call_and_return_conditional_losses_48660¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¿trace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
ó
Åtrace_02Ô
-__inference_max_pooling2d_layer_call_fn_48665¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÅtrace_0

Ætrace_02ï
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_48670¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÆtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
î
Ìtrace_02Ï
(__inference_conv2d_1_layer_call_fn_48679¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÌtrace_0

Ítrace_02ê
C__inference_conv2d_1_layer_call_and_return_conditional_losses_48690¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÍtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
õ
Ótrace_02Ö
/__inference_max_pooling2d_1_layer_call_fn_48695¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÓtrace_0

Ôtrace_02ñ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_48700¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÔtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
î
Útrace_02Ï
(__inference_conv2d_2_layer_call_fn_48709¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÚtrace_0

Ûtrace_02ê
C__inference_conv2d_2_layer_call_and_return_conditional_losses_48720¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÛtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ünon_trainable_variables
Ýlayers
Þmetrics
 ßlayer_regularization_losses
àlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
õ
átrace_02Ö
/__inference_max_pooling2d_2_layer_call_fn_48725¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zátrace_0

âtrace_02ñ
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_48730¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zâtrace_0
 "
trackable_list_wrapper
J
40
51
62
73
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_3_layer_call_fn_46951conv2d_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_3_layer_call_fn_48405inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_3_layer_call_fn_48422inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
,__inference_sequential_3_layer_call_fn_47054conv2d_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_48450inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_48478inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_47076conv2d_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_47098conv2d_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö
ètrace_02×
0__inference_conv2d_transpose_layer_call_fn_48739¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zètrace_0

étrace_02ò
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_48773¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zétrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
ø
ïtrace_02Ù
2__inference_conv2d_transpose_1_layer_call_fn_48782¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zïtrace_0

ðtrace_02ô
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_48816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zðtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
õlayer_metrics
¤	variables
¥trainable_variables
¦regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
ø
ötrace_02Ù
2__inference_conv2d_transpose_2_layer_call_fn_48825¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zötrace_0

÷trace_02ô
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_48859¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z÷trace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_4_layer_call_fn_47271conv2d_transpose_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_4_layer_call_fn_48495inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_4_layer_call_fn_48512inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
,__inference_sequential_4_layer_call_fn_47341conv2d_transpose_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_48576inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_48640inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
©B¦
G__inference_sequential_4_layer_call_and_return_conditional_losses_47360conv2d_transpose_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
©B¦
G__inference_sequential_4_layer_call_and_return_conditional_losses_47379conv2d_transpose_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
R
ø	variables
ù	keras_api

útotal

ûcount"
_tf_keras_metric
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
ÚB×
&__inference_conv2d_layer_call_fn_48649inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_conv2d_layer_call_and_return_conditional_losses_48660inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
áBÞ
-__inference_max_pooling2d_layer_call_fn_48665inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_48670inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ÜBÙ
(__inference_conv2d_1_layer_call_fn_48679inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_1_layer_call_and_return_conditional_losses_48690inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ãBà
/__inference_max_pooling2d_1_layer_call_fn_48695inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_48700inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ÜBÙ
(__inference_conv2d_2_layer_call_fn_48709inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_2_layer_call_and_return_conditional_losses_48720inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ãBà
/__inference_max_pooling2d_2_layer_call_fn_48725inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_48730inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
äBá
0__inference_conv2d_transpose_layer_call_fn_48739inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÿBü
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_48773inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
æBã
2__inference_conv2d_transpose_1_layer_call_fn_48782inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_48816inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
æBã
2__inference_conv2d_transpose_2_layer_call_fn_48825inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_48859inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
ú0
û1"
trackable_list_wrapper
.
ø	variables"
_generic_user_object
:  (2total
:  (2count
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
.:,2Adam/conv2d_1/kernel/m
 :2Adam/conv2d_1/bias/m
.:,2Adam/conv2d_2/kernel/m
 :2Adam/conv2d_2/bias/m
6:42Adam/conv2d_transpose/kernel/m
(:&2Adam/conv2d_transpose/bias/m
8:62 Adam/conv2d_transpose_1/kernel/m
*:(2Adam/conv2d_transpose_1/bias/m
8:6|2 Adam/conv2d_transpose_2/kernel/m
*:(|2Adam/conv2d_transpose_2/bias/m
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
.:,2Adam/conv2d_1/kernel/v
 :2Adam/conv2d_1/bias/v
.:,2Adam/conv2d_2/kernel/v
 :2Adam/conv2d_2/bias/v
6:42Adam/conv2d_transpose/kernel/v
(:&2Adam/conv2d_transpose/bias/v
8:62 Adam/conv2d_transpose_1/kernel/v
*:(2Adam/conv2d_transpose_1/bias/v
8:6|2 Adam/conv2d_transpose_2/kernel/v
*:(|2Adam/conv2d_transpose_2/bias/v±
 __inference__wrapped_model_46838 !"#$%E¢B
;¢8
63
sequential_5_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
argmax&#
argmaxÿÿÿÿÿÿÿÿÿ	­
A__inference_argmax_layer_call_and_return_conditional_losses_48388h9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ|
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ	
 
&__inference_argmax_layer_call_fn_48382[9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ|
ª "ÿÿÿÿÿÿÿÿÿ	·
C__inference_conv2d_1_layer_call_and_return_conditional_losses_48690p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
(__inference_conv2d_1_layer_call_fn_48679c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ·
C__inference_conv2d_2_layer_call_and_return_conditional_losses_48720p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
(__inference_conv2d_2_layer_call_fn_48709c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿµ
A__inference_conv2d_layer_call_and_return_conditional_losses_48660p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
&__inference_conv2d_layer_call_fn_48649c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿâ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_48816"#I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 º
2__inference_conv2d_transpose_1_layer_call_fn_48782"#I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿâ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_48859$%I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
 º
2__inference_conv2d_transpose_2_layer_call_fn_48825$%I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|à
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_48773 !I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
0__inference_conv2d_transpose_layer_call_fn_48739 !I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_48700R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_1_layer_call_fn_48695R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_48730R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_2_layer_call_fn_48725R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_48670R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_max_pooling2d_layer_call_fn_48665R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
G__inference_sequential_3_layer_call_and_return_conditional_losses_47076G¢D
=¢:
0-
conv2d_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Ì
G__inference_sequential_3_layer_call_and_return_conditional_losses_47098G¢D
=¢:
0-
conv2d_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Å
G__inference_sequential_3_layer_call_and_return_conditional_losses_48450zA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Å
G__inference_sequential_3_layer_call_and_return_conditional_losses_48478zA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 £
,__inference_sequential_3_layer_call_fn_46951sG¢D
=¢:
0-
conv2d_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@@£
,__inference_sequential_3_layer_call_fn_47054sG¢D
=¢:
0-
conv2d_inputÿÿÿÿÿÿÿÿÿ
p

 
ª " ÿÿÿÿÿÿÿÿÿ@@
,__inference_sequential_3_layer_call_fn_48405mA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@@
,__inference_sequential_3_layer_call_fn_48422mA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª " ÿÿÿÿÿÿÿÿÿ@@Ö
G__inference_sequential_4_layer_call_and_return_conditional_losses_47360 !"#$%O¢L
E¢B
85
conv2d_transpose_inputÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 Ö
G__inference_sequential_4_layer_call_and_return_conditional_losses_47379 !"#$%O¢L
E¢B
85
conv2d_transpose_inputÿÿÿÿÿÿÿÿÿ@@
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 Å
G__inference_sequential_4_layer_call_and_return_conditional_losses_48576z !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 Å
G__inference_sequential_4_layer_call_and_return_conditional_losses_48640z !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 ­
,__inference_sequential_4_layer_call_fn_47271} !"#$%O¢L
E¢B
85
conv2d_transpose_inputÿÿÿÿÿÿÿÿÿ@@
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ|­
,__inference_sequential_4_layer_call_fn_47341} !"#$%O¢L
E¢B
85
conv2d_transpose_inputÿÿÿÿÿÿÿÿÿ@@
p

 
ª ""ÿÿÿÿÿÿÿÿÿ|
,__inference_sequential_4_layer_call_fn_48495m !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ|
,__inference_sequential_4_layer_call_fn_48512m !"#$%?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª ""ÿÿÿÿÿÿÿÿÿ|Ú
G__inference_sequential_5_layer_call_and_return_conditional_losses_47587 !"#$%M¢J
C¢@
63
sequential_3_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 Ú
G__inference_sequential_5_layer_call_and_return_conditional_losses_47617 !"#$%M¢J
C¢@
63
sequential_3_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 Î
G__inference_sequential_5_layer_call_and_return_conditional_losses_48289 !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 Î
G__inference_sequential_5_layer_call_and_return_conditional_losses_48377 !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ|
 ²
,__inference_sequential_5_layer_call_fn_47440 !"#$%M¢J
C¢@
63
sequential_3_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ|²
,__inference_sequential_5_layer_call_fn_47557 !"#$%M¢J
C¢@
63
sequential_3_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿ|¥
,__inference_sequential_5_layer_call_fn_48172u !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ|¥
,__inference_sequential_5_layer_call_fn_48201u !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿ|Ô
E__inference_sequential_layer_call_and_return_conditional_losses_47838 !"#$%M¢J
C¢@
63
sequential_5_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ	
 Ô
E__inference_sequential_layer_call_and_return_conditional_losses_47868 !"#$%M¢J
C¢@
63
sequential_5_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ	
 Ç
E__inference_sequential_layer_call_and_return_conditional_losses_48053~ !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ	
 Ç
E__inference_sequential_layer_call_and_return_conditional_losses_48143~ !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ	
 «
*__inference_sequential_layer_call_fn_47685} !"#$%M¢J
C¢@
63
sequential_5_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ	«
*__inference_sequential_layer_call_fn_47808} !"#$%M¢J
C¢@
63
sequential_5_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ	
*__inference_sequential_layer_call_fn_47934q !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ	
*__inference_sequential_layer_call_fn_47963q !"#$%A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ	Ê
#__inference_signature_wrapper_47899¢ !"#$%[¢X
¢ 
QªN
L
sequential_5_input63
sequential_5_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
argmax&#
argmaxÿÿÿÿÿÿÿÿÿ	