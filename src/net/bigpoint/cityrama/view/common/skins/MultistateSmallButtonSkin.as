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
   
   public class MultistateSmallButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _738169824iconLeft:BriskImageDynaLib;
      
      private var _1402767069iconRight:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MultistateButton;
      
      public function MultistateSmallButtonSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.cacheAsBitmap = true;
                  if(!_loc2_)
                  {
                     this.mxmlContent = [this._MultistateSmallButtonSkin_HGroup1_c(),this._MultistateSmallButtonSkin_HGroup2_i(),this._MultistateSmallButtonSkin_HGroup3_c(),this._MultistateSmallButtonSkin_BriskImageDynaLib9_i()];
                     addr0049:
                     if(_loc1_)
                     {
                        this.currentState = "up";
                        if(_loc1_ || Boolean(this))
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr009a);
               }
               addr0089:
               this.addEventListener("currentStateChange",this.___MultistateSmallButtonSkin_SparkSkin1_currentStateChange);
               if(_loc1_)
               {
                  addr009a:
                  this.addEventListener("creationComplete",this.___MultistateSmallButtonSkin_SparkSkin1_creationComplete);
                  if(!_loc2_)
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
                  }
               }
               §§goto(addr00ff);
            }
            §§goto(addr0049);
         }
         addr00ff:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0044);
                  }
               }
               else
               {
                  addr0052:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0052);
         }
         addr0044:
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":1}});
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0044:
               TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":1}});
            }
            var _loc1_:§--UNKNOWN--§ = currentState;
            if(_loc2_ || _loc3_)
            {
               §§push("up");
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop() === _loc1_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr01b0:
                        §§push(1);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("over");
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr019e:
                        if(§§pop() === _loc1_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr01b0);
                           }
                           else
                           {
                              addr01dd:
                              §§push(2);
                              if(_loc2_ || _loc2_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push("down");
                           if(_loc2_)
                           {
                              if(§§pop() === _loc1_)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr01dd);
                                 }
                                 else
                                 {
                                    addr0202:
                                    §§push(3);
                                    if(_loc3_ && Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 §§goto(addr0221);
                              }
                              else
                              {
                                 §§goto(addr01fd);
                              }
                           }
                           addr01fd:
                           if("disabled" === _loc1_)
                           {
                              §§goto(addr0202);
                           }
                           else
                           {
                              §§push(4);
                           }
                           §§goto(addr0221);
                        }
                        §§goto(addr0221);
                     }
                     §§goto(addr01fd);
                  }
                  addr0221:
                  switch(§§pop())
                  {
                     case 0:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorUp")});
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           break;
                        }
                        TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":0}});
                        addr00f8:
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr012a:
                           TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":0}});
                           if(_loc2_)
                           {
                           }
                        }
                        break;
                     case 1:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorOver")});
                        if(_loc3_)
                        {
                        }
                        break;
                     case 2:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDown")});
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr012a);
                        break;
                     case 3:
                        TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr00f8);
                  }
                  return;
               }
               §§goto(addr019e);
            }
            §§goto(addr01b0);
         }
         §§goto(addr0044);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.commitProperties();
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(this.sparkle);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        if(this.hostComponent.showSparkle)
                        {
                           if(_loc2_)
                           {
                              §§push(this.sparkle);
                              if(_loc2_)
                              {
                                 §§push(true);
                                 if(!_loc1_)
                                 {
                                    §§pop().includeInLayout = §§pop();
                                    if(_loc2_)
                                    {
                                       addr0079:
                                       §§push(this.sparkle);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(true);
                                          if(_loc2_)
                                          {
                                             §§pop().visible = §§pop();
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                addr00e0:
                                                this.sparkle.visible = false;
                                                §§goto(addr00db);
                                             }
                                          }
                                          else
                                          {
                                             addr00cc:
                                             §§pop().includeInLayout = §§pop();
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00db:
                                                addr00df:
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   addr00ef:
                                                   this.handleCurrentStateChange();
                                                }
                                                §§goto(addr00f4);
                                             }
                                          }
                                          §§goto(addr00ef);
                                       }
                                       else
                                       {
                                          addr00b4:
                                          §§push(false);
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             §§goto(addr00cc);
                                          }
                                       }
                                       §§goto(addr00e0);
                                    }
                                    addr00f4:
                                    return;
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00ef);
                        }
                        else
                        {
                           §§push(this.sparkle);
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr00b4);
                           }
                        }
                        §§goto(addr00df);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00df);
            }
         }
         §§goto(addr00ef);
      }
      
      private function _MultistateSmallButtonSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr003d);
               }
               §§goto(addr0078);
            }
            §§goto(addr005c);
         }
         addr003d:
         _loc1_.percentWidth = 100;
         if(_loc3_ || Boolean(this))
         {
            addr005c:
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr006e);
            }
            §§goto(addr00a3);
         }
         addr006e:
         _loc1_.gap = 0;
         if(_loc3_)
         {
            addr0078:
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  addr00a3:
                  _loc1_.mxmlContent = [this._MultistateSmallButtonSkin_BriskImageDynaLib1_c(),this._MultistateSmallButtonSkin_BriskImageDynaLib2_c(),this._MultistateSmallButtonSkin_BriskImageDynaLib3_c()];
                  if(_loc3_)
                  {
                     §§goto(addr00bf);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00bf);
            }
            §§goto(addr00a3);
         }
         addr00bf:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr00cb:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "button_31px_left";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005a:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr005a);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "button_31px_middle";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr006f);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "button_31px_right";
               if(_loc3_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr0056);
      }
      
      private function _MultistateSmallButtonSkin_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0047:
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.gap = 0;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.verticalAlign = "middle";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.blendMode = "overlay";
                              if(_loc2_)
                              {
                                 addr0096:
                                 _loc1_.horizontalAlign = "center";
                                 if(!_loc3_)
                                 {
                                    addr00a0:
                                    _loc1_.mxmlContent = [this._MultistateSmallButtonSkin_BriskImageDynaLib4_c(),this._MultistateSmallButtonSkin_BriskImageDynaLib5_c(),this._MultistateSmallButtonSkin_BriskImageDynaLib6_c()];
                                    if(!_loc3_)
                                    {
                                       addr00bc:
                                       _loc1_.id = "overlayGroup";
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§goto(addr00cf);
                                       }
                                       §§goto(addr010a);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00db);
                           }
                           addr00cf:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00db:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr010a);
                              }
                           }
                           addr00f8:
                           this.overlayGroup = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr010a:
                              BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
                           }
                           §§goto(addr0117);
                        }
                        addr0117:
                        return _loc1_;
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00cf);
            }
            §§goto(addr0096);
         }
         §§goto(addr0047);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!(_loc2_ && Boolean(this)))
            {
               addr003e:
               _loc1_.dynaBmpSourceName = "button_31px_left";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0056);
            }
            addr005a:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  addr0052:
                  _loc1_.dynaBmpSourceName = "button_31px_middle";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0072:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0072);
               }
            }
            addr0076:
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "button_31px_right";
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr005e);
               }
               §§goto(addr006a);
            }
         }
         addr005e:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr006a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _MultistateSmallButtonSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 0;
                  if(_loc2_)
                  {
                     _loc1_.right = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.gap = 10;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007a:
                           _loc1_.verticalAlign = "middle";
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008d:
                              _loc1_.horizontalAlign = "center";
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 _loc1_.mxmlContent = [this._MultistateSmallButtonSkin_BriskImageDynaLib7_i(),this._MultistateSmallButtonSkin_LocaLabel1_i(),this._MultistateSmallButtonSkin_BriskImageDynaLib8_i()];
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00d3:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr00d3);
                              }
                           }
                        }
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr007a);
               }
               addr00d7:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr007a);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               addr0029:
               _loc1_.visible = false;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "iconLeft";
                  if(_loc3_ || _loc2_)
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006f:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr0082);
                        }
                     }
                  }
                  addr0078:
                  this.iconLeft = _loc1_;
                  if(_loc3_)
                  {
                     addr0082:
                     BindingManager.executeBindings(this,"iconLeft",this.iconLeft);
                  }
                  return _loc1_;
               }
               §§goto(addr0063);
            }
            §§goto(addr006f);
         }
         §§goto(addr0029);
      }
      
      private function _MultistateSmallButtonSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "multistate";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "labelDisplay";
               if(_loc3_)
               {
                  addr0049:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0071:
                           this.labelDisplay = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0083:
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0071);
            }
         }
         §§goto(addr0049);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.includeInLayout = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0037:
               _loc1_.visible = false;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "iconRight";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0097:
                              this.iconRight = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 addr00a9:
                                 BindingManager.executeBindings(this,"iconRight",this.iconRight);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00a9);
               }
            }
            §§goto(addr007a);
         }
         §§goto(addr0037);
      }
      
      private function _MultistateSmallButtonSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.visible = false;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.top = -7;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.left = -5;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc3_ || _loc2_)
                           {
                              addr009b:
                              _loc1_.id = "sparkle";
                              if(_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00be:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00c7);
                                       }
                                       §§goto(addr00d9);
                                    }
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00be);
                           }
                        }
                     }
                     §§goto(addr00c7);
                  }
               }
               §§goto(addr009b);
            }
            addr00c7:
            this.sparkle = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr00d9:
               BindingManager.executeBindings(this,"sparkle",this.sparkle);
            }
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      public function ___MultistateSmallButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCurrentStateChange();
         }
      }
      
      public function ___MultistateSmallButtonSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._738169824iconLeft = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLeft",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005c);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1402767069iconRight = param1;
                  if(!_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconRight",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0052);
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
               if(_loc3_ || Boolean(param1))
               {
                  this._1184053038labelDisplay = param1;
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
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._263713807overlayGroup = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2011710186sparkle;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2011710186sparkle = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
         }
         addr0079:
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
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
   }
}

