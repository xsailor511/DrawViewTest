#测试绘图操作，画各种图形，自行义UIView
* 使用drawRect方法绘制图片到UIView上实现自定义，可以实现**裁剪**
* CrossLineView.m 定义了一个叉号view，用于测试画线
* BorderView 用来测试给UIView添加边框，填充颜色
* CircleView 绘制椭圆（在一个长方形里面），width = height 就会绘制标准的正圆
* ArcView 绘制一段圆弧
* TriangleView 绘制一个三角形，可以设置填充颜色