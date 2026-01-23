package net.bigpoint.cityrama.view.optionsmenu.ui.skins
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.NonScrollingDataGroup;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VerticalBgScrollListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:NonScrollingDataGroup;
      
      private var _1102509693listBg:Rect;
      
      private var _273241018mainGroup:Group;
      
      private var _792138043offLabel:LocaLabel;
      
      private var _1343925163onLabel:LocaLabel;
      
      private var _1618627376verticalScrollBar:VScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function VerticalBgScrollListSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || _loc1_)
                           {
                              addr0065:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    addr0082:
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_ || _loc3_)
                                          {
                                             super();
                                             if(!_loc3_)
                                             {
                                                addr00c4:
                                                mx_internal::_document = this;
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   addr00df:
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._VerticalBgScrollListSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr00ff:
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            addr0106:
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr0119:
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr0128:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0133:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr0149:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_optionsmenu_ui_skins_VerticalBgScrollListSkinWatcherSetupUtil");
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr017d:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       addr019b:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return VerticalBgScrollListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr01c1:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01e7:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr0215:
                                                                                                this.mxmlContent = [this._VerticalBgScrollListSkin_HGroup1_c()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0225:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0232:
                                                                                                      this.addEventListener("creationComplete",this.___VerticalBgScrollListSkin_SparkSkin1_creationComplete);
                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                      {
                                                                                                         addr024c:
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[]
                                                                                                         })];
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr027c:
                                                                                                            i = 0;
                                                                                                            addr027a:
                                                                                                         }
                                                                                                      }
                                                                                                      loop0:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         loop1:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            loop2:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                                  {
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  Binding(bindings[i]).execute();
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc4_ || _loc1_))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        var _temp_25:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_25;
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      return;
                                                                                                      addr02e3:
                                                                                                   }
                                                                                                   §§goto(addr027a);
                                                                                                }
                                                                                                §§goto(addr024c);
                                                                                             }
                                                                                             §§goto(addr027a);
                                                                                          }
                                                                                          §§goto(addr02e3);
                                                                                       }
                                                                                       §§goto(addr0215);
                                                                                    }
                                                                                    §§goto(addr02e3);
                                                                                 }
                                                                                 §§goto(addr027c);
                                                                              }
                                                                              §§goto(addr01e7);
                                                                           }
                                                                           §§goto(addr027c);
                                                                        }
                                                                        §§goto(addr01c1);
                                                                     }
                                                                     §§goto(addr019b);
                                                                  }
                                                                  §§goto(addr02e3);
                                                               }
                                                               §§goto(addr017d);
                                                            }
                                                            §§goto(addr0225);
                                                         }
                                                         §§goto(addr0128);
                                                      }
                                                      §§goto(addr0133);
                                                   }
                                                   §§goto(addr0106);
                                                }
                                                §§goto(addr0232);
                                             }
                                             §§goto(addr0149);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr01e7);
                                    }
                                    §§goto(addr0215);
                                 }
                                 §§goto(addr0119);
                              }
                              §§goto(addr0082);
                           }
                           §§goto(addr0128);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr027c);
               }
               §§goto(addr00ff);
            }
            §§goto(addr0065);
         }
         §§goto(addr0128);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            VerticalBgScrollListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002c:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr002c);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this.onLabel.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.on");
            if(_loc2_ || Boolean(this))
            {
               this.offLabel.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.off");
            }
         }
      }
      
      private function _VerticalBgScrollListSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.gap = 3;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._VerticalBgScrollListSkin_Group1_i(),this._VerticalBgScrollListSkin_VScrollBar1_i()];
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0074);
                     }
                  }
                  §§goto(addr0088);
               }
               addr0074:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      private function _VerticalBgScrollListSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._VerticalBgScrollListSkin_Rect1_i(),this._VerticalBgScrollListSkin_HGroup2_c(),this._VerticalBgScrollListSkin_NonScrollingDataGroup1_i()];
                  addr004d:
                  if(_loc3_ || _loc2_)
                  {
                     addr007f:
                     _loc1_.id = "mainGroup";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00c4);
                           }
                        }
                        addr00ba:
                        this.mainGroup = _loc1_;
                        if(_loc3_)
                        {
                           addr00c4:
                           BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                        }
                        §§goto(addr00d1);
                     }
                  }
                  §§goto(addr00c4);
               }
               addr00d1:
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr004d);
      }
      
      private function _VerticalBgScrollListSkin_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!_loc3_)
         {
            _loc1_.radiusX = 5;
            if(_loc2_)
            {
               _loc1_.radiusY = 5;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.width = 333;
                  if(!_loc3_)
                  {
                     _loc1_.fill = this._VerticalBgScrollListSkin_SolidColor1_c();
                     if(_loc2_ || _loc3_)
                     {
                        addr007a:
                        _loc1_.initialized(this,"listBg");
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0090:
                           this.listBg = _loc1_;
                           if(_loc2_)
                           {
                              BindingManager.executeBindings(this,"listBg",this.listBg);
                           }
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr007a);
               }
               addr00a7:
               return _loc1_;
            }
         }
         §§goto(addr0090);
      }
      
      private function _VerticalBgScrollListSkin_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.color = 16777215;
         }
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.width = 80;
            if(_loc3_)
            {
               §§goto(addr002b);
            }
            §§goto(addr00b7);
         }
         addr002b:
         _loc1_.gap = 6;
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 30;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.left = 43;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._VerticalBgScrollListSkin_LocaLabel1_i(),this._VerticalBgScrollListSkin_LocaLabel2_i()];
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00b7:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00cb:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00cf);
                  }
               }
               §§goto(addr00cb);
            }
         }
         addr00cf:
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "optionsLabel";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 50;
               if(_loc3_)
               {
                  _loc1_.id = "onLabel";
                  if(_loc3_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0074);
               }
            }
            §§goto(addr0054);
         }
         addr0074:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr007d:
            this.onLabel = _loc1_;
            if(_loc3_)
            {
               addr0087:
               BindingManager.executeBindings(this,"onLabel",this.onLabel);
            }
         }
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "optionsLabel";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 50;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "offLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0081:
                              this.offLabel = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"offLabel",this.offLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0093);
            }
            §§goto(addr0064);
         }
         §§goto(addr0081);
      }
      
      private function _VerticalBgScrollListSkin_NonScrollingDataGroup1_i() : NonScrollingDataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:NonScrollingDataGroup = new NonScrollingDataGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.layout = this._VerticalBgScrollListSkin_VerticalLayout1_c();
                  if(!_loc2_)
                  {
                     addr0064:
                     _loc1_.id = "dataGroup";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008e:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0097:
                                 this.dataGroup = _loc1_;
                                 if(!_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0064);
            }
         }
         §§goto(addr008e);
      }
      
      private function _VerticalBgScrollListSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!_loc3_)
         {
            _loc1_.gap = 1;
            if(!_loc3_)
            {
               _loc1_.paddingTop = 50;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0056:
                  _loc1_.paddingLeft = 40;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.useVirtualLayout = false;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0056);
      }
      
      private function _VerticalBgScrollListSkin_VScrollBar1_i() : VScrollBar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScrollBar = new VScrollBar();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "slimVScrollBar";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "verticalScrollBar";
                  if(!_loc3_)
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0088);
                           }
                        }
                        §§goto(addr0092);
                     }
                     addr0088:
                     this.verticalScrollBar = _loc1_;
                     if(!_loc3_)
                     {
                        addr0092:
                        BindingManager.executeBindings(this,"verticalScrollBar",this.verticalScrollBar);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0092);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr005e);
         }
         §§goto(addr0092);
      }
      
      public function ___VerticalBgScrollListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleCreationComplete();
         }
      }
      
      private function _VerticalBgScrollListSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return dataGroup.contentHeight;
                        },null,"listBg.height");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr007f);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr009b);
            }
            §§goto(addr0099);
         }
         addr007f:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            addr0088:
            §§pop()[1] = new Binding(this,null,null,"verticalScrollBar.viewport","mainGroup");
            addr009b:
            addr0099:
            §§push(result);
            addr0086:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : NonScrollingDataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:NonScrollingDataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._385593099dataGroup = param1;
                  addr0040:
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
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
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get listBg() : Rect
      {
         return this._1102509693listBg;
      }
      
      public function set listBg(param1:Rect) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1102509693listBg;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1102509693listBg = param1;
                  addr003b:
                  if(_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listBg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0053);
            }
            addr0079:
            return;
         }
         §§goto(addr003b);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : Group
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._273241018mainGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0064);
            }
            addr008b:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get offLabel() : LocaLabel
      {
         return this._792138043offLabel;
      }
      
      public function set offLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._792138043offLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._792138043offLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get onLabel() : LocaLabel
      {
         return this._1343925163onLabel;
      }
      
      public function set onLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1343925163onLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1343925163onLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get verticalScrollBar() : VScrollBar
      {
         return this._1618627376verticalScrollBar;
      }
      
      public function set verticalScrollBar(param1:VScrollBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1618627376verticalScrollBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1618627376verticalScrollBar = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verticalScrollBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0061);
      }
   }
}

