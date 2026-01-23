package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.ImageOutlineButton;
   import spark.components.Button;
   import spark.skins.SparkSkin;
   
   public class ImageButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function ImageButtonSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._ImageButtonSkin_BriskImageDynaLib1_i()];
                  if(_loc1_)
                  {
                     this.currentState = "up";
                     if(_loc1_ || Boolean(this))
                     {
                        addr005d:
                        this.addEventListener("currentStateChange",this.___ImageButtonSkin_SparkSkin1_currentStateChange);
                        if(_loc1_)
                        {
                           states = [new State({
                              "name":"up",
                              "overrides":[]
                           }),new State({
                              "name":"down",
                              "overrides":[]
                           }),new State({
                              "name":"over",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                           addr006e:
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr006e);
            }
            addr00c2:
            return;
         }
         §§goto(addr005d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr003f:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr003f);
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
      
      private function handleCurrentStateChange() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(currentState != "disabled")
            {
               if(_loc2_)
               {
                  TweenMax.to(this.image,0,{"colorMatrixFilter":{"saturation":1}});
               }
            }
         }
         var _loc1_:§--UNKNOWN--§ = currentState;
         if(!_loc3_)
         {
            §§push("up");
            if(_loc2_ || Boolean(_loc1_))
            {
               if(§§pop() === _loc1_)
               {
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr034d:
                     §§push(2);
                     if(_loc2_ || _loc2_)
                     {
                     }
                  }
               }
               else
               {
                  §§push("over");
                  if(!_loc3_)
                  {
                     addr030e:
                     if(§§pop() === _loc1_)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0320:
                           §§push(1);
                           if(_loc3_ && Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           addr0375:
                           §§push(3);
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        §§goto(addr0394);
                     }
                     else
                     {
                        §§push("down");
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop() === _loc1_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr034d);
                              }
                              else
                              {
                                 §§goto(addr0375);
                              }
                           }
                           else
                           {
                              §§goto(addr0370);
                           }
                           §§goto(addr0375);
                        }
                        §§goto(addr0370);
                     }
                  }
                  addr0370:
                  if("disabled" === _loc1_)
                  {
                     §§goto(addr0375);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr0394);
               }
               addr0394:
               switch(§§pop())
               {
                  case 0:
                     §§push((this.hostComponent as ImageOutlineButton).hasUpOutline);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!§§pop())
                        {
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":0,
                              "alpha":0,
                              "blurX":0,
                              "blurY":0,
                              "strength":0
                           }});
                           if(_loc3_)
                           {
                           }
                           break;
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":this.getStyle("colorUp"),
                              "alpha":1,
                              "blurX":4,
                              "blurY":4,
                              "strength":4
                           }});
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr0236:
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":this.getStyle("colorDisabled"),
                              "alpha":1,
                              "blurX":4,
                              "blurY":4,
                              "strength":4
                           }});
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        addr00eb:
                        if(§§pop())
                        {
                           if(_loc3_ && Boolean(_loc1_))
                           {
                              break;
                           }
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":this.getStyle("colorOver"),
                              "alpha":1,
                              "blurX":4,
                              "blurY":4,
                              "strength":4
                           }});
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr0236);
                        }
                        else
                        {
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":0,
                              "alpha":0,
                              "blurX":0,
                              "blurY":0,
                              "strength":0
                           }});
                           if(!_loc3_)
                           {
                              break;
                           }
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":this.getStyle("colorDown"),
                              "alpha":1,
                              "blurX":4,
                              "blurY":4,
                              "strength":4
                           }});
                           addr019e:
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                     }
                     addr02aa:
                     TweenMax.to(this.image,0,{"colorMatrixFilter":{"saturation":0}});
                     if(_loc2_ || Boolean(_loc1_))
                     {
                     }
                     break;
                  case 1:
                     §§push((this.hostComponent as ImageOutlineButton).hasOverOutline);
                     if(!_loc3_)
                     {
                        §§goto(addr00eb);
                     }
                     else
                     {
                        addr0225:
                        if(§§pop())
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0236);
                           }
                        }
                        else
                        {
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":0,
                              "alpha":0,
                              "blurX":0,
                              "blurY":0,
                              "strength":0
                           }});
                           if(!(_loc2_ || Boolean(this)))
                           {
                              break;
                           }
                        }
                     }
                     §§goto(addr02aa);
                  case 2:
                     §§push((this.hostComponent as ImageOutlineButton).hasDownOutline);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!§§pop())
                        {
                           TweenMax.to(this.image,0,{"glowFilter":{
                              "color":0,
                              "alpha":0,
                              "blurX":0,
                              "blurY":0,
                              "strength":0
                           }});
                           if(_loc3_)
                           {
                           }
                           break;
                        }
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr019e);
                        }
                     }
                     else
                     {
                        §§goto(addr0225);
                     }
                     §§goto(addr02aa);
                  case 3:
                     §§goto(addr0225);
                     §§push((this.hostComponent as ImageOutlineButton).hasDisabledOutline);
               }
               return;
            }
            §§goto(addr030e);
         }
         §§goto(addr0320);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               addr0027:
               this.handleCurrentStateChange();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function _ImageButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.id = "image";
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr005b);
                  }
               }
               §§goto(addr0078);
            }
            addr005b:
            _loc1_.document = this;
            if(_loc3_ || Boolean(this))
            {
               addr0078:
               this.image = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  BindingManager.executeBindings(this,"image",this.image);
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      public function ___ImageButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCurrentStateChange();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._100313435image = param1;
                  if(_loc3_)
                  {
                     addr0040:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0040);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  addr0046:
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr0046);
      }
   }
}

