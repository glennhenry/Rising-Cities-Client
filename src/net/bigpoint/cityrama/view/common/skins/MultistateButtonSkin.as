package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class MultistateButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _738169824iconLeft:BriskImageDynaLib;
      
      private var _1402767069iconRight:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MultistateButton;
      
      public function MultistateButtonSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.cacheAsBitmap = true;
                  if(_loc2_ || _loc1_)
                  {
                     addr004a:
                     this.mxmlContent = [this._MultistateButtonSkin_HGroup1_c(),this._MultistateButtonSkin_HGroup2_i(),this._MultistateButtonSkin_HGroup3_c(),this._MultistateButtonSkin_BriskImageDynaLib9_i(),this._MultistateButtonSkin_BriskImageDynaLib10_i()];
                     if(!_loc1_)
                     {
                        this.currentState = "up";
                        if(_loc2_ || _loc1_)
                        {
                           this.addEventListener("currentStateChange",this.___MultistateButtonSkin_SparkSkin1_currentStateChange);
                           if(_loc2_)
                           {
                              addr00a1:
                              this.addEventListener("creationComplete",this.___MultistateButtonSkin_SparkSkin1_creationComplete);
                              if(!_loc1_)
                              {
                                 states = [new State({
                                    "name":"up",
                                    "overrides":[]
                                 }),new State({
                                    "name":"down",
                                    "overrides":[]
                                 }),new State({
                                    "name":"over",
                                    "overrides":[new SetProperty().initializeFromObject({
                                       "target":"plusIcon",
                                       "name":"dynaBmpSourceName",
                                       "value":"ui_mainbar_icon_add_mouseover"
                                    })]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 })];
                                 addr00b2:
                              }
                           }
                           §§goto(addr011f);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00a1);
                  }
                  addr011f:
                  return;
               }
            }
         }
         §§goto(addr004a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0042);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_)
            {
               addr0042:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            TweenMax.to(this.labelDisplay,1,{"dropShadowFilter":{
               "color":0,
               "alpha":1,
               "blurX":3,
               "blurY":3,
               "distance":0
            }});
         }
      }
      
      private function handleCurrentStateChange() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":1}});
            if(!(_loc2_ && Boolean(this)))
            {
               TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":1}});
               if(_loc3_)
               {
                  addr005b:
                  if(this.hostComponent.showPlus)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
                        if(_loc2_)
                        {
                           addr019f:
                           var _loc1_:§--UNKNOWN--§ = currentState;
                           if(!_loc2_)
                           {
                              §§push("up");
                              if(_loc3_)
                              {
                                 if(§§pop() === _loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(0);
                                       if(_loc2_ && _loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr01e7:
                                       §§push(1);
                                       if(_loc3_ || Boolean(this))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push("over");
                                    if(_loc3_)
                                    {
                                       addr01d5:
                                       if(§§pop() === _loc1_)
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§goto(addr01e7);
                                          }
                                          else
                                          {
                                             addr0214:
                                             §§push(2);
                                             if(_loc3_ || Boolean(this))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("down");
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr020a:
                                             if(§§pop() === _loc1_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr0214);
                                                }
                                                else
                                                {
                                                   addr023b:
                                                   §§push(3);
                                                   if(_loc2_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                                §§goto(addr025a);
                                             }
                                             else
                                             {
                                                §§goto(addr0236);
                                             }
                                          }
                                          addr0236:
                                          if("disabled" === _loc1_)
                                          {
                                             §§goto(addr023b);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr025a);
                                       }
                                       §§goto(addr025a);
                                    }
                                    §§goto(addr020a);
                                 }
                                 addr025a:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorUp")});
                                       if(_loc3_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr0154:
                                       TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":0}});
                                       if(_loc3_)
                                       {
                                          addr0171:
                                          TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":0}});
                                          if(_loc3_ || Boolean(this))
                                          {
                                          }
                                       }
                                       break;
                                    case 1:
                                       TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorOver")});
                                       if(_loc3_ || Boolean(this))
                                       {
                                       }
                                       break;
                                    case 2:
                                       TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDown")});
                                       if(_loc3_ || _loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0171);
                                       break;
                                    case 3:
                                       TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
                                       if(_loc2_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0154);
                                 }
                                 return;
                              }
                              §§goto(addr01d5);
                           }
                           §§goto(addr0214);
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr019f);
         }
         §§goto(addr005b);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_ || _loc1_)
            {
               §§push(this.sparkle);
               if(_loc1_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        if(this.hostComponent.showSparkle)
                        {
                           if(_loc1_)
                           {
                              addr0050:
                              §§push(this.sparkle);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(true);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop().includeInLayout = §§pop();
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr0088:
                                       §§push(this.sparkle);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(true);
                                          if(!_loc2_)
                                          {
                                             addr009f:
                                             §§pop().visible = §§pop();
                                             if(_loc2_ && _loc1_)
                                             {
                                                §§goto(addr00ef);
                                             }
                                             §§goto(addr00f6);
                                          }
                                          addr00ef:
                                          this.sparkle.visible = false;
                                          §§goto(addr00ee);
                                       }
                                       addr00ee:
                                       addr00ea:
                                       if(!_loc2_)
                                       {
                                          addr00f6:
                                          this.handleCurrentStateChange();
                                       }
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§goto(addr009f);
                              }
                              §§goto(addr00ee);
                           }
                           §§goto(addr00ea);
                        }
                        else
                        {
                           §§push(this.sparkle);
                           if(_loc1_ || _loc1_)
                           {
                              addr00c3:
                              §§push(false);
                              if(_loc1_ || Boolean(this))
                              {
                                 §§pop().includeInLayout = §§pop();
                                 if(_loc1_ || Boolean(this))
                                 {
                                    §§goto(addr00ea);
                                 }
                                 addr00fc:
                                 return;
                              }
                              §§goto(addr00ef);
                           }
                        }
                        §§goto(addr00ee);
                     }
                  }
                  §§goto(addr00f6);
               }
               §§goto(addr00c3);
            }
            §§goto(addr0088);
         }
         §§goto(addr0050);
      }
      
      private function _MultistateButtonSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(!_loc2_)
               {
                  addr0034:
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           addr0060:
                           _loc1_.verticalAlign = "middle";
                           if(_loc3_)
                           {
                              addr006b:
                              _loc1_.horizontalAlign = "center";
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.mxmlContent = [this._MultistateButtonSkin_BriskImageDynaLib1_c(),this._MultistateButtonSkin_BriskImageDynaLib2_c(),this._MultistateButtonSkin_BriskImageDynaLib3_c()];
                                 if(_loc3_)
                                 {
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr00b9);
                              }
                              addr00a5:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b9:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00bd);
                           }
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr006b);
               }
               addr00bd:
               return _loc1_;
            }
            §§goto(addr0034);
         }
         §§goto(addr00a5);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               §§goto(addr003e);
            }
            §§goto(addr0055);
         }
         addr003e:
         _loc1_.dynaBmpSourceName = "button_40px_left";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0055:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "button_40px_middle";
                  §§goto(addr0042);
               }
               §§goto(addr0061);
            }
            addr0042:
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0061:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0061);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "button_40px_right";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0073);
      }
      
      private function _MultistateButtonSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.gap = 0;
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.verticalAlign = "middle";
                           if(!_loc3_)
                           {
                              addr0078:
                              _loc1_.blendMode = "overlay";
                              if(_loc2_)
                              {
                                 _loc1_.horizontalAlign = "center";
                                 if(_loc2_)
                                 {
                                    _loc1_.mxmlContent = [this._MultistateButtonSkin_BriskImageDynaLib4_c(),this._MultistateButtonSkin_BriskImageDynaLib5_c(),this._MultistateButtonSkin_BriskImageDynaLib6_c()];
                                    if(!_loc3_)
                                    {
                                       addr00aa:
                                       _loc1_.id = "overlayGroup";
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!_loc1_.document)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr00d4);
                                             }
                                          }
                                       }
                                       §§goto(addr00dd);
                                    }
                                 }
                                 addr00d4:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00dd:
                                    this.overlayGroup = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00e7:
                                       BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
                                    }
                                 }
                                 §§goto(addr00f4);
                              }
                           }
                           §§goto(addr00e7);
                        }
                        addr00f4:
                        return _loc1_;
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr00aa);
            }
            §§goto(addr00d4);
         }
         §§goto(addr00dd);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "button_40px_left";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0072);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  addr005d:
                  _loc1_.dynaBmpSourceName = "button_40px_middle";
                  if(!_loc2_)
                  {
                     §§goto(addr0068);
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr005d);
         }
         addr0068:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr007c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "button_40px_right";
               if(_loc3_ || _loc2_)
               {
                  addr005e:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005e);
      }
      
      private function _MultistateButtonSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.top = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 0;
               if(_loc2_)
               {
                  _loc1_.bottom = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.right = 0;
                     if(!_loc3_)
                     {
                        _loc1_.gap = 10;
                        if(!_loc3_)
                        {
                           addr0079:
                           _loc1_.verticalAlign = "middle";
                           if(!_loc3_)
                           {
                              _loc1_.horizontalAlign = "center";
                              §§goto(addr0084);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr00c2);
               }
               addr0084:
               if(!_loc3_)
               {
                  addr009a:
                  _loc1_.mxmlContent = [this._MultistateButtonSkin_BriskImageDynaLib7_i(),this._MultistateButtonSkin_LocaLabel1_i(),this._MultistateButtonSkin_BriskImageDynaLib8_i()];
                  if(!_loc3_)
                  {
                     §§goto(addr00b6);
                  }
                  §§goto(addr00c2);
               }
               addr00b6:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr00c2:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00c6);
            }
            addr00c6:
            return _loc1_;
         }
         §§goto(addr00b6);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.includeInLayout = false;
            if(!_loc3_)
            {
               _loc1_.visible = false;
               if(_loc2_)
               {
                  _loc1_.id = "iconLeft";
                  if(!_loc3_)
                  {
                     addr004f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0063:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr0081);
                           }
                           §§goto(addr0093);
                        }
                     }
                     addr0081:
                     this.iconLeft = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0093:
                        BindingManager.executeBindings(this,"iconLeft",this.iconLeft);
                     }
                     §§goto(addr00a0);
                  }
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr0081);
            }
            §§goto(addr0063);
         }
         §§goto(addr004f);
      }
      
      private function _MultistateButtonSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "multistate";
            if(_loc3_)
            {
               _loc1_.id = "labelDisplay";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005b:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr006c);
                        }
                        §§goto(addr0076);
                     }
                  }
                  addr006c:
                  this.labelDisplay = _loc1_;
                  if(!_loc2_)
                  {
                     addr0076:
                     BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005b);
            }
         }
         addr0083:
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.visible = false;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "iconRight";
                  if(_loc3_ || _loc2_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0089:
                              this.iconRight = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 BindingManager.executeBindings(this,"iconRight",this.iconRight);
                              }
                           }
                        }
                        §§goto(addr00a8);
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0060);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0089);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(_loc2_)
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr004d:
                     _loc1_.top = -7;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006a:
                        _loc1_.left = -5;
                        if(!_loc3_)
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr0090);
                     }
                     addr0074:
                     _loc1_.includeInLayout = false;
                     if(!_loc3_)
                     {
                        _loc1_.id = "sparkle";
                        if(_loc2_ || Boolean(this))
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00b1:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00ba);
                                 }
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00b1);
                     }
                     addr00ba:
                     this.sparkle = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00cc:
                        BindingManager.executeBindings(this,"sparkle",this.sparkle);
                     }
                     §§goto(addr00d9);
                  }
                  addr00d9:
                  return _loc1_;
               }
               §§goto(addr0090);
            }
            §§goto(addr006a);
         }
         §§goto(addr004d);
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(_loc2_)
               {
                  _loc1_.mouseEnabled = false;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mouseChildren = false;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.right = -4;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr00eb);
                     }
                     addr007c:
                     _loc1_.top = -4;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_)
                        {
                           §§goto(addr0097);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr0097);
                  }
                  addr0097:
                  _loc1_.visible = false;
                  if(_loc2_ || _loc2_)
                  {
                     addr00a8:
                     _loc1_.id = "plusIcon";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00bb:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00f5);
                           }
                        }
                     }
                     addr00eb:
                     this.plusIcon = _loc1_;
                     if(!_loc3_)
                     {
                        addr00f5:
                        BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                     }
                  }
                  §§goto(addr0102);
               }
               §§goto(addr00a8);
            }
            addr0102:
            return _loc1_;
         }
         §§goto(addr00a8);
      }
      
      public function ___MultistateButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleCurrentStateChange();
         }
      }
      
      public function ___MultistateButtonSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconLeft() : BriskImageDynaLib
      {
         return this._738169824iconLeft;
      }
      
      public function set iconLeft(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._738169824iconLeft;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._738169824iconLeft = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLeft",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconRight() : BriskImageDynaLib
      {
         return this._1402767069iconRight;
      }
      
      public function set iconRight(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1402767069iconRight;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1402767069iconRight = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconRight",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1184053038labelDisplay = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayGroup() : HGroup
      {
         return this._263713807overlayGroup;
      }
      
      public function set overlayGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._263713807overlayGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._263713807overlayGroup = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0058:
                  this._1849499341plusIcon = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0071);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkle() : BriskImageDynaLib
      {
         return this._2011710186sparkle;
      }
      
      public function set sparkle(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2011710186sparkle;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr003e:
                  this._2011710186sparkle = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : MultistateButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr0036:
                  if(_loc3_)
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr0064);
               }
               addr004d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0036);
      }
   }
}

