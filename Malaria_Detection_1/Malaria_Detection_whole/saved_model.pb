��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
�
Adam/new_dense_29/biases/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/new_dense_29/biases/v
�
.Adam/new_dense_29/biases/v/Read/ReadVariableOpReadVariableOpAdam/new_dense_29/biases/v*
_output_shapes
:*
dtype0
�
Adam/new_dense_29/weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*,
shared_nameAdam/new_dense_29/weights/v
�
/Adam/new_dense_29/weights/v/Read/ReadVariableOpReadVariableOpAdam/new_dense_29/weights/v*
_output_shapes

:
*
dtype0
�
#Adam/batch_normalization_102/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#Adam/batch_normalization_102/beta/v
�
7Adam/batch_normalization_102/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_102/beta/v*
_output_shapes
:
*
dtype0
�
$Adam/batch_normalization_102/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/batch_normalization_102/gamma/v
�
8Adam/batch_normalization_102/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_102/gamma/v*
_output_shapes
:
*
dtype0
�
Adam/new_dense_28/biases/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/new_dense_28/biases/v
�
.Adam/new_dense_28/biases/v/Read/ReadVariableOpReadVariableOpAdam/new_dense_28/biases/v*
_output_shapes
:
*
dtype0
�
Adam/new_dense_28/weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*,
shared_nameAdam/new_dense_28/weights/v
�
/Adam/new_dense_28/weights/v/Read/ReadVariableOpReadVariableOpAdam/new_dense_28/weights/v*
_output_shapes

:d
*
dtype0
�
#Adam/batch_normalization_101/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/batch_normalization_101/beta/v
�
7Adam/batch_normalization_101/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_101/beta/v*
_output_shapes
:d*
dtype0
�
$Adam/batch_normalization_101/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*5
shared_name&$Adam/batch_normalization_101/gamma/v
�
8Adam/batch_normalization_101/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_101/gamma/v*
_output_shapes
:d*
dtype0
�
Adam/new_dense_27/biases/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameAdam/new_dense_27/biases/v
�
.Adam/new_dense_27/biases/v/Read/ReadVariableOpReadVariableOpAdam/new_dense_27/biases/v*
_output_shapes
:d*
dtype0
�
Adam/new_dense_27/weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��d*,
shared_nameAdam/new_dense_27/weights/v
�
/Adam/new_dense_27/weights/v/Read/ReadVariableOpReadVariableOpAdam/new_dense_27/weights/v* 
_output_shapes
:
��d*
dtype0
�
#Adam/batch_normalization_100/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_100/beta/v
�
7Adam/batch_normalization_100/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_100/beta/v*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_100/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_100/gamma/v
�
8Adam/batch_normalization_100/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_100/gamma/v*
_output_shapes
:*
dtype0
�
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
�
Adam/conv2d_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_57/kernel/v
�
+Adam/conv2d_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/v*&
_output_shapes
:*
dtype0
�
"Adam/batch_normalization_99/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_99/beta/v
�
6Adam/batch_normalization_99/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_99/beta/v*
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_99/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_99/gamma/v
�
7Adam/batch_normalization_99/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_99/gamma/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_56/bias/v
{
)Adam/conv2d_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_56/kernel/v
�
+Adam/conv2d_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/new_dense_29/biases/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/new_dense_29/biases/m
�
.Adam/new_dense_29/biases/m/Read/ReadVariableOpReadVariableOpAdam/new_dense_29/biases/m*
_output_shapes
:*
dtype0
�
Adam/new_dense_29/weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*,
shared_nameAdam/new_dense_29/weights/m
�
/Adam/new_dense_29/weights/m/Read/ReadVariableOpReadVariableOpAdam/new_dense_29/weights/m*
_output_shapes

:
*
dtype0
�
#Adam/batch_normalization_102/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#Adam/batch_normalization_102/beta/m
�
7Adam/batch_normalization_102/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_102/beta/m*
_output_shapes
:
*
dtype0
�
$Adam/batch_normalization_102/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/batch_normalization_102/gamma/m
�
8Adam/batch_normalization_102/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_102/gamma/m*
_output_shapes
:
*
dtype0
�
Adam/new_dense_28/biases/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/new_dense_28/biases/m
�
.Adam/new_dense_28/biases/m/Read/ReadVariableOpReadVariableOpAdam/new_dense_28/biases/m*
_output_shapes
:
*
dtype0
�
Adam/new_dense_28/weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*,
shared_nameAdam/new_dense_28/weights/m
�
/Adam/new_dense_28/weights/m/Read/ReadVariableOpReadVariableOpAdam/new_dense_28/weights/m*
_output_shapes

:d
*
dtype0
�
#Adam/batch_normalization_101/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/batch_normalization_101/beta/m
�
7Adam/batch_normalization_101/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_101/beta/m*
_output_shapes
:d*
dtype0
�
$Adam/batch_normalization_101/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*5
shared_name&$Adam/batch_normalization_101/gamma/m
�
8Adam/batch_normalization_101/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_101/gamma/m*
_output_shapes
:d*
dtype0
�
Adam/new_dense_27/biases/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameAdam/new_dense_27/biases/m
�
.Adam/new_dense_27/biases/m/Read/ReadVariableOpReadVariableOpAdam/new_dense_27/biases/m*
_output_shapes
:d*
dtype0
�
Adam/new_dense_27/weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��d*,
shared_nameAdam/new_dense_27/weights/m
�
/Adam/new_dense_27/weights/m/Read/ReadVariableOpReadVariableOpAdam/new_dense_27/weights/m* 
_output_shapes
:
��d*
dtype0
�
#Adam/batch_normalization_100/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_100/beta/m
�
7Adam/batch_normalization_100/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_100/beta/m*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_100/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_100/gamma/m
�
8Adam/batch_normalization_100/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_100/gamma/m*
_output_shapes
:*
dtype0
�
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
�
Adam/conv2d_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_57/kernel/m
�
+Adam/conv2d_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/m*&
_output_shapes
:*
dtype0
�
"Adam/batch_normalization_99/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_99/beta/m
�
6Adam/batch_normalization_99/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_99/beta/m*
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_99/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_99/gamma/m
�
7Adam/batch_normalization_99/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_99/gamma/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_56/bias/m
{
)Adam/conv2d_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_56/kernel/m
�
+Adam/conv2d_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/m*&
_output_shapes
:*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
~
new_dense_29/biasesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namenew_dense_29/biases
w
'new_dense_29/biases/Read/ReadVariableOpReadVariableOpnew_dense_29/biases*
_output_shapes
:*
dtype0
�
new_dense_29/weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_namenew_dense_29/weights
}
(new_dense_29/weights/Read/ReadVariableOpReadVariableOpnew_dense_29/weights*
_output_shapes

:
*
dtype0
�
'batch_normalization_102/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'batch_normalization_102/moving_variance
�
;batch_normalization_102/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_102/moving_variance*
_output_shapes
:
*
dtype0
�
#batch_normalization_102/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#batch_normalization_102/moving_mean
�
7batch_normalization_102/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_102/moving_mean*
_output_shapes
:
*
dtype0
�
batch_normalization_102/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_namebatch_normalization_102/beta
�
0batch_normalization_102/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_102/beta*
_output_shapes
:
*
dtype0
�
batch_normalization_102/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namebatch_normalization_102/gamma
�
1batch_normalization_102/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_102/gamma*
_output_shapes
:
*
dtype0
~
new_dense_28/biasesVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_namenew_dense_28/biases
w
'new_dense_28/biases/Read/ReadVariableOpReadVariableOpnew_dense_28/biases*
_output_shapes
:
*
dtype0
�
new_dense_28/weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*%
shared_namenew_dense_28/weights
}
(new_dense_28/weights/Read/ReadVariableOpReadVariableOpnew_dense_28/weights*
_output_shapes

:d
*
dtype0
�
'batch_normalization_101/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*8
shared_name)'batch_normalization_101/moving_variance
�
;batch_normalization_101/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_101/moving_variance*
_output_shapes
:d*
dtype0
�
#batch_normalization_101/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#batch_normalization_101/moving_mean
�
7batch_normalization_101/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_101/moving_mean*
_output_shapes
:d*
dtype0
�
batch_normalization_101/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_namebatch_normalization_101/beta
�
0batch_normalization_101/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_101/beta*
_output_shapes
:d*
dtype0
�
batch_normalization_101/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*.
shared_namebatch_normalization_101/gamma
�
1batch_normalization_101/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_101/gamma*
_output_shapes
:d*
dtype0
~
new_dense_27/biasesVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_namenew_dense_27/biases
w
'new_dense_27/biases/Read/ReadVariableOpReadVariableOpnew_dense_27/biases*
_output_shapes
:d*
dtype0
�
new_dense_27/weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��d*%
shared_namenew_dense_27/weights

(new_dense_27/weights/Read/ReadVariableOpReadVariableOpnew_dense_27/weights* 
_output_shapes
:
��d*
dtype0
�
'batch_normalization_100/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_100/moving_variance
�
;batch_normalization_100/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_100/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_100/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_100/moving_mean
�
7batch_normalization_100/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_100/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_100/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_100/beta
�
0batch_normalization_100/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_100/beta*
_output_shapes
:*
dtype0
�
batch_normalization_100/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_100/gamma
�
1batch_normalization_100/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_100/gamma*
_output_shapes
:*
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
�
conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_99/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_99/moving_variance
�
:batch_normalization_99/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_99/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_99/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_99/moving_mean
�
6batch_normalization_99/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_99/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_99/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_99/beta
�
/batch_normalization_99/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_99/beta*
_output_shapes
:*
dtype0
�
batch_normalization_99/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_99/gamma
�
0batch_normalization_99/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_99/gamma*
_output_shapes
:*
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
:*
dtype0
�
conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_56/kernel
}
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_13Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13conv2d_56/kernelconv2d_56/biasbatch_normalization_99/gammabatch_normalization_99/beta"batch_normalization_99/moving_mean&batch_normalization_99/moving_varianceconv2d_57/kernelconv2d_57/biasbatch_normalization_100/gammabatch_normalization_100/beta#batch_normalization_100/moving_mean'batch_normalization_100/moving_variancenew_dense_27/weightsnew_dense_27/biases'batch_normalization_101/moving_variancebatch_normalization_101/gamma#batch_normalization_101/moving_meanbatch_normalization_101/betanew_dense_28/weightsnew_dense_28/biases'batch_normalization_102/moving_variancebatch_normalization_102/gamma#batch_normalization_102/moving_meanbatch_normalization_102/betanew_dense_29/weightsnew_dense_29/biases*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_200161

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%axis
	&gamma
'beta
(moving_mean
)moving_variance*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
Vweights
Vw

Wbiases
Wb*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	_gamma
`beta
amoving_mean
bmoving_variance*
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iweights
iw

jbiases
jb*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance*
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|weights
|w

}biases
}b*
�
0
1
&2
'3
(4
)5
66
77
@8
A9
B10
C11
V12
W13
_14
`15
a16
b17
i18
j19
r20
s21
t22
u23
|24
}25*
�
0
1
&2
'3
64
75
@6
A7
V8
W9
_10
`11
i12
j13
r14
s15
|16
}17*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�&m�'m�6m�7m�@m�Am�Vm�Wm�_m�`m�im�jm�rm�sm�|m�}m�v�v�&v�'v�6v�7v�@v�Av�Vv�Wv�_v�`v�iv�jv�rv�sv�|v�}v�*

�serving_default* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_56/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_56/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
&0
'1
(2
)3*

&0
'1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_99/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_99/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_99/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_99/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

60
71*

60
71*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_57/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_57/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
@0
A1
B2
C3*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_100/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_100/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_100/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_100/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

V0
W1*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEnew_dense_27/weights7layer_with_weights-4/weights/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEnew_dense_27/biases6layer_with_weights-4/biases/.ATTRIBUTES/VARIABLE_VALUE*
 
_0
`1
a2
b3*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_101/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_101/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_101/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_101/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

i0
j1*

i0
j1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEnew_dense_28/weights7layer_with_weights-6/weights/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEnew_dense_28/biases6layer_with_weights-6/biases/.ATTRIBUTES/VARIABLE_VALUE*
 
r0
s1
t2
u3*

r0
s1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_102/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_102/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_102/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_102/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

|0
}1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEnew_dense_29/weights7layer_with_weights-8/weights/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEnew_dense_29/biases6layer_with_weights-8/biases/.ATTRIBUTES/VARIABLE_VALUE*
<
(0
)1
B2
C3
a4
b5
t6
u7*
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

�0
�1*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

(0
)1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
B0
C1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
a0
b1*
* 
* 
* 
* 
* 
* 
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
t0
u1*
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�}
VARIABLE_VALUEAdam/conv2d_56/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_56/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_99/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_99/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_57/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_57/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_100/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_100/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_27/weights/mSlayer_with_weights-4/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_27/biases/mRlayer_with_weights-4/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_101/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_101/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_28/weights/mSlayer_with_weights-6/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_28/biases/mRlayer_with_weights-6/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_102/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_102/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_29/weights/mSlayer_with_weights-8/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_29/biases/mRlayer_with_weights-8/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_56/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_56/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_99/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_99/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_57/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_57/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_100/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_100/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_27/weights/vSlayer_with_weights-4/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_27/biases/vRlayer_with_weights-4/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_101/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_101/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_28/weights/vSlayer_with_weights-6/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_28/biases/vRlayer_with_weights-6/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_102/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_102/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_29/weights/vSlayer_with_weights-8/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/new_dense_29/biases/vRlayer_with_weights-8/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_56/kernelconv2d_56/biasbatch_normalization_99/gammabatch_normalization_99/beta"batch_normalization_99/moving_mean&batch_normalization_99/moving_varianceconv2d_57/kernelconv2d_57/biasbatch_normalization_100/gammabatch_normalization_100/beta#batch_normalization_100/moving_mean'batch_normalization_100/moving_variancenew_dense_27/weightsnew_dense_27/biasesbatch_normalization_101/gammabatch_normalization_101/beta#batch_normalization_101/moving_mean'batch_normalization_101/moving_variancenew_dense_28/weightsnew_dense_28/biasesbatch_normalization_102/gammabatch_normalization_102/beta#batch_normalization_102/moving_mean'batch_normalization_102/moving_variancenew_dense_29/weightsnew_dense_29/biases	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_56/kernel/mAdam/conv2d_56/bias/m#Adam/batch_normalization_99/gamma/m"Adam/batch_normalization_99/beta/mAdam/conv2d_57/kernel/mAdam/conv2d_57/bias/m$Adam/batch_normalization_100/gamma/m#Adam/batch_normalization_100/beta/mAdam/new_dense_27/weights/mAdam/new_dense_27/biases/m$Adam/batch_normalization_101/gamma/m#Adam/batch_normalization_101/beta/mAdam/new_dense_28/weights/mAdam/new_dense_28/biases/m$Adam/batch_normalization_102/gamma/m#Adam/batch_normalization_102/beta/mAdam/new_dense_29/weights/mAdam/new_dense_29/biases/mAdam/conv2d_56/kernel/vAdam/conv2d_56/bias/v#Adam/batch_normalization_99/gamma/v"Adam/batch_normalization_99/beta/vAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/v$Adam/batch_normalization_100/gamma/v#Adam/batch_normalization_100/beta/vAdam/new_dense_27/weights/vAdam/new_dense_27/biases/v$Adam/batch_normalization_101/gamma/v#Adam/batch_normalization_101/beta/vAdam/new_dense_28/weights/vAdam/new_dense_28/biases/v$Adam/batch_normalization_102/gamma/v#Adam/batch_normalization_102/beta/vAdam/new_dense_29/weights/vAdam/new_dense_29/biases/vConst*T
TinM
K2I*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_201024
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_56/kernelconv2d_56/biasbatch_normalization_99/gammabatch_normalization_99/beta"batch_normalization_99/moving_mean&batch_normalization_99/moving_varianceconv2d_57/kernelconv2d_57/biasbatch_normalization_100/gammabatch_normalization_100/beta#batch_normalization_100/moving_mean'batch_normalization_100/moving_variancenew_dense_27/weightsnew_dense_27/biasesbatch_normalization_101/gammabatch_normalization_101/beta#batch_normalization_101/moving_mean'batch_normalization_101/moving_variancenew_dense_28/weightsnew_dense_28/biasesbatch_normalization_102/gammabatch_normalization_102/beta#batch_normalization_102/moving_mean'batch_normalization_102/moving_variancenew_dense_29/weightsnew_dense_29/biases	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_56/kernel/mAdam/conv2d_56/bias/m#Adam/batch_normalization_99/gamma/m"Adam/batch_normalization_99/beta/mAdam/conv2d_57/kernel/mAdam/conv2d_57/bias/m$Adam/batch_normalization_100/gamma/m#Adam/batch_normalization_100/beta/mAdam/new_dense_27/weights/mAdam/new_dense_27/biases/m$Adam/batch_normalization_101/gamma/m#Adam/batch_normalization_101/beta/mAdam/new_dense_28/weights/mAdam/new_dense_28/biases/m$Adam/batch_normalization_102/gamma/m#Adam/batch_normalization_102/beta/mAdam/new_dense_29/weights/mAdam/new_dense_29/biases/mAdam/conv2d_56/kernel/vAdam/conv2d_56/bias/v#Adam/batch_normalization_99/gamma/v"Adam/batch_normalization_99/beta/vAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/v$Adam/batch_normalization_100/gamma/v#Adam/batch_normalization_100/beta/vAdam/new_dense_27/weights/vAdam/new_dense_27/biases/v$Adam/batch_normalization_101/gamma/v#Adam/batch_normalization_101/beta/vAdam/new_dense_28/weights/vAdam/new_dense_28/biases/v$Adam/batch_normalization_102/gamma/v#Adam/batch_normalization_102/beta/vAdam/new_dense_29/weights/vAdam/new_dense_29/biases/v*S
TinL
J2H*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_201246��
�

�
7__inference_batch_normalization_99_layer_call_fn_200194

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_199450�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name200184:&"
 
_user_specified_name200186:&"
 
_user_specified_name200188:&"
 
_user_specified_name200190
�
�
E__inference_conv2d_56_layer_call_and_return_conditional_losses_199749

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_199710

inputs/
!batchnorm_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
1
#batchnorm_readvariableop_1_resource:
1
#batchnorm_readvariableop_2_resource:

identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:
z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
8__inference_batch_normalization_100_layer_call_fn_200299

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_199540�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name200289:&"
 
_user_specified_name200291:&"
 
_user_specified_name200293:&"
 
_user_specified_name200295
�	
�
8__inference_batch_normalization_101_layer_call_fn_200389

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_199610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:&"
 
_user_specified_name200379:&"
 
_user_specified_name200381:&"
 
_user_specified_name200383:&"
 
_user_specified_name200385
��
�D
__inference__traced_save_201024
file_prefixA
'read_disablecopyonread_conv2d_56_kernel:5
'read_1_disablecopyonread_conv2d_56_bias:C
5read_2_disablecopyonread_batch_normalization_99_gamma:B
4read_3_disablecopyonread_batch_normalization_99_beta:I
;read_4_disablecopyonread_batch_normalization_99_moving_mean:M
?read_5_disablecopyonread_batch_normalization_99_moving_variance:C
)read_6_disablecopyonread_conv2d_57_kernel:5
'read_7_disablecopyonread_conv2d_57_bias:D
6read_8_disablecopyonread_batch_normalization_100_gamma:C
5read_9_disablecopyonread_batch_normalization_100_beta:K
=read_10_disablecopyonread_batch_normalization_100_moving_mean:O
Aread_11_disablecopyonread_batch_normalization_100_moving_variance:B
.read_12_disablecopyonread_new_dense_27_weights:
��d;
-read_13_disablecopyonread_new_dense_27_biases:dE
7read_14_disablecopyonread_batch_normalization_101_gamma:dD
6read_15_disablecopyonread_batch_normalization_101_beta:dK
=read_16_disablecopyonread_batch_normalization_101_moving_mean:dO
Aread_17_disablecopyonread_batch_normalization_101_moving_variance:d@
.read_18_disablecopyonread_new_dense_28_weights:d
;
-read_19_disablecopyonread_new_dense_28_biases:
E
7read_20_disablecopyonread_batch_normalization_102_gamma:
D
6read_21_disablecopyonread_batch_normalization_102_beta:
K
=read_22_disablecopyonread_batch_normalization_102_moving_mean:
O
Aread_23_disablecopyonread_batch_normalization_102_moving_variance:
@
.read_24_disablecopyonread_new_dense_29_weights:
;
-read_25_disablecopyonread_new_dense_29_biases:-
#read_26_disablecopyonread_adam_iter:	 /
%read_27_disablecopyonread_adam_beta_1: /
%read_28_disablecopyonread_adam_beta_2: .
$read_29_disablecopyonread_adam_decay: 6
,read_30_disablecopyonread_adam_learning_rate: +
!read_31_disablecopyonread_total_1: +
!read_32_disablecopyonread_count_1: )
read_33_disablecopyonread_total: )
read_34_disablecopyonread_count: K
1read_35_disablecopyonread_adam_conv2d_56_kernel_m:=
/read_36_disablecopyonread_adam_conv2d_56_bias_m:K
=read_37_disablecopyonread_adam_batch_normalization_99_gamma_m:J
<read_38_disablecopyonread_adam_batch_normalization_99_beta_m:K
1read_39_disablecopyonread_adam_conv2d_57_kernel_m:=
/read_40_disablecopyonread_adam_conv2d_57_bias_m:L
>read_41_disablecopyonread_adam_batch_normalization_100_gamma_m:K
=read_42_disablecopyonread_adam_batch_normalization_100_beta_m:I
5read_43_disablecopyonread_adam_new_dense_27_weights_m:
��dB
4read_44_disablecopyonread_adam_new_dense_27_biases_m:dL
>read_45_disablecopyonread_adam_batch_normalization_101_gamma_m:dK
=read_46_disablecopyonread_adam_batch_normalization_101_beta_m:dG
5read_47_disablecopyonread_adam_new_dense_28_weights_m:d
B
4read_48_disablecopyonread_adam_new_dense_28_biases_m:
L
>read_49_disablecopyonread_adam_batch_normalization_102_gamma_m:
K
=read_50_disablecopyonread_adam_batch_normalization_102_beta_m:
G
5read_51_disablecopyonread_adam_new_dense_29_weights_m:
B
4read_52_disablecopyonread_adam_new_dense_29_biases_m:K
1read_53_disablecopyonread_adam_conv2d_56_kernel_v:=
/read_54_disablecopyonread_adam_conv2d_56_bias_v:K
=read_55_disablecopyonread_adam_batch_normalization_99_gamma_v:J
<read_56_disablecopyonread_adam_batch_normalization_99_beta_v:K
1read_57_disablecopyonread_adam_conv2d_57_kernel_v:=
/read_58_disablecopyonread_adam_conv2d_57_bias_v:L
>read_59_disablecopyonread_adam_batch_normalization_100_gamma_v:K
=read_60_disablecopyonread_adam_batch_normalization_100_beta_v:I
5read_61_disablecopyonread_adam_new_dense_27_weights_v:
��dB
4read_62_disablecopyonread_adam_new_dense_27_biases_v:dL
>read_63_disablecopyonread_adam_batch_normalization_101_gamma_v:dK
=read_64_disablecopyonread_adam_batch_normalization_101_beta_v:dG
5read_65_disablecopyonread_adam_new_dense_28_weights_v:d
B
4read_66_disablecopyonread_adam_new_dense_28_biases_v:
L
>read_67_disablecopyonread_adam_batch_normalization_102_gamma_v:
K
=read_68_disablecopyonread_adam_batch_normalization_102_beta_v:
G
5read_69_disablecopyonread_adam_new_dense_29_weights_v:
B
4read_70_disablecopyonread_adam_new_dense_29_biases_v:
savev2_const
identity_143��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_56_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_56_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_56_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_56_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_99_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_99_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_99_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_99_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_99_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_99_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_99_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_99_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_57_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_57_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_57_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_57_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead6read_8_disablecopyonread_batch_normalization_100_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp6read_8_disablecopyonread_batch_normalization_100_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnRead5read_9_disablecopyonread_batch_normalization_100_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp5read_9_disablecopyonread_batch_normalization_100_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead=read_10_disablecopyonread_batch_normalization_100_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp=read_10_disablecopyonread_batch_normalization_100_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnReadAread_11_disablecopyonread_batch_normalization_100_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpAread_11_disablecopyonread_batch_normalization_100_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_new_dense_27_weights"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_new_dense_27_weights^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��d*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��dg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��d�
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_new_dense_27_biases"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_new_dense_27_biases^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_14/DisableCopyOnReadDisableCopyOnRead7read_14_disablecopyonread_batch_normalization_101_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp7read_14_disablecopyonread_batch_normalization_101_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_15/DisableCopyOnReadDisableCopyOnRead6read_15_disablecopyonread_batch_normalization_101_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp6read_15_disablecopyonread_batch_normalization_101_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_16/DisableCopyOnReadDisableCopyOnRead=read_16_disablecopyonread_batch_normalization_101_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp=read_16_disablecopyonread_batch_normalization_101_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_17/DisableCopyOnReadDisableCopyOnReadAread_17_disablecopyonread_batch_normalization_101_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpAread_17_disablecopyonread_batch_normalization_101_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_18/DisableCopyOnReadDisableCopyOnRead.read_18_disablecopyonread_new_dense_28_weights"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp.read_18_disablecopyonread_new_dense_28_weights^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d
*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:d
e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:d
�
Read_19/DisableCopyOnReadDisableCopyOnRead-read_19_disablecopyonread_new_dense_28_biases"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp-read_19_disablecopyonread_new_dense_28_biases^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_20/DisableCopyOnReadDisableCopyOnRead7read_20_disablecopyonread_batch_normalization_102_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp7read_20_disablecopyonread_batch_normalization_102_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_21/DisableCopyOnReadDisableCopyOnRead6read_21_disablecopyonread_batch_normalization_102_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp6read_21_disablecopyonread_batch_normalization_102_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_22/DisableCopyOnReadDisableCopyOnRead=read_22_disablecopyonread_batch_normalization_102_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp=read_22_disablecopyonread_batch_normalization_102_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_23/DisableCopyOnReadDisableCopyOnReadAread_23_disablecopyonread_batch_normalization_102_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpAread_23_disablecopyonread_batch_normalization_102_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_new_dense_29_weights"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_new_dense_29_weights^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_new_dense_29_biases"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_new_dense_29_biases^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_26/DisableCopyOnReadDisableCopyOnRead#read_26_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp#read_26_disablecopyonread_adam_iter^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_adam_beta_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_28/DisableCopyOnReadDisableCopyOnRead%read_28_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp%read_28_disablecopyonread_adam_beta_2^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_29/DisableCopyOnReadDisableCopyOnRead$read_29_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp$read_29_disablecopyonread_adam_decay^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead,read_30_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp,read_30_disablecopyonread_adam_learning_rate^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_31/DisableCopyOnReadDisableCopyOnRead!read_31_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp!read_31_disablecopyonread_total_1^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_count_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_33/DisableCopyOnReadDisableCopyOnReadread_33_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOpread_33_disablecopyonread_total^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_34/DisableCopyOnReadDisableCopyOnReadread_34_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOpread_34_disablecopyonread_count^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_conv2d_56_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_conv2d_56_kernel_m^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_conv2d_56_bias_m"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_conv2d_56_bias_m^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead=read_37_disablecopyonread_adam_batch_normalization_99_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp=read_37_disablecopyonread_adam_batch_normalization_99_gamma_m^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead<read_38_disablecopyonread_adam_batch_normalization_99_beta_m"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp<read_38_disablecopyonread_adam_batch_normalization_99_beta_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnRead1read_39_disablecopyonread_adam_conv2d_57_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp1read_39_disablecopyonread_adam_conv2d_57_kernel_m^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_conv2d_57_bias_m"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_conv2d_57_bias_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead>read_41_disablecopyonread_adam_batch_normalization_100_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp>read_41_disablecopyonread_adam_batch_normalization_100_gamma_m^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_42/DisableCopyOnReadDisableCopyOnRead=read_42_disablecopyonread_adam_batch_normalization_100_beta_m"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp=read_42_disablecopyonread_adam_batch_normalization_100_beta_m^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_43/DisableCopyOnReadDisableCopyOnRead5read_43_disablecopyonread_adam_new_dense_27_weights_m"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp5read_43_disablecopyonread_adam_new_dense_27_weights_m^Read_43/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��d*
dtype0q
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��dg
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��d�
Read_44/DisableCopyOnReadDisableCopyOnRead4read_44_disablecopyonread_adam_new_dense_27_biases_m"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp4read_44_disablecopyonread_adam_new_dense_27_biases_m^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_45/DisableCopyOnReadDisableCopyOnRead>read_45_disablecopyonread_adam_batch_normalization_101_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp>read_45_disablecopyonread_adam_batch_normalization_101_gamma_m^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_46/DisableCopyOnReadDisableCopyOnRead=read_46_disablecopyonread_adam_batch_normalization_101_beta_m"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp=read_46_disablecopyonread_adam_batch_normalization_101_beta_m^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_47/DisableCopyOnReadDisableCopyOnRead5read_47_disablecopyonread_adam_new_dense_28_weights_m"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp5read_47_disablecopyonread_adam_new_dense_28_weights_m^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d
*
dtype0o
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:d
e
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes

:d
�
Read_48/DisableCopyOnReadDisableCopyOnRead4read_48_disablecopyonread_adam_new_dense_28_biases_m"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp4read_48_disablecopyonread_adam_new_dense_28_biases_m^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_49/DisableCopyOnReadDisableCopyOnRead>read_49_disablecopyonread_adam_batch_normalization_102_gamma_m"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp>read_49_disablecopyonread_adam_batch_normalization_102_gamma_m^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_50/DisableCopyOnReadDisableCopyOnRead=read_50_disablecopyonread_adam_batch_normalization_102_beta_m"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp=read_50_disablecopyonread_adam_batch_normalization_102_beta_m^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_51/DisableCopyOnReadDisableCopyOnRead5read_51_disablecopyonread_adam_new_dense_29_weights_m"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp5read_51_disablecopyonread_adam_new_dense_29_weights_m^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0p
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
g
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_52/DisableCopyOnReadDisableCopyOnRead4read_52_disablecopyonread_adam_new_dense_29_biases_m"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp4read_52_disablecopyonread_adam_new_dense_29_biases_m^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead1read_53_disablecopyonread_adam_conv2d_56_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp1read_53_disablecopyonread_adam_conv2d_56_kernel_v^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_54/DisableCopyOnReadDisableCopyOnRead/read_54_disablecopyonread_adam_conv2d_56_bias_v"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp/read_54_disablecopyonread_adam_conv2d_56_bias_v^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead=read_55_disablecopyonread_adam_batch_normalization_99_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp=read_55_disablecopyonread_adam_batch_normalization_99_gamma_v^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead<read_56_disablecopyonread_adam_batch_normalization_99_beta_v"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp<read_56_disablecopyonread_adam_batch_normalization_99_beta_v^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead1read_57_disablecopyonread_adam_conv2d_57_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp1read_57_disablecopyonread_adam_conv2d_57_kernel_v^Read_57/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_58/DisableCopyOnReadDisableCopyOnRead/read_58_disablecopyonread_adam_conv2d_57_bias_v"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp/read_58_disablecopyonread_adam_conv2d_57_bias_v^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead>read_59_disablecopyonread_adam_batch_normalization_100_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp>read_59_disablecopyonread_adam_batch_normalization_100_gamma_v^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead=read_60_disablecopyonread_adam_batch_normalization_100_beta_v"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp=read_60_disablecopyonread_adam_batch_normalization_100_beta_v^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead5read_61_disablecopyonread_adam_new_dense_27_weights_v"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp5read_61_disablecopyonread_adam_new_dense_27_weights_v^Read_61/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��d*
dtype0r
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��di
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��d�
Read_62/DisableCopyOnReadDisableCopyOnRead4read_62_disablecopyonread_adam_new_dense_27_biases_v"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp4read_62_disablecopyonread_adam_new_dense_27_biases_v^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:dc
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_63/DisableCopyOnReadDisableCopyOnRead>read_63_disablecopyonread_adam_batch_normalization_101_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp>read_63_disablecopyonread_adam_batch_normalization_101_gamma_v^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:dc
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_64/DisableCopyOnReadDisableCopyOnRead=read_64_disablecopyonread_adam_batch_normalization_101_beta_v"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp=read_64_disablecopyonread_adam_batch_normalization_101_beta_v^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:dc
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_65/DisableCopyOnReadDisableCopyOnRead5read_65_disablecopyonread_adam_new_dense_28_weights_v"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp5read_65_disablecopyonread_adam_new_dense_28_weights_v^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d
*
dtype0p
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:d
g
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes

:d
�
Read_66/DisableCopyOnReadDisableCopyOnRead4read_66_disablecopyonread_adam_new_dense_28_biases_v"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp4read_66_disablecopyonread_adam_new_dense_28_biases_v^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_67/DisableCopyOnReadDisableCopyOnRead>read_67_disablecopyonread_adam_batch_normalization_102_gamma_v"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp>read_67_disablecopyonread_adam_batch_normalization_102_gamma_v^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_68/DisableCopyOnReadDisableCopyOnRead=read_68_disablecopyonread_adam_batch_normalization_102_beta_v"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp=read_68_disablecopyonread_adam_batch_normalization_102_beta_v^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_69/DisableCopyOnReadDisableCopyOnRead5read_69_disablecopyonread_adam_new_dense_29_weights_v"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp5read_69_disablecopyonread_adam_new_dense_29_weights_v^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0p
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
g
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_70/DisableCopyOnReadDisableCopyOnRead4read_70_disablecopyonread_adam_new_dense_29_biases_v"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp4read_70_disablecopyonread_adam_new_dense_29_biases_v^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:�'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*�'
value�&B�&HB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-4/weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/biases/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-6/weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/biases/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-8/weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/biases/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-8/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-8/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*�
value�B�HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *V
dtypesL
J2H	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_142Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_143IdentityIdentity_142:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_143Identity_143:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_56/kernel:.*
(
_user_specified_nameconv2d_56/bias:<8
6
_user_specified_namebatch_normalization_99/gamma:;7
5
_user_specified_namebatch_normalization_99/beta:B>
<
_user_specified_name$"batch_normalization_99/moving_mean:FB
@
_user_specified_name(&batch_normalization_99/moving_variance:0,
*
_user_specified_nameconv2d_57/kernel:.*
(
_user_specified_nameconv2d_57/bias:=	9
7
_user_specified_namebatch_normalization_100/gamma:<
8
6
_user_specified_namebatch_normalization_100/beta:C?
=
_user_specified_name%#batch_normalization_100/moving_mean:GC
A
_user_specified_name)'batch_normalization_100/moving_variance:40
.
_user_specified_namenew_dense_27/weights:3/
-
_user_specified_namenew_dense_27/biases:=9
7
_user_specified_namebatch_normalization_101/gamma:<8
6
_user_specified_namebatch_normalization_101/beta:C?
=
_user_specified_name%#batch_normalization_101/moving_mean:GC
A
_user_specified_name)'batch_normalization_101/moving_variance:40
.
_user_specified_namenew_dense_28/weights:3/
-
_user_specified_namenew_dense_28/biases:=9
7
_user_specified_namebatch_normalization_102/gamma:<8
6
_user_specified_namebatch_normalization_102/beta:C?
=
_user_specified_name%#batch_normalization_102/moving_mean:GC
A
_user_specified_name)'batch_normalization_102/moving_variance:40
.
_user_specified_namenew_dense_29/weights:3/
-
_user_specified_namenew_dense_29/biases:)%
#
_user_specified_name	Adam/iter:+'
%
_user_specified_nameAdam/beta_1:+'
%
_user_specified_nameAdam/beta_2:*&
$
_user_specified_name
Adam/decay:2.
,
_user_specified_nameAdam/learning_rate:' #
!
_user_specified_name	total_1:'!#
!
_user_specified_name	count_1:%"!

_user_specified_nametotal:%#!

_user_specified_namecount:7$3
1
_user_specified_nameAdam/conv2d_56/kernel/m:5%1
/
_user_specified_nameAdam/conv2d_56/bias/m:C&?
=
_user_specified_name%#Adam/batch_normalization_99/gamma/m:B'>
<
_user_specified_name$"Adam/batch_normalization_99/beta/m:7(3
1
_user_specified_nameAdam/conv2d_57/kernel/m:5)1
/
_user_specified_nameAdam/conv2d_57/bias/m:D*@
>
_user_specified_name&$Adam/batch_normalization_100/gamma/m:C+?
=
_user_specified_name%#Adam/batch_normalization_100/beta/m:;,7
5
_user_specified_nameAdam/new_dense_27/weights/m::-6
4
_user_specified_nameAdam/new_dense_27/biases/m:D.@
>
_user_specified_name&$Adam/batch_normalization_101/gamma/m:C/?
=
_user_specified_name%#Adam/batch_normalization_101/beta/m:;07
5
_user_specified_nameAdam/new_dense_28/weights/m::16
4
_user_specified_nameAdam/new_dense_28/biases/m:D2@
>
_user_specified_name&$Adam/batch_normalization_102/gamma/m:C3?
=
_user_specified_name%#Adam/batch_normalization_102/beta/m:;47
5
_user_specified_nameAdam/new_dense_29/weights/m::56
4
_user_specified_nameAdam/new_dense_29/biases/m:763
1
_user_specified_nameAdam/conv2d_56/kernel/v:571
/
_user_specified_nameAdam/conv2d_56/bias/v:C8?
=
_user_specified_name%#Adam/batch_normalization_99/gamma/v:B9>
<
_user_specified_name$"Adam/batch_normalization_99/beta/v:7:3
1
_user_specified_nameAdam/conv2d_57/kernel/v:5;1
/
_user_specified_nameAdam/conv2d_57/bias/v:D<@
>
_user_specified_name&$Adam/batch_normalization_100/gamma/v:C=?
=
_user_specified_name%#Adam/batch_normalization_100/beta/v:;>7
5
_user_specified_nameAdam/new_dense_27/weights/v::?6
4
_user_specified_nameAdam/new_dense_27/biases/v:D@@
>
_user_specified_name&$Adam/batch_normalization_101/gamma/v:CA?
=
_user_specified_name%#Adam/batch_normalization_101/beta/v:;B7
5
_user_specified_nameAdam/new_dense_28/weights/v::C6
4
_user_specified_nameAdam/new_dense_28/biases/v:DD@
>
_user_specified_name&$Adam/batch_normalization_102/gamma/v:CE?
=
_user_specified_name%#Adam/batch_normalization_102/beta/v:;F7
5
_user_specified_nameAdam/new_dense_29/weights/v::G6
4
_user_specified_nameAdam/new_dense_29/biases/v:=H9

_output_shapes
: 

_user_specified_nameConst
�
G
+__inference_flatten_26_layer_call_fn_200350

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_199796b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������55:W S
/
_output_shapes
:���������55
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200243

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
-__inference_new_dense_27_layer_call_fn_200365
input_features
unknown:
��d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_featuresunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_27_layer_call_and_return_conditional_losses_199808o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
)
_output_shapes
:�����������
(
_user_specified_nameinput_features:&"
 
_user_specified_name200359:&"
 
_user_specified_name200361
�
h
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_200253

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_101_layer_call_fn_200402

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_199630o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:&"
 
_user_specified_name200392:&"
 
_user_specified_name200394:&"
 
_user_specified_name200396:&"
 
_user_specified_name200398
�

�
H__inference_new_dense_29_layer_call_and_return_conditional_losses_199858
input_features0
matmul_readvariableop_resource:
)
add_readvariableop_resource:
identity��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0q
MatMulMatMulinput_featuresMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������O
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
'
_output_shapes
:���������

(
_user_specified_nameinput_features:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_conv2d_57_layer_call_and_return_conditional_losses_200273

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������kk*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������kkX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������kki
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������kkS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������nn: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������nn
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200456

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�&
�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200436

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
-__inference_sequential_9_layer_call_fn_199990
input_13!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_199865o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_13:&"
 
_user_specified_name199936:&"
 
_user_specified_name199938:&"
 
_user_specified_name199940:&"
 
_user_specified_name199942:&"
 
_user_specified_name199944:&"
 
_user_specified_name199946:&"
 
_user_specified_name199948:&"
 
_user_specified_name199950:&	"
 
_user_specified_name199952:&
"
 
_user_specified_name199954:&"
 
_user_specified_name199956:&"
 
_user_specified_name199958:&"
 
_user_specified_name199960:&"
 
_user_specified_name199962:&"
 
_user_specified_name199964:&"
 
_user_specified_name199966:&"
 
_user_specified_name199968:&"
 
_user_specified_name199970:&"
 
_user_specified_name199972:&"
 
_user_specified_name199974:&"
 
_user_specified_name199976:&"
 
_user_specified_name199978:&"
 
_user_specified_name199980:&"
 
_user_specified_name199982:&"
 
_user_specified_name199984:&"
 
_user_specified_name199986
�
�
E__inference_conv2d_56_layer_call_and_return_conditional_losses_200181

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�/
"__inference__traced_restore_201246
file_prefix;
!assignvariableop_conv2d_56_kernel:/
!assignvariableop_1_conv2d_56_bias:=
/assignvariableop_2_batch_normalization_99_gamma:<
.assignvariableop_3_batch_normalization_99_beta:C
5assignvariableop_4_batch_normalization_99_moving_mean:G
9assignvariableop_5_batch_normalization_99_moving_variance:=
#assignvariableop_6_conv2d_57_kernel:/
!assignvariableop_7_conv2d_57_bias:>
0assignvariableop_8_batch_normalization_100_gamma:=
/assignvariableop_9_batch_normalization_100_beta:E
7assignvariableop_10_batch_normalization_100_moving_mean:I
;assignvariableop_11_batch_normalization_100_moving_variance:<
(assignvariableop_12_new_dense_27_weights:
��d5
'assignvariableop_13_new_dense_27_biases:d?
1assignvariableop_14_batch_normalization_101_gamma:d>
0assignvariableop_15_batch_normalization_101_beta:dE
7assignvariableop_16_batch_normalization_101_moving_mean:dI
;assignvariableop_17_batch_normalization_101_moving_variance:d:
(assignvariableop_18_new_dense_28_weights:d
5
'assignvariableop_19_new_dense_28_biases:
?
1assignvariableop_20_batch_normalization_102_gamma:
>
0assignvariableop_21_batch_normalization_102_beta:
E
7assignvariableop_22_batch_normalization_102_moving_mean:
I
;assignvariableop_23_batch_normalization_102_moving_variance:
:
(assignvariableop_24_new_dense_29_weights:
5
'assignvariableop_25_new_dense_29_biases:'
assignvariableop_26_adam_iter:	 )
assignvariableop_27_adam_beta_1: )
assignvariableop_28_adam_beta_2: (
assignvariableop_29_adam_decay: 0
&assignvariableop_30_adam_learning_rate: %
assignvariableop_31_total_1: %
assignvariableop_32_count_1: #
assignvariableop_33_total: #
assignvariableop_34_count: E
+assignvariableop_35_adam_conv2d_56_kernel_m:7
)assignvariableop_36_adam_conv2d_56_bias_m:E
7assignvariableop_37_adam_batch_normalization_99_gamma_m:D
6assignvariableop_38_adam_batch_normalization_99_beta_m:E
+assignvariableop_39_adam_conv2d_57_kernel_m:7
)assignvariableop_40_adam_conv2d_57_bias_m:F
8assignvariableop_41_adam_batch_normalization_100_gamma_m:E
7assignvariableop_42_adam_batch_normalization_100_beta_m:C
/assignvariableop_43_adam_new_dense_27_weights_m:
��d<
.assignvariableop_44_adam_new_dense_27_biases_m:dF
8assignvariableop_45_adam_batch_normalization_101_gamma_m:dE
7assignvariableop_46_adam_batch_normalization_101_beta_m:dA
/assignvariableop_47_adam_new_dense_28_weights_m:d
<
.assignvariableop_48_adam_new_dense_28_biases_m:
F
8assignvariableop_49_adam_batch_normalization_102_gamma_m:
E
7assignvariableop_50_adam_batch_normalization_102_beta_m:
A
/assignvariableop_51_adam_new_dense_29_weights_m:
<
.assignvariableop_52_adam_new_dense_29_biases_m:E
+assignvariableop_53_adam_conv2d_56_kernel_v:7
)assignvariableop_54_adam_conv2d_56_bias_v:E
7assignvariableop_55_adam_batch_normalization_99_gamma_v:D
6assignvariableop_56_adam_batch_normalization_99_beta_v:E
+assignvariableop_57_adam_conv2d_57_kernel_v:7
)assignvariableop_58_adam_conv2d_57_bias_v:F
8assignvariableop_59_adam_batch_normalization_100_gamma_v:E
7assignvariableop_60_adam_batch_normalization_100_beta_v:C
/assignvariableop_61_adam_new_dense_27_weights_v:
��d<
.assignvariableop_62_adam_new_dense_27_biases_v:dF
8assignvariableop_63_adam_batch_normalization_101_gamma_v:dE
7assignvariableop_64_adam_batch_normalization_101_beta_v:dA
/assignvariableop_65_adam_new_dense_28_weights_v:d
<
.assignvariableop_66_adam_new_dense_28_biases_v:
F
8assignvariableop_67_adam_batch_normalization_102_gamma_v:
E
7assignvariableop_68_adam_batch_normalization_102_beta_v:
A
/assignvariableop_69_adam_new_dense_29_weights_v:
<
.assignvariableop_70_adam_new_dense_29_biases_v:
identity_72��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_8�AssignVariableOp_9�'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*�'
value�&B�&HB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-4/weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/biases/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-6/weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/biases/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-8/weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/biases/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-8/weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/biases/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-8/weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/biases/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*�
value�B�HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_56_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_56_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_99_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_99_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_99_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_99_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_57_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_57_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_100_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_100_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_100_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_100_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_new_dense_27_weightsIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_new_dense_27_biasesIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_101_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_101_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_101_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_101_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_new_dense_28_weightsIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp'assignvariableop_19_new_dense_28_biasesIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_102_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_102_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_102_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_102_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_new_dense_29_weightsIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_new_dense_29_biasesIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_iterIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_2Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_decayIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_learning_rateIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_56_kernel_mIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_56_bias_mIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adam_batch_normalization_99_gamma_mIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_batch_normalization_99_beta_mIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_57_kernel_mIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_57_bias_mIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp8assignvariableop_41_adam_batch_normalization_100_gamma_mIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp7assignvariableop_42_adam_batch_normalization_100_beta_mIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp/assignvariableop_43_adam_new_dense_27_weights_mIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp.assignvariableop_44_adam_new_dense_27_biases_mIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_batch_normalization_101_gamma_mIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_batch_normalization_101_beta_mIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp/assignvariableop_47_adam_new_dense_28_weights_mIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp.assignvariableop_48_adam_new_dense_28_biases_mIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp8assignvariableop_49_adam_batch_normalization_102_gamma_mIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_102_beta_mIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp/assignvariableop_51_adam_new_dense_29_weights_mIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp.assignvariableop_52_adam_new_dense_29_biases_mIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_56_kernel_vIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_56_bias_vIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_batch_normalization_99_gamma_vIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_99_beta_vIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv2d_57_kernel_vIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv2d_57_bias_vIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp8assignvariableop_59_adam_batch_normalization_100_gamma_vIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_batch_normalization_100_beta_vIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp/assignvariableop_61_adam_new_dense_27_weights_vIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp.assignvariableop_62_adam_new_dense_27_biases_vIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp8assignvariableop_63_adam_batch_normalization_101_gamma_vIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp7assignvariableop_64_adam_batch_normalization_101_beta_vIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp/assignvariableop_65_adam_new_dense_28_weights_vIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp.assignvariableop_66_adam_new_dense_28_biases_vIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp8assignvariableop_67_adam_batch_normalization_102_gamma_vIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp7assignvariableop_68_adam_batch_normalization_102_beta_vIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp/assignvariableop_69_adam_new_dense_29_weights_vIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp.assignvariableop_70_adam_new_dense_29_biases_vIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_72IdentityIdentity_71:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_72Identity_72:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_70AssignVariableOp_702(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_56/kernel:.*
(
_user_specified_nameconv2d_56/bias:<8
6
_user_specified_namebatch_normalization_99/gamma:;7
5
_user_specified_namebatch_normalization_99/beta:B>
<
_user_specified_name$"batch_normalization_99/moving_mean:FB
@
_user_specified_name(&batch_normalization_99/moving_variance:0,
*
_user_specified_nameconv2d_57/kernel:.*
(
_user_specified_nameconv2d_57/bias:=	9
7
_user_specified_namebatch_normalization_100/gamma:<
8
6
_user_specified_namebatch_normalization_100/beta:C?
=
_user_specified_name%#batch_normalization_100/moving_mean:GC
A
_user_specified_name)'batch_normalization_100/moving_variance:40
.
_user_specified_namenew_dense_27/weights:3/
-
_user_specified_namenew_dense_27/biases:=9
7
_user_specified_namebatch_normalization_101/gamma:<8
6
_user_specified_namebatch_normalization_101/beta:C?
=
_user_specified_name%#batch_normalization_101/moving_mean:GC
A
_user_specified_name)'batch_normalization_101/moving_variance:40
.
_user_specified_namenew_dense_28/weights:3/
-
_user_specified_namenew_dense_28/biases:=9
7
_user_specified_namebatch_normalization_102/gamma:<8
6
_user_specified_namebatch_normalization_102/beta:C?
=
_user_specified_name%#batch_normalization_102/moving_mean:GC
A
_user_specified_name)'batch_normalization_102/moving_variance:40
.
_user_specified_namenew_dense_29/weights:3/
-
_user_specified_namenew_dense_29/biases:)%
#
_user_specified_name	Adam/iter:+'
%
_user_specified_nameAdam/beta_1:+'
%
_user_specified_nameAdam/beta_2:*&
$
_user_specified_name
Adam/decay:2.
,
_user_specified_nameAdam/learning_rate:' #
!
_user_specified_name	total_1:'!#
!
_user_specified_name	count_1:%"!

_user_specified_nametotal:%#!

_user_specified_namecount:7$3
1
_user_specified_nameAdam/conv2d_56/kernel/m:5%1
/
_user_specified_nameAdam/conv2d_56/bias/m:C&?
=
_user_specified_name%#Adam/batch_normalization_99/gamma/m:B'>
<
_user_specified_name$"Adam/batch_normalization_99/beta/m:7(3
1
_user_specified_nameAdam/conv2d_57/kernel/m:5)1
/
_user_specified_nameAdam/conv2d_57/bias/m:D*@
>
_user_specified_name&$Adam/batch_normalization_100/gamma/m:C+?
=
_user_specified_name%#Adam/batch_normalization_100/beta/m:;,7
5
_user_specified_nameAdam/new_dense_27/weights/m::-6
4
_user_specified_nameAdam/new_dense_27/biases/m:D.@
>
_user_specified_name&$Adam/batch_normalization_101/gamma/m:C/?
=
_user_specified_name%#Adam/batch_normalization_101/beta/m:;07
5
_user_specified_nameAdam/new_dense_28/weights/m::16
4
_user_specified_nameAdam/new_dense_28/biases/m:D2@
>
_user_specified_name&$Adam/batch_normalization_102/gamma/m:C3?
=
_user_specified_name%#Adam/batch_normalization_102/beta/m:;47
5
_user_specified_nameAdam/new_dense_29/weights/m::56
4
_user_specified_nameAdam/new_dense_29/biases/m:763
1
_user_specified_nameAdam/conv2d_56/kernel/v:571
/
_user_specified_nameAdam/conv2d_56/bias/v:C8?
=
_user_specified_name%#Adam/batch_normalization_99/gamma/v:B9>
<
_user_specified_name$"Adam/batch_normalization_99/beta/v:7:3
1
_user_specified_nameAdam/conv2d_57/kernel/v:5;1
/
_user_specified_nameAdam/conv2d_57/bias/v:D<@
>
_user_specified_name&$Adam/batch_normalization_100/gamma/v:C=?
=
_user_specified_name%#Adam/batch_normalization_100/beta/v:;>7
5
_user_specified_nameAdam/new_dense_27/weights/v::?6
4
_user_specified_nameAdam/new_dense_27/biases/v:D@@
>
_user_specified_name&$Adam/batch_normalization_101/gamma/v:CA?
=
_user_specified_name%#Adam/batch_normalization_101/beta/v:;B7
5
_user_specified_nameAdam/new_dense_28/weights/v::C6
4
_user_specified_nameAdam/new_dense_28/biases/v:DD@
>
_user_specified_name&$Adam/batch_normalization_102/gamma/v:CE?
=
_user_specified_name%#Adam/batch_normalization_102/beta/v:;F7
5
_user_specified_nameAdam/new_dense_29/weights/v::G6
4
_user_specified_nameAdam/new_dense_29/biases/v
�

�
H__inference_new_dense_27_layer_call_and_return_conditional_losses_199808
input_features2
matmul_readvariableop_resource:
��d)
add_readvariableop_resource:d
identity��MatMul/ReadVariableOp�add/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0q
MatMulMatMulinput_featuresMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:d*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dG
ReluReluadd:z:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dO
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:Y U
)
_output_shapes
:�����������
(
_user_specified_nameinput_features:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
H__inference_new_dense_28_layer_call_and_return_conditional_losses_199833
input_features0
matmul_readvariableop_resource:d
)
add_readvariableop_resource:

identity��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype0q
MatMulMatMulinput_featuresMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
O
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
'
_output_shapes
:���������d
(
_user_specified_nameinput_features:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
-__inference_new_dense_29_layer_call_fn_200565
input_features
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_featuresunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_29_layer_call_and_return_conditional_losses_199858o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������

(
_user_specified_nameinput_features:&"
 
_user_specified_name200559:&"
 
_user_specified_name200561
�
b
F__inference_flatten_26_layer_call_and_return_conditional_losses_199796

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"������  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������55:W S
/
_output_shapes
:���������55
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_199499

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�K
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_199865
input_13*
conv2d_56_199750:
conv2d_56_199752:+
batch_normalization_99_199755:+
batch_normalization_99_199757:+
batch_normalization_99_199759:+
batch_normalization_99_199761:*
conv2d_57_199776:
conv2d_57_199778:,
batch_normalization_100_199781:,
batch_normalization_100_199783:,
batch_normalization_100_199785:,
batch_normalization_100_199787:'
new_dense_27_199809:
��d!
new_dense_27_199811:d,
batch_normalization_101_199814:d,
batch_normalization_101_199816:d,
batch_normalization_101_199818:d,
batch_normalization_101_199820:d%
new_dense_28_199834:d
!
new_dense_28_199836:
,
batch_normalization_102_199839:
,
batch_normalization_102_199841:
,
batch_normalization_102_199843:
,
batch_normalization_102_199845:
%
new_dense_29_199859:
!
new_dense_29_199861:
identity��/batch_normalization_100/StatefulPartitionedCall�/batch_normalization_101/StatefulPartitionedCall�/batch_normalization_102/StatefulPartitionedCall�.batch_normalization_99/StatefulPartitionedCall�!conv2d_56/StatefulPartitionedCall�!conv2d_57/StatefulPartitionedCall�$new_dense_27/StatefulPartitionedCall�$new_dense_28/StatefulPartitionedCall�$new_dense_29/StatefulPartitionedCall�
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCallinput_13conv2d_56_199750conv2d_56_199752*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_56_layer_call_and_return_conditional_losses_199749�
.batch_normalization_99/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0batch_normalization_99_199755batch_normalization_99_199757batch_normalization_99_199759batch_normalization_99_199761*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_199450�
 max_pooling2d_53/PartitionedCallPartitionedCall7batch_normalization_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������nn* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_199499�
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_57_199776conv2d_57_199778*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������kk*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_199775�
/batch_normalization_100/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_100_199781batch_normalization_100_199783batch_normalization_100_199785batch_normalization_100_199787*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������kk*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_199522�
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������55* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_199571�
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_199796�
$new_dense_27/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0new_dense_27_199809new_dense_27_199811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_27_layer_call_and_return_conditional_losses_199808�
/batch_normalization_101/StatefulPartitionedCallStatefulPartitionedCall-new_dense_27/StatefulPartitionedCall:output:0batch_normalization_101_199814batch_normalization_101_199816batch_normalization_101_199818batch_normalization_101_199820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_199610�
$new_dense_28/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_101/StatefulPartitionedCall:output:0new_dense_28_199834new_dense_28_199836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_28_layer_call_and_return_conditional_losses_199833�
/batch_normalization_102/StatefulPartitionedCallStatefulPartitionedCall-new_dense_28/StatefulPartitionedCall:output:0batch_normalization_102_199839batch_normalization_102_199841batch_normalization_102_199843batch_normalization_102_199845*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_199690�
$new_dense_29/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_102/StatefulPartitionedCall:output:0new_dense_29_199859new_dense_29_199861*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_29_layer_call_and_return_conditional_losses_199858|
IdentityIdentity-new_dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_100/StatefulPartitionedCall0^batch_normalization_101/StatefulPartitionedCall0^batch_normalization_102/StatefulPartitionedCall/^batch_normalization_99/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall%^new_dense_27/StatefulPartitionedCall%^new_dense_28/StatefulPartitionedCall%^new_dense_29/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_100/StatefulPartitionedCall/batch_normalization_100/StatefulPartitionedCall2b
/batch_normalization_101/StatefulPartitionedCall/batch_normalization_101/StatefulPartitionedCall2b
/batch_normalization_102/StatefulPartitionedCall/batch_normalization_102/StatefulPartitionedCall2`
.batch_normalization_99/StatefulPartitionedCall.batch_normalization_99/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2L
$new_dense_27/StatefulPartitionedCall$new_dense_27/StatefulPartitionedCall2L
$new_dense_28/StatefulPartitionedCall$new_dense_28/StatefulPartitionedCall2L
$new_dense_29/StatefulPartitionedCall$new_dense_29/StatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_13:&"
 
_user_specified_name199750:&"
 
_user_specified_name199752:&"
 
_user_specified_name199755:&"
 
_user_specified_name199757:&"
 
_user_specified_name199759:&"
 
_user_specified_name199761:&"
 
_user_specified_name199776:&"
 
_user_specified_name199778:&	"
 
_user_specified_name199781:&
"
 
_user_specified_name199783:&"
 
_user_specified_name199785:&"
 
_user_specified_name199787:&"
 
_user_specified_name199809:&"
 
_user_specified_name199811:&"
 
_user_specified_name199814:&"
 
_user_specified_name199816:&"
 
_user_specified_name199818:&"
 
_user_specified_name199820:&"
 
_user_specified_name199834:&"
 
_user_specified_name199836:&"
 
_user_specified_name199839:&"
 
_user_specified_name199841:&"
 
_user_specified_name199843:&"
 
_user_specified_name199845:&"
 
_user_specified_name199859:&"
 
_user_specified_name199861
�

�
H__inference_new_dense_28_layer_call_and_return_conditional_losses_200476
input_features0
matmul_readvariableop_resource:d
)
add_readvariableop_resource:

identity��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype0q
MatMulMatMulinput_featuresMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
O
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
'
_output_shapes
:���������d
(
_user_specified_nameinput_features:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
-__inference_new_dense_28_layer_call_fn_200465
input_features
unknown:d

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_featuresunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_28_layer_call_and_return_conditional_losses_199833o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������d
(
_user_specified_nameinput_features:&"
 
_user_specified_name200459:&"
 
_user_specified_name200461
�
b
F__inference_flatten_26_layer_call_and_return_conditional_losses_200356

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"������  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������55:W S
/
_output_shapes
:���������55
 
_user_specified_nameinputs
�&
�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_199690

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
/
!batchnorm_readvariableop_resource:

identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:
v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
M
1__inference_max_pooling2d_54_layer_call_fn_200340

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_199571�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_57_layer_call_fn_200262

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������kk*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_199775w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������kk<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������nn: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������nn
 
_user_specified_nameinputs:&"
 
_user_specified_name200256:&"
 
_user_specified_name200258
�

�
H__inference_new_dense_29_layer_call_and_return_conditional_losses_200576
input_features0
matmul_readvariableop_resource:
)
add_readvariableop_resource:
identity��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0q
MatMulMatMulinput_featuresMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������O
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:W S
'
_output_shapes
:���������

(
_user_specified_nameinput_features:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�&
�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_199610

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_199630

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_199540

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
8__inference_batch_normalization_102_layer_call_fn_200502

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_199710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:&"
 
_user_specified_name200492:&"
 
_user_specified_name200494:&"
 
_user_specified_name200496:&"
 
_user_specified_name200498
�

�
H__inference_new_dense_27_layer_call_and_return_conditional_losses_200376
input_features2
matmul_readvariableop_resource:
��d)
add_readvariableop_resource:d
identity��MatMul/ReadVariableOp�add/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0q
MatMulMatMulinput_featuresMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:d*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dG
ReluReluadd:z:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dO
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:Y U
)
_output_shapes
:�����������
(
_user_specified_nameinput_features:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_199522

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
î
�
!__inference__wrapped_model_199432
input_13O
5sequential_9_conv2d_56_conv2d_readvariableop_resource:D
6sequential_9_conv2d_56_biasadd_readvariableop_resource:I
;sequential_9_batch_normalization_99_readvariableop_resource:K
=sequential_9_batch_normalization_99_readvariableop_1_resource:Z
Lsequential_9_batch_normalization_99_fusedbatchnormv3_readvariableop_resource:\
Nsequential_9_batch_normalization_99_fusedbatchnormv3_readvariableop_1_resource:O
5sequential_9_conv2d_57_conv2d_readvariableop_resource:D
6sequential_9_conv2d_57_biasadd_readvariableop_resource:J
<sequential_9_batch_normalization_100_readvariableop_resource:L
>sequential_9_batch_normalization_100_readvariableop_1_resource:[
Msequential_9_batch_normalization_100_fusedbatchnormv3_readvariableop_resource:]
Osequential_9_batch_normalization_100_fusedbatchnormv3_readvariableop_1_resource:L
8sequential_9_new_dense_27_matmul_readvariableop_resource:
��dC
5sequential_9_new_dense_27_add_readvariableop_resource:dT
Fsequential_9_batch_normalization_101_batchnorm_readvariableop_resource:dX
Jsequential_9_batch_normalization_101_batchnorm_mul_readvariableop_resource:dV
Hsequential_9_batch_normalization_101_batchnorm_readvariableop_1_resource:dV
Hsequential_9_batch_normalization_101_batchnorm_readvariableop_2_resource:dJ
8sequential_9_new_dense_28_matmul_readvariableop_resource:d
C
5sequential_9_new_dense_28_add_readvariableop_resource:
T
Fsequential_9_batch_normalization_102_batchnorm_readvariableop_resource:
X
Jsequential_9_batch_normalization_102_batchnorm_mul_readvariableop_resource:
V
Hsequential_9_batch_normalization_102_batchnorm_readvariableop_1_resource:
V
Hsequential_9_batch_normalization_102_batchnorm_readvariableop_2_resource:
J
8sequential_9_new_dense_29_matmul_readvariableop_resource:
C
5sequential_9_new_dense_29_add_readvariableop_resource:
identity��Dsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp�Fsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp_1�3sequential_9/batch_normalization_100/ReadVariableOp�5sequential_9/batch_normalization_100/ReadVariableOp_1�=sequential_9/batch_normalization_101/batchnorm/ReadVariableOp�?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_1�?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_2�Asequential_9/batch_normalization_101/batchnorm/mul/ReadVariableOp�=sequential_9/batch_normalization_102/batchnorm/ReadVariableOp�?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_1�?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_2�Asequential_9/batch_normalization_102/batchnorm/mul/ReadVariableOp�Csequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp�Esequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp_1�2sequential_9/batch_normalization_99/ReadVariableOp�4sequential_9/batch_normalization_99/ReadVariableOp_1�-sequential_9/conv2d_56/BiasAdd/ReadVariableOp�,sequential_9/conv2d_56/Conv2D/ReadVariableOp�-sequential_9/conv2d_57/BiasAdd/ReadVariableOp�,sequential_9/conv2d_57/Conv2D/ReadVariableOp�/sequential_9/new_dense_27/MatMul/ReadVariableOp�,sequential_9/new_dense_27/add/ReadVariableOp�/sequential_9/new_dense_28/MatMul/ReadVariableOp�,sequential_9/new_dense_28/add/ReadVariableOp�/sequential_9/new_dense_29/MatMul/ReadVariableOp�,sequential_9/new_dense_29/add/ReadVariableOp�
,sequential_9/conv2d_56/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_9/conv2d_56/Conv2DConv2Dinput_134sequential_9/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
-sequential_9/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_9/conv2d_56/BiasAddBiasAdd&sequential_9/conv2d_56/Conv2D:output:05sequential_9/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
sequential_9/conv2d_56/ReluRelu'sequential_9/conv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:������������
2sequential_9/batch_normalization_99/ReadVariableOpReadVariableOp;sequential_9_batch_normalization_99_readvariableop_resource*
_output_shapes
:*
dtype0�
4sequential_9/batch_normalization_99/ReadVariableOp_1ReadVariableOp=sequential_9_batch_normalization_99_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Csequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_9_batch_normalization_99_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Esequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_9_batch_normalization_99_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4sequential_9/batch_normalization_99/FusedBatchNormV3FusedBatchNormV3)sequential_9/conv2d_56/Relu:activations:0:sequential_9/batch_normalization_99/ReadVariableOp:value:0<sequential_9/batch_normalization_99/ReadVariableOp_1:value:0Ksequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp:value:0Msequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
%sequential_9/max_pooling2d_53/MaxPoolMaxPool8sequential_9/batch_normalization_99/FusedBatchNormV3:y:0*/
_output_shapes
:���������nn*
ksize
*
paddingVALID*
strides
�
,sequential_9/conv2d_57/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_9/conv2d_57/Conv2DConv2D.sequential_9/max_pooling2d_53/MaxPool:output:04sequential_9/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������kk*
paddingVALID*
strides
�
-sequential_9/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_9/conv2d_57/BiasAddBiasAdd&sequential_9/conv2d_57/Conv2D:output:05sequential_9/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������kk�
sequential_9/conv2d_57/ReluRelu'sequential_9/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:���������kk�
3sequential_9/batch_normalization_100/ReadVariableOpReadVariableOp<sequential_9_batch_normalization_100_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_9/batch_normalization_100/ReadVariableOp_1ReadVariableOp>sequential_9_batch_normalization_100_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_9_batch_normalization_100_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Fsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_9_batch_normalization_100_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
5sequential_9/batch_normalization_100/FusedBatchNormV3FusedBatchNormV3)sequential_9/conv2d_57/Relu:activations:0;sequential_9/batch_normalization_100/ReadVariableOp:value:0=sequential_9/batch_normalization_100/ReadVariableOp_1:value:0Lsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������kk:::::*
epsilon%o�:*
is_training( �
%sequential_9/max_pooling2d_54/MaxPoolMaxPool9sequential_9/batch_normalization_100/FusedBatchNormV3:y:0*/
_output_shapes
:���������55*
ksize
*
paddingVALID*
strides
n
sequential_9/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"������  �
sequential_9/flatten_26/ReshapeReshape.sequential_9/max_pooling2d_54/MaxPool:output:0&sequential_9/flatten_26/Const:output:0*
T0*)
_output_shapes
:������������
/sequential_9/new_dense_27/MatMul/ReadVariableOpReadVariableOp8sequential_9_new_dense_27_matmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0�
 sequential_9/new_dense_27/MatMulMatMul(sequential_9/flatten_26/Reshape:output:07sequential_9/new_dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
,sequential_9/new_dense_27/add/ReadVariableOpReadVariableOp5sequential_9_new_dense_27_add_readvariableop_resource*
_output_shapes
:d*
dtype0�
sequential_9/new_dense_27/addAddV2*sequential_9/new_dense_27/MatMul:product:04sequential_9/new_dense_27/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d{
sequential_9/new_dense_27/ReluRelu!sequential_9/new_dense_27/add:z:0*
T0*'
_output_shapes
:���������d�
=sequential_9/batch_normalization_101/batchnorm/ReadVariableOpReadVariableOpFsequential_9_batch_normalization_101_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0y
4sequential_9/batch_normalization_101/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_9/batch_normalization_101/batchnorm/addAddV2Esequential_9/batch_normalization_101/batchnorm/ReadVariableOp:value:0=sequential_9/batch_normalization_101/batchnorm/add/y:output:0*
T0*
_output_shapes
:d�
4sequential_9/batch_normalization_101/batchnorm/RsqrtRsqrt6sequential_9/batch_normalization_101/batchnorm/add:z:0*
T0*
_output_shapes
:d�
Asequential_9/batch_normalization_101/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_9_batch_normalization_101_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
2sequential_9/batch_normalization_101/batchnorm/mulMul8sequential_9/batch_normalization_101/batchnorm/Rsqrt:y:0Isequential_9/batch_normalization_101/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
4sequential_9/batch_normalization_101/batchnorm/mul_1Mul,sequential_9/new_dense_27/Relu:activations:06sequential_9/batch_normalization_101/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_9_batch_normalization_101_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
4sequential_9/batch_normalization_101/batchnorm/mul_2MulGsequential_9/batch_normalization_101/batchnorm/ReadVariableOp_1:value:06sequential_9/batch_normalization_101/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_9_batch_normalization_101_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
2sequential_9/batch_normalization_101/batchnorm/subSubGsequential_9/batch_normalization_101/batchnorm/ReadVariableOp_2:value:08sequential_9/batch_normalization_101/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
4sequential_9/batch_normalization_101/batchnorm/add_1AddV28sequential_9/batch_normalization_101/batchnorm/mul_1:z:06sequential_9/batch_normalization_101/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d�
/sequential_9/new_dense_28/MatMul/ReadVariableOpReadVariableOp8sequential_9_new_dense_28_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0�
 sequential_9/new_dense_28/MatMulMatMul8sequential_9/batch_normalization_101/batchnorm/add_1:z:07sequential_9/new_dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
,sequential_9/new_dense_28/add/ReadVariableOpReadVariableOp5sequential_9_new_dense_28_add_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_9/new_dense_28/addAddV2*sequential_9/new_dense_28/MatMul:product:04sequential_9/new_dense_28/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
{
sequential_9/new_dense_28/ReluRelu!sequential_9/new_dense_28/add:z:0*
T0*'
_output_shapes
:���������
�
=sequential_9/batch_normalization_102/batchnorm/ReadVariableOpReadVariableOpFsequential_9_batch_normalization_102_batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0y
4sequential_9/batch_normalization_102/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_9/batch_normalization_102/batchnorm/addAddV2Esequential_9/batch_normalization_102/batchnorm/ReadVariableOp:value:0=sequential_9/batch_normalization_102/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
4sequential_9/batch_normalization_102/batchnorm/RsqrtRsqrt6sequential_9/batch_normalization_102/batchnorm/add:z:0*
T0*
_output_shapes
:
�
Asequential_9/batch_normalization_102/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_9_batch_normalization_102_batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0�
2sequential_9/batch_normalization_102/batchnorm/mulMul8sequential_9/batch_normalization_102/batchnorm/Rsqrt:y:0Isequential_9/batch_normalization_102/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
4sequential_9/batch_normalization_102/batchnorm/mul_1Mul,sequential_9/new_dense_28/Relu:activations:06sequential_9/batch_normalization_102/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_9_batch_normalization_102_batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0�
4sequential_9/batch_normalization_102/batchnorm/mul_2MulGsequential_9/batch_normalization_102/batchnorm/ReadVariableOp_1:value:06sequential_9/batch_normalization_102/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_9_batch_normalization_102_batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0�
2sequential_9/batch_normalization_102/batchnorm/subSubGsequential_9/batch_normalization_102/batchnorm/ReadVariableOp_2:value:08sequential_9/batch_normalization_102/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
4sequential_9/batch_normalization_102/batchnorm/add_1AddV28sequential_9/batch_normalization_102/batchnorm/mul_1:z:06sequential_9/batch_normalization_102/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
/sequential_9/new_dense_29/MatMul/ReadVariableOpReadVariableOp8sequential_9_new_dense_29_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
 sequential_9/new_dense_29/MatMulMatMul8sequential_9/batch_normalization_102/batchnorm/add_1:z:07sequential_9/new_dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_9/new_dense_29/add/ReadVariableOpReadVariableOp5sequential_9_new_dense_29_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_9/new_dense_29/addAddV2*sequential_9/new_dense_29/MatMul:product:04sequential_9/new_dense_29/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!sequential_9/new_dense_29/SigmoidSigmoid!sequential_9/new_dense_29/add:z:0*
T0*'
_output_shapes
:���������t
IdentityIdentity%sequential_9/new_dense_29/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpE^sequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOpG^sequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp_14^sequential_9/batch_normalization_100/ReadVariableOp6^sequential_9/batch_normalization_100/ReadVariableOp_1>^sequential_9/batch_normalization_101/batchnorm/ReadVariableOp@^sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_1@^sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_2B^sequential_9/batch_normalization_101/batchnorm/mul/ReadVariableOp>^sequential_9/batch_normalization_102/batchnorm/ReadVariableOp@^sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_1@^sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_2B^sequential_9/batch_normalization_102/batchnorm/mul/ReadVariableOpD^sequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOpF^sequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp_13^sequential_9/batch_normalization_99/ReadVariableOp5^sequential_9/batch_normalization_99/ReadVariableOp_1.^sequential_9/conv2d_56/BiasAdd/ReadVariableOp-^sequential_9/conv2d_56/Conv2D/ReadVariableOp.^sequential_9/conv2d_57/BiasAdd/ReadVariableOp-^sequential_9/conv2d_57/Conv2D/ReadVariableOp0^sequential_9/new_dense_27/MatMul/ReadVariableOp-^sequential_9/new_dense_27/add/ReadVariableOp0^sequential_9/new_dense_28/MatMul/ReadVariableOp-^sequential_9/new_dense_28/add/ReadVariableOp0^sequential_9/new_dense_29/MatMul/ReadVariableOp-^sequential_9/new_dense_29/add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Dsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOpDsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp2�
Fsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp_1Fsequential_9/batch_normalization_100/FusedBatchNormV3/ReadVariableOp_12j
3sequential_9/batch_normalization_100/ReadVariableOp3sequential_9/batch_normalization_100/ReadVariableOp2n
5sequential_9/batch_normalization_100/ReadVariableOp_15sequential_9/batch_normalization_100/ReadVariableOp_12~
=sequential_9/batch_normalization_101/batchnorm/ReadVariableOp=sequential_9/batch_normalization_101/batchnorm/ReadVariableOp2�
?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_1?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_12�
?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_2?sequential_9/batch_normalization_101/batchnorm/ReadVariableOp_22�
Asequential_9/batch_normalization_101/batchnorm/mul/ReadVariableOpAsequential_9/batch_normalization_101/batchnorm/mul/ReadVariableOp2~
=sequential_9/batch_normalization_102/batchnorm/ReadVariableOp=sequential_9/batch_normalization_102/batchnorm/ReadVariableOp2�
?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_1?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_12�
?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_2?sequential_9/batch_normalization_102/batchnorm/ReadVariableOp_22�
Asequential_9/batch_normalization_102/batchnorm/mul/ReadVariableOpAsequential_9/batch_normalization_102/batchnorm/mul/ReadVariableOp2�
Csequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOpCsequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp2�
Esequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp_1Esequential_9/batch_normalization_99/FusedBatchNormV3/ReadVariableOp_12h
2sequential_9/batch_normalization_99/ReadVariableOp2sequential_9/batch_normalization_99/ReadVariableOp2l
4sequential_9/batch_normalization_99/ReadVariableOp_14sequential_9/batch_normalization_99/ReadVariableOp_12^
-sequential_9/conv2d_56/BiasAdd/ReadVariableOp-sequential_9/conv2d_56/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_56/Conv2D/ReadVariableOp,sequential_9/conv2d_56/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_57/BiasAdd/ReadVariableOp-sequential_9/conv2d_57/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_57/Conv2D/ReadVariableOp,sequential_9/conv2d_57/Conv2D/ReadVariableOp2b
/sequential_9/new_dense_27/MatMul/ReadVariableOp/sequential_9/new_dense_27/MatMul/ReadVariableOp2\
,sequential_9/new_dense_27/add/ReadVariableOp,sequential_9/new_dense_27/add/ReadVariableOp2b
/sequential_9/new_dense_28/MatMul/ReadVariableOp/sequential_9/new_dense_28/MatMul/ReadVariableOp2\
,sequential_9/new_dense_28/add/ReadVariableOp,sequential_9/new_dense_28/add/ReadVariableOp2b
/sequential_9/new_dense_29/MatMul/ReadVariableOp/sequential_9/new_dense_29/MatMul/ReadVariableOp2\
,sequential_9/new_dense_29/add/ReadVariableOp,sequential_9/new_dense_29/add/ReadVariableOp:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_13:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
8__inference_batch_normalization_102_layer_call_fn_200489

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_199690o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:&"
 
_user_specified_name200479:&"
 
_user_specified_name200481:&"
 
_user_specified_name200483:&"
 
_user_specified_name200485
�
h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_200345

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
8__inference_batch_normalization_100_layer_call_fn_200286

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_199522�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name200276:&"
 
_user_specified_name200278:&"
 
_user_specified_name200280:&"
 
_user_specified_name200282
�K
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_199933
input_13*
conv2d_56_199868:
conv2d_56_199870:+
batch_normalization_99_199873:+
batch_normalization_99_199875:+
batch_normalization_99_199877:+
batch_normalization_99_199879:*
conv2d_57_199883:
conv2d_57_199885:,
batch_normalization_100_199888:,
batch_normalization_100_199890:,
batch_normalization_100_199892:,
batch_normalization_100_199894:'
new_dense_27_199899:
��d!
new_dense_27_199901:d,
batch_normalization_101_199904:d,
batch_normalization_101_199906:d,
batch_normalization_101_199908:d,
batch_normalization_101_199910:d%
new_dense_28_199913:d
!
new_dense_28_199915:
,
batch_normalization_102_199918:
,
batch_normalization_102_199920:
,
batch_normalization_102_199922:
,
batch_normalization_102_199924:
%
new_dense_29_199927:
!
new_dense_29_199929:
identity��/batch_normalization_100/StatefulPartitionedCall�/batch_normalization_101/StatefulPartitionedCall�/batch_normalization_102/StatefulPartitionedCall�.batch_normalization_99/StatefulPartitionedCall�!conv2d_56/StatefulPartitionedCall�!conv2d_57/StatefulPartitionedCall�$new_dense_27/StatefulPartitionedCall�$new_dense_28/StatefulPartitionedCall�$new_dense_29/StatefulPartitionedCall�
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCallinput_13conv2d_56_199868conv2d_56_199870*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_56_layer_call_and_return_conditional_losses_199749�
.batch_normalization_99/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0batch_normalization_99_199873batch_normalization_99_199875batch_normalization_99_199877batch_normalization_99_199879*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_199468�
 max_pooling2d_53/PartitionedCallPartitionedCall7batch_normalization_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������nn* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_199499�
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_57_199883conv2d_57_199885*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������kk*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_199775�
/batch_normalization_100/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_100_199888batch_normalization_100_199890batch_normalization_100_199892batch_normalization_100_199894*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������kk*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_199540�
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������55* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_199571�
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_199796�
$new_dense_27/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0new_dense_27_199899new_dense_27_199901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_27_layer_call_and_return_conditional_losses_199808�
/batch_normalization_101/StatefulPartitionedCallStatefulPartitionedCall-new_dense_27/StatefulPartitionedCall:output:0batch_normalization_101_199904batch_normalization_101_199906batch_normalization_101_199908batch_normalization_101_199910*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_199630�
$new_dense_28/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_101/StatefulPartitionedCall:output:0new_dense_28_199913new_dense_28_199915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_28_layer_call_and_return_conditional_losses_199833�
/batch_normalization_102/StatefulPartitionedCallStatefulPartitionedCall-new_dense_28/StatefulPartitionedCall:output:0batch_normalization_102_199918batch_normalization_102_199920batch_normalization_102_199922batch_normalization_102_199924*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_199710�
$new_dense_29/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_102/StatefulPartitionedCall:output:0new_dense_29_199927new_dense_29_199929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_new_dense_29_layer_call_and_return_conditional_losses_199858|
IdentityIdentity-new_dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_100/StatefulPartitionedCall0^batch_normalization_101/StatefulPartitionedCall0^batch_normalization_102/StatefulPartitionedCall/^batch_normalization_99/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall%^new_dense_27/StatefulPartitionedCall%^new_dense_28/StatefulPartitionedCall%^new_dense_29/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_100/StatefulPartitionedCall/batch_normalization_100/StatefulPartitionedCall2b
/batch_normalization_101/StatefulPartitionedCall/batch_normalization_101/StatefulPartitionedCall2b
/batch_normalization_102/StatefulPartitionedCall/batch_normalization_102/StatefulPartitionedCall2`
.batch_normalization_99/StatefulPartitionedCall.batch_normalization_99/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2L
$new_dense_27/StatefulPartitionedCall$new_dense_27/StatefulPartitionedCall2L
$new_dense_28/StatefulPartitionedCall$new_dense_28/StatefulPartitionedCall2L
$new_dense_29/StatefulPartitionedCall$new_dense_29/StatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_13:&"
 
_user_specified_name199868:&"
 
_user_specified_name199870:&"
 
_user_specified_name199873:&"
 
_user_specified_name199875:&"
 
_user_specified_name199877:&"
 
_user_specified_name199879:&"
 
_user_specified_name199883:&"
 
_user_specified_name199885:&	"
 
_user_specified_name199888:&
"
 
_user_specified_name199890:&"
 
_user_specified_name199892:&"
 
_user_specified_name199894:&"
 
_user_specified_name199899:&"
 
_user_specified_name199901:&"
 
_user_specified_name199904:&"
 
_user_specified_name199906:&"
 
_user_specified_name199908:&"
 
_user_specified_name199910:&"
 
_user_specified_name199913:&"
 
_user_specified_name199915:&"
 
_user_specified_name199918:&"
 
_user_specified_name199920:&"
 
_user_specified_name199922:&"
 
_user_specified_name199924:&"
 
_user_specified_name199927:&"
 
_user_specified_name199929
�
�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200556

inputs/
!batchnorm_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
1
#batchnorm_readvariableop_1_resource:
1
#batchnorm_readvariableop_2_resource:

identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:
z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_199571

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_53_layer_call_fn_200248

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_199499�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_199468

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200225

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
$__inference_signature_wrapper_200161
input_13!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_199432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_13:&"
 
_user_specified_name200107:&"
 
_user_specified_name200109:&"
 
_user_specified_name200111:&"
 
_user_specified_name200113:&"
 
_user_specified_name200115:&"
 
_user_specified_name200117:&"
 
_user_specified_name200119:&"
 
_user_specified_name200121:&	"
 
_user_specified_name200123:&
"
 
_user_specified_name200125:&"
 
_user_specified_name200127:&"
 
_user_specified_name200129:&"
 
_user_specified_name200131:&"
 
_user_specified_name200133:&"
 
_user_specified_name200135:&"
 
_user_specified_name200137:&"
 
_user_specified_name200139:&"
 
_user_specified_name200141:&"
 
_user_specified_name200143:&"
 
_user_specified_name200145:&"
 
_user_specified_name200147:&"
 
_user_specified_name200149:&"
 
_user_specified_name200151:&"
 
_user_specified_name200153:&"
 
_user_specified_name200155:&"
 
_user_specified_name200157
�
�
*__inference_conv2d_56_layer_call_fn_200170

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_56_layer_call_and_return_conditional_losses_199749y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name200164:&"
 
_user_specified_name200166
�

�
7__inference_batch_normalization_99_layer_call_fn_200207

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_199468�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name200197:&"
 
_user_specified_name200199:&"
 
_user_specified_name200201:&"
 
_user_specified_name200203
�&
�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200536

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
/
!batchnorm_readvariableop_resource:

identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:
v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200335

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200317

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_conv2d_57_layer_call_and_return_conditional_losses_199775

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������kk*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������kkX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������kki
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������kkS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������nn: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������nn
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
-__inference_sequential_9_layer_call_fn_200047
input_13!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_199933o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
input_13:&"
 
_user_specified_name199993:&"
 
_user_specified_name199995:&"
 
_user_specified_name199997:&"
 
_user_specified_name199999:&"
 
_user_specified_name200001:&"
 
_user_specified_name200003:&"
 
_user_specified_name200005:&"
 
_user_specified_name200007:&	"
 
_user_specified_name200009:&
"
 
_user_specified_name200011:&"
 
_user_specified_name200013:&"
 
_user_specified_name200015:&"
 
_user_specified_name200017:&"
 
_user_specified_name200019:&"
 
_user_specified_name200021:&"
 
_user_specified_name200023:&"
 
_user_specified_name200025:&"
 
_user_specified_name200027:&"
 
_user_specified_name200029:&"
 
_user_specified_name200031:&"
 
_user_specified_name200033:&"
 
_user_specified_name200035:&"
 
_user_specified_name200037:&"
 
_user_specified_name200039:&"
 
_user_specified_name200041:&"
 
_user_specified_name200043
�
�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_199450

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
input_13;
serving_default_input_13:0�����������@
new_dense_290
StatefulPartitionedCall:0���������tensorflow/serving/predict:ݿ
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%axis
	&gamma
'beta
(moving_mean
)moving_variance"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
Vweights
Vw

Wbiases
Wb"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	_gamma
`beta
amoving_mean
bmoving_variance"
_tf_keras_layer
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iweights
iw

jbiases
jb"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|weights
|w

}biases
}b"
_tf_keras_layer
�
0
1
&2
'3
(4
)5
66
77
@8
A9
B10
C11
V12
W13
_14
`15
a16
b17
i18
j19
r20
s21
t22
u23
|24
}25"
trackable_list_wrapper
�
0
1
&2
'3
64
75
@6
A7
V8
W9
_10
`11
i12
j13
r14
s15
|16
}17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
-__inference_sequential_9_layer_call_fn_199990
-__inference_sequential_9_layer_call_fn_200047�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
H__inference_sequential_9_layer_call_and_return_conditional_losses_199865
H__inference_sequential_9_layer_call_and_return_conditional_losses_199933�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
!__inference__wrapped_model_199432input_13"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�&m�'m�6m�7m�@m�Am�Vm�Wm�_m�`m�im�jm�rm�sm�|m�}m�v�v�&v�'v�6v�7v�@v�Av�Vv�Wv�_v�`v�iv�jv�rv�sv�|v�}v�"
	optimizer
-
�serving_default"
signature_map
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_56_layer_call_fn_200170�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_56_layer_call_and_return_conditional_losses_200181�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_56/kernel
:2conv2d_56/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
&0
'1
(2
)3"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_99_layer_call_fn_200194
7__inference_batch_normalization_99_layer_call_fn_200207�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200225
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200243�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_99/gamma
):'2batch_normalization_99/beta
2:0 (2"batch_normalization_99/moving_mean
6:4 (2&batch_normalization_99/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_53_layer_call_fn_200248�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_200253�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_57_layer_call_fn_200262�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_57_layer_call_and_return_conditional_losses_200273�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_57/kernel
:2conv2d_57/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
@0
A1
B2
C3"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_100_layer_call_fn_200286
8__inference_batch_normalization_100_layer_call_fn_200299�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200317
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200335�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_100/gamma
*:(2batch_normalization_100/beta
3:1 (2#batch_normalization_100/moving_mean
7:5 (2'batch_normalization_100/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_54_layer_call_fn_200340�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_200345�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_26_layer_call_fn_200350�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_26_layer_call_and_return_conditional_losses_200356�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_new_dense_27_layer_call_fn_200365�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_new_dense_27_layer_call_and_return_conditional_losses_200376�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(:&
��d2new_dense_27/weights
!:d2new_dense_27/biases
<
_0
`1
a2
b3"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_101_layer_call_fn_200389
8__inference_batch_normalization_101_layer_call_fn_200402�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200436
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200456�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)d2batch_normalization_101/gamma
*:(d2batch_normalization_101/beta
3:1d (2#batch_normalization_101/moving_mean
7:5d (2'batch_normalization_101/moving_variance
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_new_dense_28_layer_call_fn_200465�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_new_dense_28_layer_call_and_return_conditional_losses_200476�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$d
2new_dense_28/weights
!:
2new_dense_28/biases
<
r0
s1
t2
u3"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_102_layer_call_fn_200489
8__inference_batch_normalization_102_layer_call_fn_200502�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200536
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200556�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)
2batch_normalization_102/gamma
*:(
2batch_normalization_102/beta
3:1
 (2#batch_normalization_102/moving_mean
7:5
 (2'batch_normalization_102/moving_variance
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_new_dense_29_layer_call_fn_200565�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_new_dense_29_layer_call_and_return_conditional_losses_200576�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$
2new_dense_29/weights
!:2new_dense_29/biases
X
(0
)1
B2
C3
a4
b5
t6
u7"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_9_layer_call_fn_199990input_13"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_9_layer_call_fn_200047input_13"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_9_layer_call_and_return_conditional_losses_199865input_13"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_9_layer_call_and_return_conditional_losses_199933input_13"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_200161input_13"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_56_layer_call_fn_200170inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_56_layer_call_and_return_conditional_losses_200181inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_99_layer_call_fn_200194inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_99_layer_call_fn_200207inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200225inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200243inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_53_layer_call_fn_200248inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_200253inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_57_layer_call_fn_200262inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_57_layer_call_and_return_conditional_losses_200273inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_100_layer_call_fn_200286inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_100_layer_call_fn_200299inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200317inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200335inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_54_layer_call_fn_200340inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_200345inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_flatten_26_layer_call_fn_200350inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_26_layer_call_and_return_conditional_losses_200356inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_new_dense_27_layer_call_fn_200365input_features"�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_new_dense_27_layer_call_and_return_conditional_losses_200376input_features"�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_101_layer_call_fn_200389inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_101_layer_call_fn_200402inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200436inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200456inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_new_dense_28_layer_call_fn_200465input_features"�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_new_dense_28_layer_call_and_return_conditional_losses_200476input_features"�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_102_layer_call_fn_200489inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_102_layer_call_fn_200502inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200536inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200556inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_new_dense_29_layer_call_fn_200565input_features"�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_new_dense_29_layer_call_and_return_conditional_losses_200576input_features"�
���
FullArgSpec
args�
jinput_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_56/kernel/m
!:2Adam/conv2d_56/bias/m
/:-2#Adam/batch_normalization_99/gamma/m
.:,2"Adam/batch_normalization_99/beta/m
/:-2Adam/conv2d_57/kernel/m
!:2Adam/conv2d_57/bias/m
0:.2$Adam/batch_normalization_100/gamma/m
/:-2#Adam/batch_normalization_100/beta/m
-:+
��d2Adam/new_dense_27/weights/m
&:$d2Adam/new_dense_27/biases/m
0:.d2$Adam/batch_normalization_101/gamma/m
/:-d2#Adam/batch_normalization_101/beta/m
+:)d
2Adam/new_dense_28/weights/m
&:$
2Adam/new_dense_28/biases/m
0:.
2$Adam/batch_normalization_102/gamma/m
/:-
2#Adam/batch_normalization_102/beta/m
+:)
2Adam/new_dense_29/weights/m
&:$2Adam/new_dense_29/biases/m
/:-2Adam/conv2d_56/kernel/v
!:2Adam/conv2d_56/bias/v
/:-2#Adam/batch_normalization_99/gamma/v
.:,2"Adam/batch_normalization_99/beta/v
/:-2Adam/conv2d_57/kernel/v
!:2Adam/conv2d_57/bias/v
0:.2$Adam/batch_normalization_100/gamma/v
/:-2#Adam/batch_normalization_100/beta/v
-:+
��d2Adam/new_dense_27/weights/v
&:$d2Adam/new_dense_27/biases/v
0:.d2$Adam/batch_normalization_101/gamma/v
/:-d2#Adam/batch_normalization_101/beta/v
+:)d
2Adam/new_dense_28/weights/v
&:$
2Adam/new_dense_28/biases/v
0:.
2$Adam/batch_normalization_102/gamma/v
/:-
2#Adam/batch_normalization_102/beta/v
+:)
2Adam/new_dense_29/weights/v
&:$2Adam/new_dense_29/biases/v�
!__inference__wrapped_model_199432�&'()67@ABCVWb_a`ijurts|};�8
1�.
,�)
input_13�����������
� ";�8
6
new_dense_29&�#
new_dense_29����������
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200317�@ABCQ�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
S__inference_batch_normalization_100_layer_call_and_return_conditional_losses_200335�@ABCQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
8__inference_batch_normalization_100_layer_call_fn_200286�@ABCQ�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
8__inference_batch_normalization_100_layer_call_fn_200299�@ABCQ�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200436mab_`7�4
-�*
 �
inputs���������d
p

 
� ",�)
"�
tensor_0���������d
� �
S__inference_batch_normalization_101_layer_call_and_return_conditional_losses_200456mb_a`7�4
-�*
 �
inputs���������d
p 

 
� ",�)
"�
tensor_0���������d
� �
8__inference_batch_normalization_101_layer_call_fn_200389bab_`7�4
-�*
 �
inputs���������d
p

 
� "!�
unknown���������d�
8__inference_batch_normalization_101_layer_call_fn_200402bb_a`7�4
-�*
 �
inputs���������d
p 

 
� "!�
unknown���������d�
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200536mturs7�4
-�*
 �
inputs���������

p

 
� ",�)
"�
tensor_0���������

� �
S__inference_batch_normalization_102_layer_call_and_return_conditional_losses_200556murts7�4
-�*
 �
inputs���������

p 

 
� ",�)
"�
tensor_0���������

� �
8__inference_batch_normalization_102_layer_call_fn_200489bturs7�4
-�*
 �
inputs���������

p

 
� "!�
unknown���������
�
8__inference_batch_normalization_102_layer_call_fn_200502burts7�4
-�*
 �
inputs���������

p 

 
� "!�
unknown���������
�
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200225�&'()Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
R__inference_batch_normalization_99_layer_call_and_return_conditional_losses_200243�&'()Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
7__inference_batch_normalization_99_layer_call_fn_200194�&'()Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
7__inference_batch_normalization_99_layer_call_fn_200207�&'()Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
E__inference_conv2d_56_layer_call_and_return_conditional_losses_200181w9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
*__inference_conv2d_56_layer_call_fn_200170l9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
E__inference_conv2d_57_layer_call_and_return_conditional_losses_200273s677�4
-�*
(�%
inputs���������nn
� "4�1
*�'
tensor_0���������kk
� �
*__inference_conv2d_57_layer_call_fn_200262h677�4
-�*
(�%
inputs���������nn
� ")�&
unknown���������kk�
F__inference_flatten_26_layer_call_and_return_conditional_losses_200356i7�4
-�*
(�%
inputs���������55
� ".�+
$�!
tensor_0�����������
� �
+__inference_flatten_26_layer_call_fn_200350^7�4
-�*
(�%
inputs���������55
� "#� 
unknown������������
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_200253�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_53_layer_call_fn_200248�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_200345�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_54_layer_call_fn_200340�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
H__inference_new_dense_27_layer_call_and_return_conditional_losses_200376mVW9�6
/�,
*�'
input_features�����������
� ",�)
"�
tensor_0���������d
� �
-__inference_new_dense_27_layer_call_fn_200365bVW9�6
/�,
*�'
input_features�����������
� "!�
unknown���������d�
H__inference_new_dense_28_layer_call_and_return_conditional_losses_200476kij7�4
-�*
(�%
input_features���������d
� ",�)
"�
tensor_0���������

� �
-__inference_new_dense_28_layer_call_fn_200465`ij7�4
-�*
(�%
input_features���������d
� "!�
unknown���������
�
H__inference_new_dense_29_layer_call_and_return_conditional_losses_200576k|}7�4
-�*
(�%
input_features���������

� ",�)
"�
tensor_0���������
� �
-__inference_new_dense_29_layer_call_fn_200565`|}7�4
-�*
(�%
input_features���������

� "!�
unknown����������
H__inference_sequential_9_layer_call_and_return_conditional_losses_199865�&'()67@ABCVWab_`ijturs|}C�@
9�6
,�)
input_13�����������
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_9_layer_call_and_return_conditional_losses_199933�&'()67@ABCVWb_a`ijurts|}C�@
9�6
,�)
input_13�����������
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_9_layer_call_fn_199990�&'()67@ABCVWab_`ijturs|}C�@
9�6
,�)
input_13�����������
p

 
� "!�
unknown����������
-__inference_sequential_9_layer_call_fn_200047�&'()67@ABCVWb_a`ijurts|}C�@
9�6
,�)
input_13�����������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_200161�&'()67@ABCVWb_a`ijurts|}G�D
� 
=�:
8
input_13,�)
input_13�����������";�8
6
new_dense_29&�#
new_dense_29���������