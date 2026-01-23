package net.bigpoint.cityrama.view.residentSelection.ui.skins
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentChoiceDetailComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ResidentChoiceInactiveSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1022398728actionButton:MultistateButton;
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _177936123infoText:LocaLabel;
      
      private var _1259807996levelAmount:LocaLabel;
      
      private var _795895972levelFeatureButton:DynamicImageButton;
      
      private var _184876379levelGroup:HGroup;
      
      private var _1656559075levelIcon:BriskImageDynaLib;
      
      private var _3327275lock:BriskImageDynaLib;
      
      private var _239061202needFeatureButton:DynamicImageButton;
      
      private var _865336879needIcon:BriskImageDynaLib;
      
      private var _311416662residentType:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:ResidentChoiceDetailComponent;
      
      public function ResidentChoiceInactiveSkin()
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
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_ || _loc1_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0041:
                     §§pop().§§slot[5] = null;
                     addr0040:
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || _loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    super();
                                    if(_loc4_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§pop().§§slot[1] = this._ResidentChoiceInactiveSkin_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   addr00d0:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            addr00f5:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr0102:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentSelection_ui_skins_ResidentChoiceInactiveSkinWatcherSetupUtil");
                                                                     if(_loc4_ || _loc1_)
                                                                     {
                                                                        addr0126:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr012d:
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0150:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ResidentChoiceInactiveSkin[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr016c:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0193:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01b9:
                                                                                       this.mxmlContent = [this._ResidentChoiceInactiveSkin_VGroup1_c()];
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01ca:
                                                                                          this.currentState = "up";
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01d6:
                                                                                             states = [new State({
                                                                                                "name":"up",
                                                                                                "overrides":[]
                                                                                             }),new State({
                                                                                                "name":"normal",
                                                                                                "overrides":[]
                                                                                             }),new State({
                                                                                                "name":"over",
                                                                                                "overrides":[]
                                                                                             }),new State({
                                                                                                "name":"down",
                                                                                                "overrides":[]
                                                                                             }),new State({
                                                                                                "name":"disabled",
                                                                                                "overrides":[]
                                                                                             })];
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                addr0241:
                                                                                                i = 0;
                                                                                                addr023f:
                                                                                             }
                                                                                             var _temp_11:*;
                                                                                             loop0:
                                                                                             do
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
                                                                                                      while(§§pop() < §§pop().§§slot[1].length)
                                                                                                      {
                                                                                                         Binding(bindings[i]).execute();
                                                                                                         if(_loc3_ && _loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(var _temp_11:* = §§pop(), §§pop().§§slot[4] = _temp_11, !_loc3_);
                                                                                             
                                                                                             return;
                                                                                             addr02a4:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr023f);
                                                                                    }
                                                                                    §§goto(addr02a4);
                                                                                 }
                                                                                 §§goto(addr023f);
                                                                              }
                                                                              §§goto(addr01b9);
                                                                           }
                                                                           §§goto(addr01d6);
                                                                        }
                                                                        §§goto(addr0241);
                                                                     }
                                                                     §§goto(addr01d6);
                                                                  }
                                                                  §§goto(addr012d);
                                                               }
                                                               §§goto(addr0126);
                                                            }
                                                            §§goto(addr0150);
                                                         }
                                                         §§goto(addr0193);
                                                      }
                                                      §§goto(addr0241);
                                                   }
                                                   §§goto(addr0102);
                                                }
                                                §§goto(addr012d);
                                             }
                                             §§goto(addr016c);
                                          }
                                          §§goto(addr0241);
                                       }
                                       §§goto(addr0150);
                                    }
                                    §§goto(addr02a4);
                                 }
                                 §§goto(addr023f);
                              }
                              §§goto(addr0150);
                           }
                           §§goto(addr0193);
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr01d6);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr01ca);
            }
            §§goto(addr0041);
         }
         §§goto(addr0040);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            ResidentChoiceInactiveSkin._watcherSetupUtil = param1;
         }
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
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004f:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function _ResidentChoiceInactiveSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0039:
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.gap = -5;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr00a7);
            }
            addr0068:
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(this))
            {
               addr007a:
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_Group1_c(),this._ResidentChoiceInactiveSkin_Group4_c()];
                  if(_loc2_)
                  {
                     addr00a7:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00bb:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00bf);
                  }
               }
               §§goto(addr00bb);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _ResidentChoiceInactiveSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 286;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_BriskImageDynaLib1_i(),this._ResidentChoiceInactiveSkin_VGroup2_c()];
               if(!_loc3_)
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0074);
            }
            §§goto(addr0064);
         }
         addr0074:
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "playcard_active";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "background";
                  if(!_loc2_)
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008d:
                              this.background = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr009f:
                                 BindingManager.executeBindings(this,"background",this.background);
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr008d);
            }
            §§goto(addr005d);
         }
         addr00ac:
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 155;
            if(_loc3_)
            {
               _loc1_.top = 130;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.left = 28;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.gap = 0;
                     if(!_loc2_)
                     {
                        _loc1_.bottom = 26;
                        if(_loc3_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr0084);
                     }
                     addr007a:
                     _loc1_.right = 26;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_Group2_c(),this._ResidentChoiceInactiveSkin_Group3_c(),this._ResidentChoiceInactiveSkin_HGroup1_c(),this._ResidentChoiceInactiveSkin_HGroup5_c()];
                        addr0084:
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr00ba);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00ba);
                  }
                  addr00ba:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00ce:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00ce);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr00ce);
      }
      
      private function _ResidentChoiceInactiveSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 29;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               addr0029:
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_LocaLabel1_i()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr006a);
                  }
               }
               §§goto(addr007e);
            }
            addr006a:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr007e:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0029);
      }
      
      private function _ResidentChoiceInactiveSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "residentName";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 2;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "residentType";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0068:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0099:
                                 this.residentType = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a3:
                                    BindingManager.executeBindings(this,"residentType",this.residentType);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0068);
            }
            §§goto(addr0099);
         }
         addr00b0:
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               §§goto(addr003d);
            }
            §§goto(addr005c);
         }
         addr003d:
         _loc1_.height = 38;
         if(!(_loc2_ && _loc2_))
         {
            addr005c:
            _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_LocaLabel2_i()];
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0074);
            }
            §§goto(addr0080);
         }
         addr0074:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0080:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "residentInfo";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.maxHeight = 24;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 1;
                     if(!_loc3_)
                     {
                        addr0065:
                        _loc1_.id = "infoText";
                        if(_loc2_)
                        {
                           addr0070:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr009a);
                                 }
                              }
                              §§goto(addr00ac);
                           }
                        }
                        addr009a:
                        this.infoText = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00ac:
                           BindingManager.executeBindings(this,"infoText",this.infoText);
                        }
                        §§goto(addr00b9);
                     }
                     addr00b9:
                     return _loc1_;
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00ac);
            }
            §§goto(addr0065);
         }
         §§goto(addr0070);
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.height = 40;
            if(_loc3_)
            {
               §§goto(addr0038);
            }
            §§goto(addr004d);
         }
         addr0038:
         _loc1_.percentWidth = 100;
         if(!_loc2_)
         {
            addr004d:
            _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_HGroup2_c(),this._ResidentChoiceInactiveSkin_HGroup4_c()];
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr006b);
            }
            §§goto(addr0077);
         }
         addr006b:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0077:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_BriskImageDynaLib2_i(),this._ResidentChoiceInactiveSkin_HGroup3_c()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009e);
                        }
                     }
                     §§goto(addr009a);
                  }
               }
               addr009e:
               return _loc1_;
            }
         }
         §§goto(addr009a);
      }
      
      private function _ResidentChoiceInactiveSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "layer_needs_icon";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!_loc2_)
               {
                  _loc1_.id = "needIcon";
                  if(_loc3_)
                  {
                     addr0056:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007e:
                              this.needIcon = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"needIcon",this.needIcon);
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0090);
               }
            }
            §§goto(addr007e);
         }
         §§goto(addr0056);
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.height = 40;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.paddingTop = 2;
               if(_loc2_ || _loc2_)
               {
                  addr005c:
                  _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_DynamicImageButton1_i()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0074:
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
            §§goto(addr005c);
         }
         §§goto(addr0074);
      }
      
      private function _ResidentChoiceInactiveSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc2_)
            {
               _loc1_.id = "needFeatureButton";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr0087);
                  }
               }
            }
            §§goto(addr007d);
         }
         addr006c:
         _loc1_.document = this;
         if(!(_loc2_ && _loc3_))
         {
            addr007d:
            this.needFeatureButton = _loc1_;
            if(_loc3_)
            {
               addr0087:
               BindingManager.executeBindings(this,"needFeatureButton",this.needFeatureButton);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               addr002b:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     addr004c:
                     _loc1_.horizontalAlign = "right";
                     if(!_loc3_)
                     {
                        addr0057:
                        _loc1_.gap = 2;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_LocaLabel3_c(),this._ResidentChoiceInactiveSkin_BriskImageDynaLib3_i()];
                           if(!_loc3_)
                           {
                              addr0089:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr009d:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr009d);
                  }
                  addr00a1:
                  return _loc1_;
               }
               §§goto(addr0057);
            }
            §§goto(addr004c);
         }
         §§goto(addr002b);
      }
      
      private function _ResidentChoiceInactiveSkin_LocaLabel3_c() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "residentNumbers";
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0053);
            }
            §§goto(addr0066);
         }
         addr0053:
         _loc1_.text = "+";
         if(_loc3_ || _loc2_)
         {
            addr0066:
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
      
      private function _ResidentChoiceInactiveSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "currencyIcon";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr004a);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0066);
            }
         }
         addr004a:
         _loc1_.document = this;
         if(!(_loc3_ && _loc2_))
         {
            addr0066:
            this.currencyIcon = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr0078:
               BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.height = 36;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 95;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_HGroup6_c(),this._ResidentChoiceInactiveSkin_HGroup8_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr0073);
                  }
               }
            }
            §§goto(addr007f);
         }
         addr0073:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr007f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(_loc3_)
                     {
                        addr0074:
                        _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_BriskImageDynaLib4_i(),this._ResidentChoiceInactiveSkin_HGroup7_c()];
                        if(!_loc2_)
                        {
                           §§goto(addr008a);
                        }
                        §§goto(addr0096);
                     }
                     addr008a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0096:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0074);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _ResidentChoiceInactiveSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "icon_buildinglevel";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "levelIcon";
                  if(!_loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr008f:
                              this.levelIcon = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a1:
                                 BindingManager.executeBindings(this,"levelIcon",this.levelIcon);
                              }
                           }
                           §§goto(addr00ae);
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr00a1);
               }
               addr00ae:
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr008f);
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 40;
            if(!_loc3_)
            {
               _loc1_.paddingTop = 2;
               if(!(_loc3_ && _loc2_))
               {
                  addr0061:
                  _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_DynamicImageButton2_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0085);
               }
               addr0089:
               return _loc1_;
            }
            §§goto(addr0061);
         }
         §§goto(addr0085);
      }
      
      private function _ResidentChoiceInactiveSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalCenter = 25;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.enabled = false;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(_loc3_ || _loc2_)
                     {
                        addr006e:
                        _loc1_.id = "levelFeatureButton";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00ab:
                                    this.levelFeatureButton = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00b5:
                                       BindingManager.executeBindings(this,"levelFeatureButton",this.levelFeatureButton);
                                    }
                                 }
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0081);
                  }
                  addr00c2:
                  return _loc1_;
               }
            }
            §§goto(addr00b5);
         }
         §§goto(addr006e);
      }
      
      private function _ResidentChoiceInactiveSkin_HGroup8_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "right";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0050:
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc3_)
                     {
                        addr006e:
                        _loc1_.gap = 2;
                        if(!_loc3_)
                        {
                           addr0078:
                           _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_VGroup3_c(),this._ResidentChoiceInactiveSkin_LocaLabel4_i()];
                           if(_loc2_)
                           {
                              _loc1_.id = "levelGroup";
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00ac:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          §§goto(addr00c1);
                                       }
                                    }
                                    §§goto(addr00cb);
                                 }
                                 addr00c1:
                                 this.levelGroup = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00cb:
                                    BindingManager.executeBindings(this,"levelGroup",this.levelGroup);
                                 }
                                 §§goto(addr00d8);
                              }
                              addr00d8:
                              return _loc1_;
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr006e);
            }
            §§goto(addr00cb);
         }
         §§goto(addr0050);
      }
      
      private function _ResidentChoiceInactiveSkin_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.paddingBottom = 2;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_BriskImageDynaLib5_i()];
               if(_loc2_)
               {
                  addr0045:
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
         §§goto(addr0045);
      }
      
      private function _ResidentChoiceInactiveSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "lock_blue";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0054:
                  _loc1_.id = "lock";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0091:
                              this.lock = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"lock",this.lock);
                              }
                           }
                        }
                        §§goto(addr00a8);
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0067);
            }
            §§goto(addr0054);
         }
         addr00a8:
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "residentNumbers";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr003f:
               _loc1_.id = "levelAmount";
               if(_loc3_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           this.levelAmount = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"levelAmount",this.levelAmount);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr004a);
         }
         §§goto(addr003f);
      }
      
      private function _ResidentChoiceInactiveSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._ResidentChoiceInactiveSkin_MultistateButton1_i()];
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr006d);
            }
         }
         addr0071:
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 205;
            if(!_loc2_)
            {
               _loc1_.enabled = false;
               if(!_loc2_)
               {
                  _loc1_.id = "actionButton";
                  if(!_loc2_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
            }
            §§goto(addr0088);
         }
         addr0055:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr006d:
               _loc1_.document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr007e);
               }
               §§goto(addr0088);
            }
         }
         addr007e:
         this.actionButton = _loc1_;
         if(!_loc2_)
         {
            addr0088:
            BindingManager.executeBindings(this,"actionButton",this.actionButton);
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceInactiveSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0043);
               }
               §§goto(addr005f);
            }
            §§goto(addr005d);
         }
         addr0043:
         §§push(§§pop().§§slot[1]);
         if(_loc2_)
         {
            §§pop()[0] = new Binding(this,function():String
            {
               var _loc1_:* = getStyle("infoTooltip");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"levelFeatureButton.toolTip");
            addr005f:
            addr005d:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : MultistateButton
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1022398728actionButton;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1022398728actionButton = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1332194002background;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1332194002background = param1;
                  addr0040:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyIcon() : BriskImageDynaLib
      {
         return this._1004941354currencyIcon;
      }
      
      public function set currencyIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1004941354currencyIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1004941354currencyIcon = param1;
                  if(!_loc4_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0052);
            }
            addr0078:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177936123infoText;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._177936123infoText = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
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
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelAmount() : LocaLabel
      {
         return this._1259807996levelAmount;
      }
      
      public function set levelAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1259807996levelAmount;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1259807996levelAmount = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0061);
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get levelFeatureButton() : DynamicImageButton
      {
         return this._795895972levelFeatureButton;
      }
      
      public function set levelFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._795895972levelFeatureButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._795895972levelFeatureButton = param1;
                  addr0038:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelGroup() : HGroup
      {
         return this._184876379levelGroup;
      }
      
      public function set levelGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._184876379levelGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._184876379levelGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get levelIcon() : BriskImageDynaLib
      {
         return this._1656559075levelIcon;
      }
      
      public function set levelIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1656559075levelIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1656559075levelIcon = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get lock() : BriskImageDynaLib
      {
         return this._3327275lock;
      }
      
      public function set lock(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3327275lock;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._3327275lock = param1;
                  if(_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get needFeatureButton() : DynamicImageButton
      {
         return this._239061202needFeatureButton;
      }
      
      public function set needFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._239061202needFeatureButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._239061202needFeatureButton = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006b);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needFeatureButton",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get needIcon() : BriskImageDynaLib
      {
         return this._865336879needIcon;
      }
      
      public function set needIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._865336879needIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._865336879needIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentType() : LocaLabel
      {
         return this._311416662residentType;
      }
      
      public function set residentType(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._311416662residentType;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._311416662residentType = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentType",_loc2_,param1));
                        }
                     }
                     §§goto(addr005f);
                  }
               }
               §§goto(addr0050);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ResidentChoiceDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ResidentChoiceDetailComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0065);
               }
               addr004e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
   }
}

