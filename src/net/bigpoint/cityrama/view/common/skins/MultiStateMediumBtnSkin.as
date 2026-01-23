package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class MultiStateMediumBtnSkin extends SparkSkin implements IStateClient2
   {
      
      private var _738169824iconLeft:BriskImageDynaLib;
      
      private var _1402767069iconRight:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MultistateButton;
      
      public function MultiStateMediumBtnSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.cacheAsBitmap = true;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0041:
                     this.mxmlContent = [this._MultiStateMediumBtnSkin_HGroup1_c(),this._MultiStateMediumBtnSkin_HGroup2_i(),this._MultiStateMediumBtnSkin_HGroup3_c(),this._MultiStateMediumBtnSkin_BriskImageDynaLib9_i()];
                     if(_loc1_)
                     {
                        this.currentState = "up";
                        if(!_loc2_)
                        {
                           this.addEventListener("currentStateChange",this.___MultiStateMediumBtnSkin_SparkSkin1_currentStateChange);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0092:
                              this.addEventListener("creationComplete",this.___MultiStateMediumBtnSkin_SparkSkin1_creationComplete);
                              if(_loc1_ || _loc2_)
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
                                 addr00ab:
                              }
                           }
                        }
                        §§goto(addr00ff);
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0041);
            }
            §§goto(addr00ab);
         }
         addr00ff:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
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
         if(!_loc2_)
         {
            TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":1}});
            if(_loc3_)
            {
               addr0035:
               TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":1}});
            }
            var _loc1_:§--UNKNOWN--§ = currentState;
            if(!_loc2_)
            {
               §§push("up");
               if(_loc3_)
               {
                  if(§§pop() === _loc1_)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr01be:
                        §§push(2);
                        if(_loc2_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("over");
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr018f:
                        if(§§pop() === _loc1_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr01a1:
                              §§push(1);
                              if(_loc2_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr01be);
                           }
                        }
                        else
                        {
                           §§push("down");
                           if(!_loc2_)
                           {
                              addr01b4:
                              if(§§pop() === _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr01be);
                                 }
                                 else
                                 {
                                    addr01e7:
                                    §§push(3);
                                    if(_loc3_ || _loc2_)
                                    {
                                    }
                                 }
                                 §§goto(addr0206);
                              }
                              else
                              {
                                 §§goto(addr01e2);
                              }
                           }
                           addr01e2:
                           if("disabled" === _loc1_)
                           {
                              §§goto(addr01e7);
                           }
                           else
                           {
                              §§push(4);
                           }
                           §§goto(addr0206);
                        }
                        §§goto(addr0206);
                     }
                     §§goto(addr01b4);
                  }
                  addr0206:
                  switch(§§pop())
                  {
                     case 0:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorUp")});
                        if(_loc3_ || Boolean(_loc1_))
                        {
                        }
                        break;
                     case 1:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorOver")});
                        if(!_loc2_)
                        {
                           break;
                        }
                        addr0123:
                        TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":0}});
                        if(_loc2_)
                        {
                        }
                        break;
                     case 2:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDown")});
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        §§goto(addr0123);
                        break;
                     case 3:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
                        if(_loc2_ && Boolean(_loc1_))
                        {
                           break;
                        }
                        TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":0}});
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr0123);
                  }
                  return;
               }
               §§goto(addr018f);
            }
            §§goto(addr01a1);
         }
         §§goto(addr0035);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.commitProperties();
            if(_loc2_ || Boolean(this))
            {
               §§push(this.sparkle);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr004a:
                        if(this.hostComponent.showSparkle)
                        {
                           if(!_loc1_)
                           {
                              §§push(this.sparkle);
                              if(_loc2_ || _loc2_)
                              {
                                 addr0074:
                                 §§push(true);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§pop().includeInLayout = §§pop();
                                    if(!_loc1_)
                                    {
                                       §§push(this.sparkle);
                                       if(_loc2_)
                                       {
                                          §§push(true);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             addr00a0:
                                             §§pop().visible = §§pop();
                                             if(!(_loc2_ || Boolean(this)))
                                             {
                                                addr00d8:
                                                this.sparkle.visible = false;
                                                §§goto(addr00d3);
                                             }
                                             §§goto(addr00e7);
                                          }
                                       }
                                       else
                                       {
                                          addr00c6:
                                          §§push(false);
                                          if(_loc2_)
                                          {
                                             §§pop().includeInLayout = §§pop();
                                             if(_loc2_)
                                             {
                                                addr00d3:
                                                addr00d7:
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   addr00e7:
                                                   this.handleCurrentStateChange();
                                                }
                                             }
                                             §§goto(addr00ec);
                                          }
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr00d7);
                           }
                           §§goto(addr00e7);
                        }
                        else
                        {
                           §§push(this.sparkle);
                           if(_loc2_)
                           {
                              §§goto(addr00c6);
                           }
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00e7);
               }
               §§goto(addr0074);
            }
            addr00ec:
            return;
         }
         §§goto(addr004a);
      }
      
      private function _MultiStateMediumBtnSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     addr004e:
                     if(_loc2_)
                     {
                        _loc1_.gap = 0;
                        if(!_loc3_)
                        {
                           addr006e:
                           _loc1_.verticalAlign = "middle";
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.horizontalAlign = "center";
                              if(_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._MultiStateMediumBtnSkin_BriskImageDynaLib1_c(),this._MultiStateMediumBtnSkin_BriskImageDynaLib2_c(),this._MultiStateMediumBtnSkin_BriskImageDynaLib3_c()];
                                 addr008b:
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00bb:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00cf:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00d3);
                                 }
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00bb);
                  }
                  addr00d3:
                  return _loc1_;
               }
               §§goto(addr008b);
            }
            §§goto(addr004e);
         }
         §§goto(addr006e);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "btn_left";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "btn_middle";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0074:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0078);
               }
            }
            §§goto(addr0074);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "btn_right";
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0069);
            }
            addr005d:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0069:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _MultiStateMediumBtnSkin_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 0;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           addr0062:
                           _loc1_.verticalAlign = "middle";
                           if(_loc3_ || Boolean(this))
                           {
                              addr0080:
                              _loc1_.blendMode = "overlay";
                              if(!_loc2_)
                              {
                                 addr008c:
                                 _loc1_.horizontalAlign = "center";
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    _loc1_.mxmlContent = [this._MultiStateMediumBtnSkin_BriskImageDynaLib4_c(),this._MultiStateMediumBtnSkin_BriskImageDynaLib5_c(),this._MultiStateMediumBtnSkin_BriskImageDynaLib6_c()];
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00c2:
                                       _loc1_.id = "overlayGroup";
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr00d5:
                                          if(!_loc1_.document)
                                          {
                                             if(_loc3_)
                                             {
                                                addr00ed:
                                                _loc1_.document = this;
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§goto(addr00fe);
                                                }
                                             }
                                             §§goto(addr0108);
                                          }
                                          addr00fe:
                                          this.overlayGroup = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr0108:
                                             BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
                                          }
                                          §§goto(addr0115);
                                       }
                                       §§goto(addr0108);
                                    }
                                    addr0115:
                                    return _loc1_;
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr0108);
                           }
                           §§goto(addr00ed);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr00c2);
            }
            §§goto(addr0080);
         }
         §§goto(addr0062);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "btn_left";
               if(!_loc3_)
               {
                  addr0045:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0051:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr0045);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.dynaBmpSourceName = "btn_middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr007c);
               }
               addr0068:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr007c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "btn_right";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr006a);
               }
               §§goto(addr007e);
            }
            addr006a:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr007e:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr007e);
      }
      
      private function _MultiStateMediumBtnSkin_HGroup3_c() : HGroup
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
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.right = 0;
                     §§goto(addr004e);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0092);
            }
            addr004e:
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0088:
                     _loc1_.gap = 2;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._MultiStateMediumBtnSkin_BriskImageDynaLib7_i(),this._MultiStateMediumBtnSkin_LocaLabel1_i(),this._MultiStateMediumBtnSkin_BriskImageDynaLib8_i()];
                        §§goto(addr0092);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00ce);
               }
               addr0092:
               if(_loc3_)
               {
                  addr00ba:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00ce:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00d2);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr00ce);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.includeInLayout = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.visible = false;
               if(_loc2_ || Boolean(this))
               {
                  addr0055:
                  _loc1_.id = "iconLeft";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0081);
                  }
                  addr0078:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr0081:
                     this.iconLeft = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0093:
                        BindingManager.executeBindings(this,"iconLeft",this.iconLeft);
                     }
                  }
                  §§goto(addr00a0);
               }
            }
            addr00a0:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _MultiStateMediumBtnSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "multistate";
            if(!_loc2_)
            {
               _loc1_.id = "labelDisplay";
               if(_loc3_ || _loc3_)
               {
                  addr004c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0074:
                           this.labelDisplay = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0074);
            }
            §§goto(addr004c);
         }
         §§goto(addr0074);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.includeInLayout = false;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.visible = false;
               if(_loc3_ || _loc3_)
               {
                  addr0056:
                  _loc1_.id = "iconRight";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0081:
                              this.iconRight = _loc1_;
                              if(_loc3_)
                              {
                                 addr008b:
                                 BindingManager.executeBindings(this,"iconRight",this.iconRight);
                              }
                              §§goto(addr0098);
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0081);
                  }
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr0081);
         }
         §§goto(addr0056);
      }
      
      private function _MultiStateMediumBtnSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!_loc3_)
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = -7;
                     if(_loc2_ || _loc3_)
                     {
                        addr0076:
                        _loc1_.left = -5;
                        if(_loc2_)
                        {
                           addr0080:
                           _loc1_.includeInLayout = false;
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.id = "sparkle";
                              if(!_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00bc:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00c5:
                                          this.sparkle = _loc1_;
                                          if(_loc2_)
                                          {
                                             addr00cf:
                                             BindingManager.executeBindings(this,"sparkle",this.sparkle);
                                          }
                                          §§goto(addr00dc);
                                       }
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr00dc);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0080);
               }
               addr00dc:
               return _loc1_;
            }
            §§goto(addr00c5);
         }
         §§goto(addr0076);
      }
      
      public function ___MultiStateMediumBtnSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCurrentStateChange();
         }
      }
      
      public function ___MultiStateMediumBtnSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._738169824iconLeft;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._738169824iconLeft = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLeft",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0068);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
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
               if(!_loc4_)
               {
                  this._1402767069iconRight = param1;
                  if(!_loc4_)
                  {
                     addr0045:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconRight",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0045);
            }
         }
         addr0064:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1184053038labelDisplay = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0052);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._263713807overlayGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2011710186sparkle = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
   }
}

