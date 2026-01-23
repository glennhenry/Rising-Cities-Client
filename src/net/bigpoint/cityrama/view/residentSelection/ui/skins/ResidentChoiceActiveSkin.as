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
   
   public class ResidentChoiceActiveSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      private var _239061202needFeatureButton:DynamicImageButton;
      
      private var _865336879needIcon:BriskImageDynaLib;
      
      private var _311416662residentType:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:ResidentChoiceDetailComponent;
      
      public function ResidentChoiceActiveSkin()
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
            if(!(_loc3_ && _loc1_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0045:
                     §§pop().§§slot[5] = null;
                     addr0044:
                     if(_loc4_ || _loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    addr0086:
                                    super();
                                    if(_loc4_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             addr00b8:
                                             §§pop().§§slot[1] = this._ResidentChoiceActiveSkin_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr00eb:
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr0106:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr011a:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentSelection_ui_skins_ResidentChoiceActiveSkinWatcherSetupUtil");
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr013d:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr015e:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ResidentChoiceActiveSkin[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr0182:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01a8:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       this.mxmlContent = [this._ResidentChoiceActiveSkin_VGroup1_c()];
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr01ee:
                                                                                          this.currentState = "up";
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01fb:
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
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                addr0265:
                                                                                                i = 0;
                                                                                                addr0263:
                                                                                             }
                                                                                             var _temp_16:*;
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
                                                                                                         if(!(_loc4_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, _loc4_ || _loc3_);
                                                                                             
                                                                                             return;
                                                                                             addr02d1:
                                                                                          }
                                                                                          §§goto(addr0263);
                                                                                       }
                                                                                       §§goto(addr02d1);
                                                                                    }
                                                                                    §§goto(addr01fb);
                                                                                 }
                                                                                 §§goto(addr01ee);
                                                                              }
                                                                              §§goto(addr02d1);
                                                                           }
                                                                           §§goto(addr01fb);
                                                                        }
                                                                        §§goto(addr0265);
                                                                     }
                                                                     §§goto(addr0263);
                                                                  }
                                                                  §§goto(addr0265);
                                                               }
                                                               §§goto(addr0263);
                                                            }
                                                            §§goto(addr015e);
                                                         }
                                                         §§goto(addr01ee);
                                                      }
                                                      §§goto(addr013d);
                                                   }
                                                   §§goto(addr0106);
                                                }
                                                §§goto(addr0265);
                                             }
                                             §§goto(addr0182);
                                          }
                                          §§goto(addr011a);
                                       }
                                       §§goto(addr01ee);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr01a8);
                              }
                              §§goto(addr0263);
                           }
                           §§goto(addr0182);
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr00eb);
            }
            §§goto(addr0045);
         }
         §§goto(addr0044);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            ResidentChoiceActiveSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0053);
                  }
               }
               else
               {
                  addr0059:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0053:
            return;
         }
         §§goto(addr0059);
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
      
      private function _ResidentChoiceActiveSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               addr0031:
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.gap = -5;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr0069:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr0086);
                        }
                        §§goto(addr00a8);
                     }
                     addr0086:
                     _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_Group1_c(),this._ResidentChoiceActiveSkin_Group4_c()];
                     if(!_loc3_)
                     {
                        addr009c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00a8:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr009c);
            }
            §§goto(addr0069);
         }
         §§goto(addr0031);
      }
      
      private function _ResidentChoiceActiveSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 286;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr004c:
               _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_BriskImageDynaLib1_i(),this._ResidentChoiceActiveSkin_VGroup2_c()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "playcard_active";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "background";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0088);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0091);
                  }
               }
               addr0088:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr0091:
                  this.background = _loc1_;
                  if(_loc3_)
                  {
                     addr009b:
                     BindingManager.executeBindings(this,"background",this.background);
                  }
               }
               return _loc1_;
            }
            §§goto(addr009b);
         }
         §§goto(addr0091);
      }
      
      private function _ResidentChoiceActiveSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.width = 155;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0033);
            }
            §§goto(addr0074);
         }
         addr0033:
         _loc1_.top = 130;
         if(_loc2_)
         {
            _loc1_.left = 28;
            if(_loc2_)
            {
               _loc1_.gap = 0;
               if(_loc2_)
               {
                  _loc1_.bottom = 26;
                  if(_loc2_)
                  {
                     _loc1_.right = 26;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_Group2_c(),this._ResidentChoiceActiveSkin_Group3_c(),this._ResidentChoiceActiveSkin_HGroup1_c(),this._ResidentChoiceActiveSkin_HGroup5_c()];
                        addr0074:
                        if(_loc2_)
                        {
                           §§goto(addr00a3);
                        }
                        §§goto(addr00b7);
                     }
                     addr00a3:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00b7:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0074);
            }
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 29;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr0055:
                  _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel1_i()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0079);
               }
            }
            addr007d:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "residentName";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 2;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "residentType";
                     if(_loc3_)
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0086:
                                 this.residentType = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0090:
                                    BindingManager.executeBindings(this,"residentType",this.residentType);
                                 }
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0086);
                     }
                     addr009d:
                     return _loc1_;
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0086);
            }
            §§goto(addr0090);
         }
         §§goto(addr0086);
      }
      
      private function _ResidentChoiceActiveSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 38;
               if(_loc3_)
               {
                  addr004c:
                  _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel2_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "residentInfo";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.maxHeight = 24;
                  if(_loc3_)
                  {
                     _loc1_.verticalCenter = 1;
                     if(_loc3_)
                     {
                        _loc1_.id = "infoText";
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr006a);
                        }
                        §§goto(addr009e);
                     }
                  }
                  addr006a:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr008b:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0094);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0094);
               }
            }
            §§goto(addr008b);
         }
         addr0094:
         this.infoText = _loc1_;
         if(_loc3_)
         {
            addr009e:
            BindingManager.executeBindings(this,"infoText",this.infoText);
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.height = 40;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005e:
                  _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_HGroup2_c(),this._ResidentChoiceActiveSkin_HGroup4_c()];
                  if(_loc3_)
                  {
                     §§goto(addr0074);
                  }
                  §§goto(addr0088);
               }
               addr0074:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr005e);
         }
         §§goto(addr0088);
      }
      
      private function _ResidentChoiceActiveSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr0051:
                     _loc1_.gap = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006e:
                        _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_BriskImageDynaLib2_i(),this._ResidentChoiceActiveSkin_HGroup3_c()];
                        if(_loc3_)
                        {
                           addr0084:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr006e);
               }
               addr009c:
               return _loc1_;
            }
            §§goto(addr0084);
         }
         §§goto(addr0051);
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "layer_needs_icon";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "needIcon";
                  if(!_loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr008c);
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
                  addr008c:
                  this.needIcon = _loc1_;
                  if(!_loc3_)
                  {
                     addr0096:
                     BindingManager.executeBindings(this,"needIcon",this.needIcon);
                  }
                  return _loc1_;
               }
               §§goto(addr007b);
            }
         }
         §§goto(addr005c);
      }
      
      private function _ResidentChoiceActiveSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.height = 40;
            if(_loc2_)
            {
               _loc1_.paddingTop = 2;
               if(_loc2_)
               {
                  addr004a:
                  _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_DynamicImageButton1_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0072);
            }
            §§goto(addr004a);
         }
         addr0072:
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "needFeatureButton";
               if(!(_loc3_ && _loc3_))
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr007c);
               }
               addr006b:
               _loc1_.document = this;
               if(_loc2_ || _loc3_)
               {
                  addr007c:
                  this.needFeatureButton = _loc1_;
                  if(!_loc3_)
                  {
                     addr0086:
                     BindingManager.executeBindings(this,"needFeatureButton",this.needFeatureButton);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _ResidentChoiceActiveSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00ae);
            }
         }
         addr0063:
         _loc1_.horizontalAlign = "right";
         if(_loc2_)
         {
            _loc1_.gap = 2;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel3_c(),this._ResidentChoiceActiveSkin_BriskImageDynaLib3_i()];
               if(_loc2_)
               {
                  addr009a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr00ae:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00ae);
            }
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel3_c() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "residentNumbers";
            if(_loc3_ || _loc2_)
            {
               _loc1_.text = "+";
               if(_loc3_ || _loc3_)
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
            }
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.id = "currencyIcon";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0069:
                        this.currencyIcon = _loc1_;
                        if(!_loc3_)
                        {
                           addr0073:
                           BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr0069);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.height = 36;
            if(_loc2_)
            {
               _loc1_.percentWidth = 95;
               if(_loc2_)
               {
                  addr004b:
                  _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_HGroup6_c(),this._ResidentChoiceActiveSkin_HGroup8_i()];
                  if(!_loc3_)
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0061);
         }
         §§goto(addr004b);
      }
      
      private function _ResidentChoiceActiveSkin_HGroup6_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  addr0058:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_BriskImageDynaLib4_i(),this._ResidentChoiceActiveSkin_HGroup7_c()];
                        if(_loc2_ || _loc2_)
                        {
                           addr009e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00b2:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00b2);
                     }
                     addr00b6:
                     return _loc1_;
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr009e);
            }
            §§goto(addr00b2);
         }
         §§goto(addr0058);
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "icon_buildinglevel";
               if(_loc2_)
               {
                  _loc1_.id = "levelIcon";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0088:
                              this.levelIcon = _loc1_;
                              if(_loc2_)
                              {
                                 addr0092:
                                 BindingManager.executeBindings(this,"levelIcon",this.levelIcon);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0092);
            }
         }
         §§goto(addr0088);
      }
      
      private function _ResidentChoiceActiveSkin_HGroup7_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 40;
            if(!_loc2_)
            {
               _loc1_.paddingTop = 2;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005b:
                  _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_DynamicImageButton2_i()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0077);
               }
               addr007b:
               return _loc1_;
            }
            §§goto(addr0077);
         }
         §§goto(addr005b);
      }
      
      private function _ResidentChoiceActiveSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 25;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0046:
                  _loc1_.visible = false;
                  if(_loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr006d);
               }
               addr005b:
               _loc1_.enabled = false;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr006d:
                  _loc1_.id = "levelFeatureButton";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0084:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr00a1);
                           }
                           §§goto(addr00b3);
                        }
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0084);
               }
               addr00a1:
               this.levelFeatureButton = _loc1_;
               if(_loc3_ || _loc3_)
               {
                  addr00b3:
                  BindingManager.executeBindings(this,"levelFeatureButton",this.levelFeatureButton);
               }
               return _loc1_;
            }
            §§goto(addr006d);
         }
         §§goto(addr0046);
      }
      
      private function _ResidentChoiceActiveSkin_HGroup8_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "right";
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel4_i()];
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr008a);
                  }
               }
               addr007f:
               _loc1_.id = "levelGroup";
               if(!_loc2_)
               {
                  addr008a:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr009e:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr00ba);
                        }
                        §§goto(addr00cc);
                     }
                  }
                  addr00ba:
                  this.levelGroup = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr00cc:
                     BindingManager.executeBindings(this,"levelGroup",this.levelGroup);
                  }
                  §§goto(addr00d9);
               }
               addr00d9:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr009e);
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "residentNumbers";
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0047);
            }
            §§goto(addr0052);
         }
         addr0047:
         _loc1_.id = "levelAmount";
         if(!_loc3_)
         {
            addr0052:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  §§goto(addr005e);
               }
            }
            §§goto(addr007b);
         }
         addr005e:
         _loc1_.document = this;
         if(!(_loc3_ && _loc3_))
         {
            addr007b:
            this.levelAmount = _loc1_;
            if(_loc2_ || _loc3_)
            {
               BindingManager.executeBindings(this,"levelAmount",this.levelAmount);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               addr004d:
               _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_MultistateButton1_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004d);
      }
      
      private function _ResidentChoiceActiveSkin_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.width = 205;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.enabled = true;
               if(_loc2_)
               {
                  _loc1_.id = "actionButton";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr007b);
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0096);
            }
            addr007b:
            _loc1_.document = this;
            if(!(_loc3_ && _loc2_))
            {
               addr008c:
               this.actionButton = _loc1_;
               if(!_loc3_)
               {
                  addr0096:
                  BindingManager.executeBindings(this,"actionButton",this.actionButton);
               }
            }
            §§goto(addr00a3);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc1_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§pop()[0] = new Binding(this,function():String
                     {
                        var _loc1_:* = getStyle("infoTooltip");
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"levelFeatureButton.toolTip");
                     addr005c:
                     addr005a:
                     return result;
                  }
               }
               §§goto(addr005c);
            }
            §§goto(addr005a);
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : MultistateButton
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1022398728actionButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr004b:
                  this._1022398728actionButton = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr004b);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1332194002background = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
         }
         addr0080:
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1004941354currencyIcon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0069);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._177936123infoText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
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
      public function get levelAmount() : LocaLabel
      {
         return this._1259807996levelAmount;
      }
      
      public function set levelAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1259807996levelAmount;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003e:
                  this._1259807996levelAmount = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelFeatureButton() : DynamicImageButton
      {
         return this._795895972levelFeatureButton;
      }
      
      public function set levelFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._795895972levelFeatureButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._795895972levelFeatureButton = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelFeatureButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelGroup() : HGroup
      {
         return this._184876379levelGroup;
      }
      
      public function set levelGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._184876379levelGroup;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._184876379levelGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelIcon() : BriskImageDynaLib
      {
         return this._1656559075levelIcon;
      }
      
      public function set levelIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1656559075levelIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1656559075levelIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr004c:
                  this._239061202needFeatureButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0081);
               }
            }
            addr0090:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get needIcon() : BriskImageDynaLib
      {
         return this._865336879needIcon;
      }
      
      public function set needIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._865336879needIcon;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._865336879needIcon = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0056);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._311416662residentType = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0071);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentType",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ResidentChoiceDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ResidentChoiceDetailComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  addr003f:
                  if(_loc3_ || Boolean(this))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
            addr007d:
            return;
         }
         §§goto(addr003f);
      }
   }
}

