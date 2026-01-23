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
   
   public class MultiStateMiniButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _738169824iconLeft:BriskImageDynaLib;
      
      private var _1402767069iconRight:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MultistateButton;
      
      public function MultiStateMiniButtonSkin()
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
               if(!(_loc2_ && Boolean(this)))
               {
                  this.cacheAsBitmap = true;
                  if(_loc1_)
                  {
                     this.mxmlContent = [this._MultiStateMiniButtonSkin_HGroup1_c(),this._MultiStateMiniButtonSkin_HGroup2_i(),this._MultiStateMiniButtonSkin_HGroup3_c(),this._MultiStateMiniButtonSkin_BriskImageDynaLib9_i()];
                     if(!(_loc2_ && _loc1_))
                     {
                        this.currentState = "up";
                        addr006b:
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00bb);
                     }
                     addr0089:
                     this.addEventListener("currentStateChange",this.___MultiStateMiniButtonSkin_SparkSkin1_currentStateChange);
                     if(_loc1_ || Boolean(this))
                     {
                        this.addEventListener("creationComplete",this.___MultiStateMiniButtonSkin_SparkSkin1_creationComplete);
                        if(!(_loc2_ && _loc1_))
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
                           addr00bb:
                        }
                     }
                     §§goto(addr010f);
                  }
                  addr010f:
                  return;
               }
               §§goto(addr0089);
            }
            §§goto(addr006b);
         }
         §§goto(addr00bb);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
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
            if(!(_loc1_ && Boolean(this)))
            {
               addr0063:
               TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":1}});
               if(_loc2_)
               {
                  TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":1}});
               }
            }
            return;
         }
         §§goto(addr0063);
      }
      
      private function handleCurrentStateChange() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":1}});
            if(_loc3_ || _loc3_)
            {
               TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":1}});
            }
         }
         var _loc1_:§--UNKNOWN--§ = currentState;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            §§push("up");
            if(_loc3_ || _loc2_)
            {
               if(§§pop() === _loc1_)
               {
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                     }
                  }
                  else
                  {
                     addr0205:
                     §§push(3);
                     if(_loc2_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr0224);
               }
               else
               {
                  §§push("over");
                  if(_loc3_)
                  {
                     §§goto(addr019e);
                  }
                  §§goto(addr01d3);
               }
            }
            addr019e:
            if(§§pop() === _loc1_)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr01b0:
                  §§push(1);
                  if(_loc2_ && _loc3_)
                  {
                  }
               }
               else
               {
                  addr01f2:
                  §§push(2);
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               §§push("down");
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr01d3:
                  if(§§pop() === _loc1_)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr01f2);
                     }
                     else
                     {
                        §§goto(addr0205);
                     }
                  }
                  else
                  {
                     §§goto(addr0200);
                  }
                  §§goto(addr0205);
               }
               addr0200:
               if("disabled" === _loc1_)
               {
                  §§goto(addr0205);
               }
               else
               {
                  §§push(4);
               }
               §§goto(addr0224);
            }
            addr0224:
            switch(§§pop())
            {
               case 0:
                  TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorUp")});
                  if(_loc3_ || _loc3_)
                  {
                  }
                  break;
               case 1:
                  TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorOver")});
                  if(_loc2_ && _loc2_)
                  {
                  }
                  break;
               case 2:
                  TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDown")});
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr0132:
                  TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":0}});
                  if(_loc3_)
                  {
                  }
                  break;
               case 3:
                  TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
                  if(!(_loc3_ || Boolean(_loc1_)))
                  {
                     break;
                  }
                  TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":0}});
                  if(!(_loc3_ || Boolean(this)))
                  {
                     break;
                  }
                  §§goto(addr0132);
            }
            return;
         }
         §§goto(addr01b0);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§push(this.sparkle);
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr003a:
                        if(this.hostComponent.showSparkle)
                        {
                           if(!_loc1_)
                           {
                              §§push(this.sparkle);
                              if(_loc2_)
                              {
                                 §§push(true);
                                 if(!_loc1_)
                                 {
                                    §§pop().includeInLayout = §§pop();
                                    if(!_loc1_)
                                    {
                                       §§push(this.sparkle);
                                       if(!_loc1_)
                                       {
                                          §§goto(addr0072);
                                       }
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr0078);
                              }
                              else
                              {
                                 addr00a6:
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    §§goto(addr00ac);
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00bb);
                        }
                        else
                        {
                           §§push(this.sparkle);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr00a6);
                           }
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00c7);
               }
               addr0072:
               §§push(true);
               if(_loc2_)
               {
                  addr0078:
                  §§pop().visible = §§pop();
                  if(_loc2_ || Boolean(this))
                  {
                  }
                  addr00c7:
                  this.handleCurrentStateChange();
               }
               else
               {
                  addr00ac:
                  §§pop().includeInLayout = §§pop();
                  if(!(_loc1_ && _loc2_))
                  {
                     addr00c0:
                     this.sparkle.visible = false;
                     addr00bf:
                     addr00bb:
                     if(!_loc1_)
                     {
                        §§goto(addr00c7);
                     }
                  }
               }
               return;
            }
            §§goto(addr003a);
         }
         §§goto(addr00bb);
      }
      
      private function _MultiStateMiniButtonSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.left = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     §§goto(addr0057);
                  }
                  §§goto(addr00a4);
               }
               addr0057:
               if(_loc3_ || _loc3_)
               {
                  addr0075:
                  _loc1_.gap = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._MultiStateMiniButtonSkin_BriskImageDynaLib1_c(),this._MultiStateMiniButtonSkin_BriskImageDynaLib2_c(),this._MultiStateMiniButtonSkin_BriskImageDynaLib3_c()];
                           §§goto(addr00a4);
                        }
                        §§goto(addr00cd);
                     }
                  }
                  addr00a4:
                  if(_loc3_)
                  {
                     addr00cd:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00e5);
               }
               addr00e5:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr00a4);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc2_ || _loc3_)
            {
               addr0052:
               _loc1_.dynaBmpSourceName = "button_27px_left";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  addr0058:
                  _loc1_.dynaBmpSourceName = "button_27px_middle";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0078);
            }
         }
         §§goto(addr0058);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "button_27px_right";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr006b:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _MultiStateMiniButtonSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.gap = 0;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.verticalAlign = "middle";
                           if(!_loc3_)
                           {
                              _loc1_.blendMode = "overlay";
                              if(!_loc3_)
                              {
                                 addr0098:
                                 _loc1_.horizontalAlign = "center";
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    _loc1_.mxmlContent = [this._MultiStateMiniButtonSkin_BriskImageDynaLib4_c(),this._MultiStateMiniButtonSkin_BriskImageDynaLib5_c(),this._MultiStateMiniButtonSkin_BriskImageDynaLib6_c()];
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00c6:
                                       _loc1_.id = "overlayGroup";
                                       if(_loc2_)
                                       {
                                          addr00d1:
                                          if(!_loc1_.document)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                _loc1_.document = this;
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr0105:
                                                   this.overlayGroup = _loc1_;
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr0117:
                                                      BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
                                                   }
                                                   §§goto(addr0124);
                                                }
                                                §§goto(addr0117);
                                             }
                                             §§goto(addr0124);
                                          }
                                          §§goto(addr0105);
                                       }
                                       §§goto(addr0117);
                                    }
                                 }
                                 §§goto(addr0124);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr0124);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr0117);
               }
               §§goto(addr0098);
            }
            addr0124:
            return _loc1_;
         }
         §§goto(addr00a2);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "button_27px_left";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0075:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0075);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(this))
               {
                  addr005c:
                  _loc1_.dynaBmpSourceName = "button_27px_middle";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005c);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "button_27px_right";
               if(!_loc2_)
               {
                  addr0042:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0052);
            }
            §§goto(addr0042);
         }
         addr0052:
         return _loc1_;
      }
      
      private function _MultiStateMiniButtonSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.left = 0;
               if(_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!_loc2_)
                  {
                     _loc1_.right = 0;
                     addr0041:
                     if(!_loc2_)
                     {
                        _loc1_.gap = 10;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.verticalAlign = "middle";
                           if(_loc3_)
                           {
                              _loc1_.horizontalAlign = "center";
                              if(_loc3_)
                              {
                                 addr008a:
                                 _loc1_.mxmlContent = [this._MultiStateMiniButtonSkin_BriskImageDynaLib7_i(),this._MultiStateMiniButtonSkin_LocaLabel1_i(),this._MultiStateMiniButtonSkin_BriskImageDynaLib8_i()];
                                 if(_loc3_)
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           addr00a6:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00b2:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00b2);
                  }
                  addr00b6:
                  return _loc1_;
               }
               §§goto(addr00b2);
            }
            §§goto(addr0041);
         }
         §§goto(addr008a);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               addr0030:
               _loc1_.visible = false;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "iconLeft";
                  if(!_loc2_)
                  {
                     addr0058:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr0094);
                        }
                     }
                  }
                  addr0082:
                  this.iconLeft = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr0094:
                     BindingManager.executeBindings(this,"iconLeft",this.iconLeft);
                  }
                  return _loc1_;
               }
               §§goto(addr0058);
            }
            §§goto(addr0064);
         }
         §§goto(addr0030);
      }
      
      private function _MultiStateMiniButtonSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "multistate";
            if(!_loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0066);
         }
         addr0032:
         _loc1_.id = "labelDisplay";
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0066:
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0084:
                     this.labelDisplay = _loc1_;
                     if(!(_loc3_ && _loc3_))
                     {
                        BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                     }
                  }
                  §§goto(addr00a3);
               }
            }
            §§goto(addr0084);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(_loc3_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr0054);
            }
            addr0049:
            _loc1_.id = "iconRight";
            if(_loc3_)
            {
               addr0054:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0060:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr007e:
                        this.iconRight = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0090:
                           BindingManager.executeBindings(this,"iconRight",this.iconRight);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr007e);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _MultiStateMiniButtonSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(_loc2_)
               {
                  _loc1_.visible = false;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.top = -7;
                     if(!_loc3_)
                     {
                        _loc1_.left = -5;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0073:
                           _loc1_.includeInLayout = false;
                           if(!_loc3_)
                           {
                              addr007c:
                              _loc1_.id = "sparkle";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00a6:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00af:
                                          this.sparkle = _loc1_;
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr00c1:
                                             BindingManager.executeBindings(this,"sparkle",this.sparkle);
                                          }
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00c1);
                                    }
                                    §§goto(addr00ce);
                                 }
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0073);
                  }
                  addr00ce:
                  return _loc1_;
               }
            }
            §§goto(addr00a6);
         }
         §§goto(addr007c);
      }
      
      public function ___MultiStateMiniButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCurrentStateChange();
         }
      }
      
      public function ___MultiStateMiniButtonSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._738169824iconLeft = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLeft",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconRight() : BriskImageDynaLib
      {
         return this._1402767069iconRight;
      }
      
      public function set iconRight(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1402767069iconRight;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1402767069iconRight = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconRight",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0059);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1184053038labelDisplay = param1;
                  addr0041:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayGroup() : HGroup
      {
         return this._263713807overlayGroup;
      }
      
      public function set overlayGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._263713807overlayGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr004c:
                  this._263713807overlayGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkle() : BriskImageDynaLib
      {
         return this._2011710186sparkle;
      }
      
      public function set sparkle(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2011710186sparkle;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2011710186sparkle = param1;
                  if(!_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : MultistateButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
   }
}

