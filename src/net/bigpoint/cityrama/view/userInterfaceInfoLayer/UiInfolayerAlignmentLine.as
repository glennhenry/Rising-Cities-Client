package net.bigpoint.cityrama.view.userInterfaceInfoLayer
{
   import com.greensock.TweenMax;
   import flash.geom.Point;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public class UiInfolayerAlignmentLine extends Group
   {
      
      private var _3496420rect:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _lineVo:UserInterfaceInfoLayerAlignLineVo;
      
      public function UiInfolayerAlignmentLine()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._lineVo = new UserInterfaceInfoLayerAlignLineVo();
            if(_loc2_ || _loc1_)
            {
               super();
               if(_loc2_ || Boolean(this))
               {
                  mx_internal::_document = this;
                  if(!_loc1_)
                  {
                     this.mouseEnabled = false;
                     if(_loc2_ || Boolean(this))
                     {
                        this.mouseChildren = false;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr0086:
                           this.height = 2;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00a2:
                              this.mxmlContent = [this._UiInfolayerAlignmentLine_Rect1_i()];
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00ba:
                                 this.addEventListener("creationComplete",this.___UiInfolayerAlignmentLine_Group1_creationComplete);
                              }
                              §§goto(addr00c6);
                           }
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00ba);
            }
            §§goto(addr00a2);
         }
         addr00c6:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr0035);
            }
            §§goto(addr0048);
         }
         addr0035:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0048:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      public function validatePosition() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._lineVo);
            if(_loc2_ || _loc1_)
            {
               §§pop().from = this.localToGlobal(new Point());
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this._lineVo);
                  if(_loc2_)
                  {
                     §§pop().to = this.localToGlobal(new Point());
                     if(_loc2_ || Boolean(this))
                     {
                        addr007c:
                        this._lineVo.to.x += width;
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr008d);
            }
            §§goto(addr007c);
         }
         addr008d:
      }
      
      override public function move(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super.move(param1,param2);
         }
      }
      
      public function set lineId(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._lineVo.lineId = param1;
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      public function set alignment(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._lineVo.alignment = param1;
         }
      }
      
      public function get lineVo() : UserInterfaceInfoLayerAlignLineVo
      {
         return this._lineVo;
      }
      
      public function setProperties(param1:Number, param2:Object, param3:Object, param4:uint, param5:int) : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            §§push(this._lineVo);
            if(!_loc6_)
            {
               §§pop().alignment = param4;
               if(_loc7_)
               {
                  addr0042:
                  this._lineVo.lineId = param5;
                  if(!_loc6_)
                  {
                     addr004d:
                     top = param2;
                     if(!_loc6_)
                     {
                        left = param3;
                        if(_loc7_)
                        {
                           addr0063:
                           width = param1;
                        }
                        return this;
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr004d);
            }
            §§goto(addr0042);
         }
         §§goto(addr0063);
      }
      
      public function showDebug() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            TweenMax.to(this.rect,1,{"autoAlpha":1});
            if(_loc2_ || _loc2_)
            {
               TweenMax.to(this.rect,2,{
                  "autoAlpha":0,
                  "delay":1
               });
            }
         }
      }
      
      private function _UiInfolayerAlignmentLine_Rect1_i() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.fill = this._UiInfolayerAlignmentLine_SolidColor1_c();
                     if(!_loc2_)
                     {
                        _loc1_.initialized(this,"rect");
                        if(_loc3_ || Boolean(this))
                        {
                           addr008b:
                           this.rect = _loc1_;
                           if(_loc3_)
                           {
                              addr0095:
                              BindingManager.executeBindings(this,"rect",this.rect);
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0095);
            }
            §§goto(addr008b);
         }
         §§goto(addr0095);
      }
      
      private function _UiInfolayerAlignmentLine_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.color = 14626559;
         }
         return _loc1_;
      }
      
      public function ___UiInfolayerAlignmentLine_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rect() : Rect
      {
         return this._3496420rect;
      }
      
      public function set rect(param1:Rect) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3496420rect;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._3496420rect = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rect",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
   }
}

