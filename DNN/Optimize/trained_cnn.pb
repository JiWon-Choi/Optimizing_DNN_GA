
6
PlaceholderPlaceholder*
shape:*
dtype0
H
Placeholder_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
J
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0
G
ReshapeReshapePlaceholder_1Reshape/shape*
T0*
Tshape0
G
Placeholder_2Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

P
random_normal/shapeConst*%
valueB"             *
dtype0
?
random_normal/meanConst*
valueB
 *    *
dtype0
A
random_normal/stddevConst*
dtype0*
valueB
 *
×#<

"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
seed*
T0*
dtype0*
seed2
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0
d
Variable
VariableV2*
dtype0*
	container *
shape: *
shared_name 

Variable/AssignAssignVariablerandom_normal*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
¸
Conv2DConv2DReshapeVariable/read*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 

ReluReluConv2D*
T0
s
MaxPoolMaxPoolRelu*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*
T0
R
random_normal_1/shapeConst*
dtype0*%
valueB"          @   
A
random_normal_1/meanConst*
dtype0*
valueB
 *    
C
random_normal_1/stddevConst*
valueB
 *
×#<*
dtype0

$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
T0*
dtype0*
seed2*
seed
a
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0
J
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0
f

Variable_1
VariableV2*
dtype0*
	container *
shape: @*
shared_name 

Variable_1/AssignAssign
Variable_1random_normal_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
ŧ
Conv2D_1Conv2DMaxPoolVariable_1/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
!
Relu_1ReluConv2D_1*
T0
w
	MaxPool2dMaxPoolRelu_1*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*
T0
D
Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙@  
G
	Reshape_1Reshape	MaxPool2dReshape_1/shape*
T0*
Tshape0
o
#W3/Initializer/random_uniform/shapeConst*
dtype0*
_class
	loc:@W3*
valueB"@  
   
e
!W3/Initializer/random_uniform/minConst*
_class
	loc:@W3*
valueB
 *ąā2Ŋ*
dtype0
e
!W3/Initializer/random_uniform/maxConst*
_class
	loc:@W3*
valueB
 *ąā2=*
dtype0
¨
+W3/Initializer/random_uniform/RandomUniformRandomUniform#W3/Initializer/random_uniform/shape*
dtype0*
seed2"*
seed*
T0*
_class
	loc:@W3

!W3/Initializer/random_uniform/subSub!W3/Initializer/random_uniform/max!W3/Initializer/random_uniform/min*
T0*
_class
	loc:@W3

!W3/Initializer/random_uniform/mulMul+W3/Initializer/random_uniform/RandomUniform!W3/Initializer/random_uniform/sub*
T0*
_class
	loc:@W3

W3/Initializer/random_uniformAdd!W3/Initializer/random_uniform/mul!W3/Initializer/random_uniform/min*
T0*
_class
	loc:@W3
n
W3
VariableV2*
shared_name *
_class
	loc:@W3*
dtype0*
	container *
shape:	Ā


	W3/AssignAssignW3W3/Initializer/random_uniform*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(
7
W3/readIdentityW3*
T0*
_class
	loc:@W3
C
random_normal_2/shapeConst*
dtype0*
valueB:

A
random_normal_2/meanConst*
dtype0*
valueB
 *    
C
random_normal_2/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
T0*
dtype0*
seed2,*
seed
a
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
T0
J
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0
Z

Variable_2
VariableV2*
dtype0*
	container *
shape:
*
shared_name 

Variable_2/AssignAssign
Variable_2random_normal_2*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
S
MatMulMatMul	Reshape_1W3/read*
transpose_a( *
transpose_b( *
T0
,
addAddMatMulVariable_2/read*
T0
a
9softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientPlaceholder_2*
T0
S
)softmax_cross_entropy_with_logits_sg/RankConst*
dtype0*
value	B :
Q
*softmax_cross_entropy_with_logits_sg/ShapeShapeadd*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0
S
,softmax_cross_entropy_with_logits_sg/Shape_1Shapeadd*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0

(softmax_cross_entropy_with_logits_sg/SubSub+softmax_cross_entropy_with_logits_sg/Rank_1*softmax_cross_entropy_with_logits_sg/Sub/y*
T0

0softmax_cross_entropy_with_logits_sg/Slice/beginPack(softmax_cross_entropy_with_logits_sg/Sub*
T0*

axis *
N
]
/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
dtype0*
valueB:
Ú
*softmax_cross_entropy_with_logits_sg/SliceSlice,softmax_cross_entropy_with_logits_sg/Shape_10softmax_cross_entropy_with_logits_sg/Slice/begin/softmax_cross_entropy_with_logits_sg/Slice/size*
T0*
Index0
k
4softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
Z
0softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0
é
+softmax_cross_entropy_with_logits_sg/concatConcatV24softmax_cross_entropy_with_logits_sg/concat/values_0*softmax_cross_entropy_with_logits_sg/Slice0softmax_cross_entropy_with_logits_sg/concat/axis*
N*

Tidx0*
T0

,softmax_cross_entropy_with_logits_sg/ReshapeReshapeadd+softmax_cross_entropy_with_logits_sg/concat*
T0*
Tshape0
U
+softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0

,softmax_cross_entropy_with_logits_sg/Shape_2Shape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0
V
,softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0

*softmax_cross_entropy_with_logits_sg/Sub_1Sub+softmax_cross_entropy_with_logits_sg/Rank_2,softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0

2softmax_cross_entropy_with_logits_sg/Slice_1/beginPack*softmax_cross_entropy_with_logits_sg/Sub_1*
T0*

axis *
N
_
1softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
dtype0
ā
,softmax_cross_entropy_with_logits_sg/Slice_1Slice,softmax_cross_entropy_with_logits_sg/Shape_22softmax_cross_entropy_with_logits_sg/Slice_1/begin1softmax_cross_entropy_with_logits_sg/Slice_1/size*
T0*
Index0
m
6softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
\
2softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
dtype0*
value	B : 
ņ
-softmax_cross_entropy_with_logits_sg/concat_1ConcatV26softmax_cross_entropy_with_logits_sg/concat_1/values_0,softmax_cross_entropy_with_logits_sg/Slice_12softmax_cross_entropy_with_logits_sg/concat_1/axis*
N*

Tidx0*
T0
ē
.softmax_cross_entropy_with_logits_sg/Reshape_1Reshape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient-softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0
Ŧ
$softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits,softmax_cross_entropy_with_logits_sg/Reshape.softmax_cross_entropy_with_logits_sg/Reshape_1*
T0
V
,softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
dtype0*
value	B :

*softmax_cross_entropy_with_logits_sg/Sub_2Sub)softmax_cross_entropy_with_logits_sg/Rank,softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0
`
2softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0

1softmax_cross_entropy_with_logits_sg/Slice_2/sizePack*softmax_cross_entropy_with_logits_sg/Sub_2*
N*
T0*

axis 
Ū
,softmax_cross_entropy_with_logits_sg/Slice_2Slice*softmax_cross_entropy_with_logits_sg/Shape2softmax_cross_entropy_with_logits_sg/Slice_2/begin1softmax_cross_entropy_with_logits_sg/Slice_2/size*
T0*
Index0
¤
.softmax_cross_entropy_with_logits_sg/Reshape_2Reshape$softmax_cross_entropy_with_logits_sg,softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0
3
ConstConst*
valueB: *
dtype0
i
MeanMean.softmax_cross_entropy_with_logits_sg/Reshape_2Const*
T0*

Tidx0*
	keep_dims( 
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
k
gradients/Mean_grad/ShapeShape.softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
m
gradients/Mean_grad/Shape_1Shape.softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
f
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0

Cgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape$softmax_cross_entropy_with_logits_sg*
T0*
out_type0
É
Egradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivCgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0
R
gradients/zeros_like	ZerosLike&softmax_cross_entropy_with_logits_sg:1*
T0
u
Bgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
ė
>gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsEgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeBgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*
T0
¯
7gradients/softmax_cross_entropy_with_logits_sg_grad/mulMul>gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims&softmax_cross_entropy_with_logits_sg:1*
T0

>gradients/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax,softmax_cross_entropy_with_logits_sg/Reshape*
T0

7gradients/softmax_cross_entropy_with_logits_sg_grad/NegNeg>gradients/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0
w
Dgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
đ
@gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsEgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeDgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*

Tdim0*
T0
Ä
9gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1Mul@gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_17gradients/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0
Â
Dgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOp8^gradients/softmax_cross_entropy_with_logits_sg_grad/mul:^gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1
­
Lgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentity7gradients/softmax_cross_entropy_with_logits_sg_grad/mulE^gradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/softmax_cross_entropy_with_logits_sg_grad/mul
ŗ
Ngradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1Identity9gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1E^gradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1
h
Agradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapeadd*
T0*
out_type0
ö
Cgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeLgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyAgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*
Tshape0
B
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0
H
gradients/add_grad/Shape_1Const*
dtype0*
valueB:


(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
˛
gradients/add_grad/SumSumCgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0
ļ
gradients/add_grad/Sum_1SumCgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
ą
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
ˇ
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1

gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyW3/read*
T0*
transpose_a( *
transpose_b(

gradients/MatMul_grad/MatMul_1MatMul	Reshape_1+gradients/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ģ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
Á
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
K
gradients/Reshape_1_grad/ShapeShape	MaxPool2d*
T0*
out_type0

 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0
Ã
$gradients/MaxPool2d_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool2d gradients/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
a
gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool2d_grad/MaxPoolGradRelu_1*
T0
d
gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_1/read*
T0*
out_type0*
N
Ŗ
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_1/readgradients/Relu_1_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME

,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPool gradients/Conv2D_1_grad/ShapeN:1gradients/Relu_1_grad/ReluGrad*
paddingSAME*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(

(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput
Ũ
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput
á
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter
Í
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
ksize
*
paddingSAME*
T0*
data_formatNHWC*
strides

[
gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*
T0
`
gradients/Conv2D_grad/ShapeNShapeNReshapeVariable/read*
T0*
out_type0*
N

)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/readgradients/Relu_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME

*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1gradients/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*
	dilations
*
T0

&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput
Õ
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput
Ų
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
c
beta1_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *fff?*
dtype0
t
beta1_power
VariableV2*
shared_name *
_class
loc:@Variable*
dtype0*
	container *
shape: 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable
c
beta2_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *wž?*
dtype0
t
beta2_power
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_class
loc:@Variable

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable
y
Variable/Adam/Initializer/zerosConst*%
valueB *    *
_class
loc:@Variable*
dtype0

Variable/Adam
VariableV2*
shape: *
shared_name *
_class
loc:@Variable*
dtype0*
	container 

Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
S
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable
{
!Variable/Adam_1/Initializer/zerosConst*
dtype0*%
valueB *    *
_class
loc:@Variable

Variable/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable*
dtype0*
	container *
shape: 
Ŗ
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
W
Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable

1Variable_1/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
_class
loc:@Variable_1*
dtype0
s
'Variable_1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_1*
dtype0
ŋ
!Variable_1/Adam/Initializer/zerosFill1Variable_1/Adam/Initializer/zeros/shape_as_tensor'Variable_1/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_1

Variable_1/Adam
VariableV2*
_class
loc:@Variable_1*
dtype0*
	container *
shape: @*
shared_name 
Ĩ
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
Y
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1

3Variable_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*%
valueB"          @   *
_class
loc:@Variable_1
u
)Variable_1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_1*
dtype0
Å
#Variable_1/Adam_1/Initializer/zerosFill3Variable_1/Adam_1/Initializer/zeros/shape_as_tensor)Variable_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_1

Variable_1/Adam_1
VariableV2*
shape: @*
shared_name *
_class
loc:@Variable_1*
dtype0*
	container 
Ģ
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
]
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1
u
)W3/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@  
   *
_class
	loc:@W3*
dtype0
c
W3/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
	loc:@W3*
dtype0

W3/Adam/Initializer/zerosFill)W3/Adam/Initializer/zeros/shape_as_tensorW3/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
	loc:@W3
s
W3/Adam
VariableV2*
_class
	loc:@W3*
dtype0*
	container *
shape:	Ā
*
shared_name 

W3/Adam/AssignAssignW3/AdamW3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(
A
W3/Adam/readIdentityW3/Adam*
T0*
_class
	loc:@W3
w
+W3/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@  
   *
_class
	loc:@W3*
dtype0
e
!W3/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
	loc:@W3*
dtype0
Ĩ
W3/Adam_1/Initializer/zerosFill+W3/Adam_1/Initializer/zeros/shape_as_tensor!W3/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
	loc:@W3
u
	W3/Adam_1
VariableV2*
dtype0*
	container *
shape:	Ā
*
shared_name *
_class
	loc:@W3

W3/Adam_1/AssignAssign	W3/Adam_1W3/Adam_1/Initializer/zeros*
T0*
_class
	loc:@W3*
validate_shape(*
use_locking(
E
W3/Adam_1/readIdentity	W3/Adam_1*
T0*
_class
	loc:@W3
q
!Variable_2/Adam/Initializer/zerosConst*
valueB
*    *
_class
loc:@Variable_2*
dtype0
~
Variable_2/Adam
VariableV2*
dtype0*
	container *
shape:
*
shared_name *
_class
loc:@Variable_2
Ĩ
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
Y
Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2
s
#Variable_2/Adam_1/Initializer/zerosConst*
valueB
*    *
_class
loc:@Variable_2*
dtype0

Variable_2/Adam_1
VariableV2*
shape:
*
shared_name *
_class
loc:@Variable_2*
dtype0*
	container 
Ģ
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2
]
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2
?
Adam/learning_rateConst*
valueB
 *o:*
dtype0
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *wž?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĖ+2*
dtype0
˛
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable
ž
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_nesterov( *
use_locking( 

Adam/update_W3/ApplyAdam	ApplyAdamW3W3/Adam	W3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
	loc:@W3
š
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( 
Õ
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam^Adam/update_W3/ApplyAdam*
T0*
_class
loc:@Variable
{
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking( 
×

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam^Adam/update_W3/ApplyAdam*
T0*
_class
loc:@Variable

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking( 
Ŧ
AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam^Adam/update_W3/ApplyAdam
¸
initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^W3/Adam/Assign^W3/Adam_1/Assign
^W3/Assign^beta1_power/Assign^beta2_power/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 

save/SaveV2/tensor_namesConst*Ņ
valueĮBÄBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1BW3BW3/AdamB	W3/Adam_1Bbeta1_powerBbeta2_power*
dtype0
c
save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0
ŗ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1W3W3/Adam	W3/Adam_1beta1_powerbeta2_power*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const

save/RestoreV2/tensor_namesConst"/device:CPU:0*Ņ
valueĮBÄBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1BW3BW3/AdamB	W3/Adam_1Bbeta1_powerBbeta2_power*
dtype0
u
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
~
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(

save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable

save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable

save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_6Assign
Variable_2save/RestoreV2:6*
T0*
_class
loc:@Variable_2*
validate_shape(*
use_locking(

save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(

save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
T0*
_class
loc:@Variable_2*
validate_shape(*
use_locking(
v
save/Assign_9AssignW3save/RestoreV2:9*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(
}
save/Assign_10AssignW3/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(

save/Assign_11Assign	W3/Adam_1save/RestoreV2:11*
use_locking(*
T0*
_class
	loc:@W3*
validate_shape(

save/Assign_12Assignbeta1_powersave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(

save/Assign_13Assignbeta2_powersave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
ú
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"&