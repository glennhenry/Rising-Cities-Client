package net.bigpoint.cityrama.view.common.components
{
   import mx.core.IFlexModuleFactory;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class BlueBarComponent extends Group
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BlueBarComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.percentWidth = 100;
                  if(!_loc1_)
                  {
                     addr0056:
                     this.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        this.mxmlContent = [this._BlueBarComponent_Rect1_c()];
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0056);
            }
         }
         addr0073:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr004a:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _BlueBarComponent_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.bottomLeftRadiusX = 10;
            if(_loc3_)
            {
               addr0037:
               _loc1_.bottomLeftRadiusY = 30;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.bottomRightRadiusX = 10;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.bottomRightRadiusY = 30;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.topLeftRadiusX = 10;
                        if(_loc3_)
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00a7);
                  }
                  addr0089:
                  _loc1_.topLeftRadiusY = 30;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.topRightRadiusX = 10;
                     if(_loc3_)
                     {
                        addr00a7:
                        _loc1_.topRightRadiusY = 30;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00ba:
                           _loc1_.percentHeight = 100;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr00cc);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00ed);
                  }
                  addr00cc:
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00ed:
                     _loc1_.fill = this._BlueBarComponent_RadialGradient1_c();
                     if(_loc3_)
                     {
                        _loc1_.filters = [this._BlueBarComponent_DropShadowFilter1_c()];
                        if(_loc3_ || _loc3_)
                        {
                           addr0115:
                           _loc1_.initialized(this,null);
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr0115);
                  }
                  addr011c:
                  return _loc1_;
               }
            }
            §§goto(addr00ba);
         }
         §§goto(addr0037);
      }
      
      private function _BlueBarComponent_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(_loc2_)
         {
            _loc1_.entries = [this._BlueBarComponent_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _BlueBarComponent_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_)
         {
            _loc1_.color = 165328;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.ratio = 0.5;
               if(_loc3_ || _loc3_)
               {
                  addr0054:
                  _loc1_.alpha = 0.45;
               }
            }
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _BlueBarComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.distance = 0;
            if(_loc2_)
            {
               _loc1_.blurX = 3;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.blurY = 3;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0072:
         _loc1_.color = 165328;
         if(_loc2_ || _loc2_)
         {
            addr0085:
            _loc1_.alpha = 0.45;
         }
         return _loc1_;
      }
   }
}

