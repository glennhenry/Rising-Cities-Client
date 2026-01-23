package com.greensock.plugins
{
   import com.greensock.*;
   import com.greensock.core.*;
   import flash.display.*;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   
   public class TransformAroundPointPlugin extends TweenPlugin
   {
      
      private static var _classInitted:Boolean;
      
      private static var _isFlex:Boolean;
      
      public static const API:Number = 1;
      
      protected var _useAddElement:Boolean;
      
      protected var _local:Point;
      
      protected var _proxy:DisplayObject;
      
      protected var _target:DisplayObject;
      
      protected var _point:Point;
      
      protected var _proxySizeData:Object;
      
      protected var _shortRotation:ShortRotationPlugin;
      
      public function TransformAroundPointPlugin()
      {
         super();
         this.propName = "transformAroundPoint";
         this.overwriteProps = ["x","y"];
         this.priority = -1;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:PropTween = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         if(_proxy != null && _proxy.parent != null)
         {
            if(_useAddElement)
            {
               Object(_proxy.parent).addElement(_target.parent);
            }
            else
            {
               _proxy.parent.addChild(_target.parent);
            }
         }
         if(_target.parent)
         {
            _loc7_ = int(_tweens.length);
            if(this.round)
            {
               while(--_loc7_ > -1)
               {
                  _loc6_ = _tweens[_loc7_];
                  _loc2_ = _loc6_.start + _loc6_.change * param1;
                  _loc6_.target[_loc6_.property] = _loc2_ > 0 ? int(_loc2_ + 0.5) : int(_loc2_ - 0.5);
               }
               _loc5_ = _target.parent.globalToLocal(_target.localToGlobal(_local));
               _loc3_ = _target.x + _point.x - _loc5_.x;
               _loc4_ = _target.y + _point.y - _loc5_.y;
               _target.x = _loc3_ > 0 ? int(_loc3_ + 0.5) : int(_loc3_ - 0.5);
               _target.y = _loc4_ > 0 ? int(_loc4_ + 0.5) : int(_loc4_ - 0.5);
            }
            else
            {
               while(--_loc7_ > -1)
               {
                  _loc6_ = _tweens[_loc7_];
                  _loc6_.target[_loc6_.property] = _loc6_.start + _loc6_.change * param1;
               }
               _loc5_ = _target.parent.globalToLocal(_target.localToGlobal(_local));
               _target.x += _point.x - _loc5_.x;
               _target.y += _point.y - _loc5_.y;
            }
         }
         _changeFactor = param1;
         if(_proxy != null && _proxy.parent != null)
         {
            _loc8_ = _target.rotation;
            var _temp_7:* = _proxy;
            _target.rotation = 0;
            _temp_7.rotation = 0;
            if(_proxySizeData.width != undefined)
            {
               var _temp_9:* = _proxy;
               var _loc9_:*;
               _target.width = _loc9_ = _proxySizeData.width;
               _temp_9.width = 0;
            }
            if(_proxySizeData.height != undefined)
            {
               var _temp_11:* = _proxy;
               _target.height = _loc9_ = _proxySizeData.height;
               _temp_11.height = 0;
            }
            var _temp_13:* = _proxy;
            _target.rotation = _loc9_ = _loc8_;
            _temp_13.rotation = 0;
            _loc5_ = _target.parent.globalToLocal(_target.localToGlobal(_local));
            _loc3_ = _target.x + _point.x - _loc5_.x;
            _loc4_ = _target.y + _point.y - _loc5_.y;
            if(this.round)
            {
               _proxy.x = _loc3_ > 0 ? int(_loc3_ + 0.5) : int(_loc3_ - 0.5);
               _proxy.y = _loc4_ > 0 ? int(_loc4_ + 0.5) : int(_loc4_ - 0.5);
            }
            else
            {
               _proxy.x = _loc3_;
               _proxy.y = _loc4_;
            }
            if(_useAddElement)
            {
               Object(_proxy.parent).removeElement(_target.parent);
            }
            else
            {
               _proxy.parent.removeChild(_target.parent);
            }
         }
      }
      
      override public function killProps(param1:Object) : void
      {
         if(_shortRotation != null)
         {
            _shortRotation.killProps(param1);
            if(_shortRotation.overwriteProps.length == 0)
            {
               param1.shortRotation = true;
            }
         }
         super.killProps(param1);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var p:String = null;
         var short:ShortRotationPlugin = null;
         var sp:String = null;
         var m:Matrix = null;
         var point:Point = null;
         var b:Rectangle = null;
         var s:Sprite = null;
         var container:Sprite = null;
         var enumerables:Object = null;
         var endX:Number = NaN;
         var endY:Number = NaN;
         var target:Object = param1;
         var value:* = param2;
         var tween:TweenLite = param3;
         if(!(value.point is Point))
         {
            return false;
         }
         _target = target as DisplayObject;
         if(value.pointIsLocal == true)
         {
            _local = value.point.clone();
            _point = _target.parent.globalToLocal(_target.localToGlobal(_local));
         }
         else
         {
            _point = value.point.clone();
            _local = _target.globalToLocal(_target.parent.localToGlobal(_point));
         }
         if(!_classInitted)
         {
            try
            {
               _isFlex = Boolean(getDefinitionByName("mx.managers.SystemManager"));
            }
            catch(e:Error)
            {
               _isFlex = false;
            }
            _classInitted = true;
         }
         if((!isNaN(value.width) || !isNaN(value.height)) && _target.parent != null)
         {
            m = _target.transform.matrix;
            point = _target.parent.globalToLocal(_target.localToGlobal(new Point(100,100)));
            _target.width *= 2;
            if(point.x == _target.parent.globalToLocal(_target.localToGlobal(new Point(100,100))).x)
            {
               _proxy = _target;
               _target.rotation = 0;
               _proxySizeData = {};
               if(!isNaN(value.width))
               {
                  addTween(_proxySizeData,"width",_target.width / 2,value.width,"width");
               }
               if(!isNaN(value.height))
               {
                  addTween(_proxySizeData,"height",_target.height,value.height,"height");
               }
               b = _target.getBounds(_target);
               s = new Sprite();
               container = _isFlex ? new (getDefinitionByName("mx.core.UIComponent"))() : new Sprite();
               container.addChild(s);
               container.visible = false;
               _useAddElement = Boolean(_isFlex && _proxy.parent.hasOwnProperty("addElement"));
               if(_useAddElement)
               {
                  Object(_proxy.parent).addElement(container);
               }
               else
               {
                  _proxy.parent.addChild(container);
               }
               _target = s;
               s.graphics.beginFill(255,0.4);
               s.graphics.drawRect(b.x,b.y,b.width,b.height);
               s.graphics.endFill();
               _proxy.width /= 2;
               s.transform.matrix = _target.transform.matrix = m;
            }
            else
            {
               _target.width /= 2;
               _target.transform.matrix = m;
            }
         }
         for(p in value)
         {
            if(!(p == "point" || p == "pointIsLocal"))
            {
               if(p == "shortRotation")
               {
                  _shortRotation = new ShortRotationPlugin();
                  _shortRotation.onInitTween(_target,value[p],tween);
                  addTween(_shortRotation,"changeFactor",0,1,"shortRotation");
                  for(sp in value[p])
                  {
                     this.overwriteProps[this.overwriteProps.length] = sp;
                  }
               }
               else if(p == "x" || p == "y")
               {
                  addTween(_point,p,_point[p],value[p],p);
               }
               else if(p == "scale")
               {
                  addTween(_target,"scaleX",_target.scaleX,value.scale,"scaleX");
                  addTween(_target,"scaleY",_target.scaleY,value.scale,"scaleY");
                  this.overwriteProps[this.overwriteProps.length] = "scaleX";
                  this.overwriteProps[this.overwriteProps.length] = "scaleY";
               }
               else if(!((p == "width" || p == "height") && _proxy != null))
               {
                  addTween(_target,p,_target[p],value[p],p);
                  this.overwriteProps[this.overwriteProps.length] = p;
               }
            }
         }
         if(tween != null)
         {
            enumerables = tween.vars;
            if("x" in enumerables || "y" in enumerables)
            {
               if("x" in enumerables)
               {
                  endX = typeof enumerables.x == "number" ? Number(enumerables.x) : _target.x + Number(enumerables.x);
               }
               if("y" in enumerables)
               {
                  endY = typeof enumerables.y == "number" ? Number(enumerables.y) : _target.y + Number(enumerables.y);
               }
               tween.killVars({
                  "x":true,
                  "y":true
               },false);
               this.changeFactor = 1;
               if(!isNaN(endX))
               {
                  addTween(_point,"x",_point.x,_point.x + (endX - _target.x),"x");
               }
               if(!isNaN(endY))
               {
                  addTween(_point,"y",_point.y,_point.y + (endY - _target.y),"y");
               }
               this.changeFactor = 0;
            }
         }
         return true;
      }
   }
}

