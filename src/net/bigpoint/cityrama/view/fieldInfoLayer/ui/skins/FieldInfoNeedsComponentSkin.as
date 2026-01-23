package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
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
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.SeparatorList;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.NeedsItemRenderer;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class FieldInfoNeedsComponentSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var _1093736667needsList:SeparatorList;
      
      private var _1809672396sellsWithRentLabel:LocaLabel;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoNeedsComponentSkin()
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
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc4_ || Boolean(this))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              addr0067:
                              §§pop().§§slot[5] = null;
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || _loc2_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc2_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || Boolean(this))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             super();
                                             if(_loc4_ || _loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._FieldInfoNeedsComponentSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr00fa:
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc3_)
                                                            {
                                                               addr010c:
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0134:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoNeedsComponentSkinWatcherSetupUtil");
                                                                              addr0143:
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0171:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0188:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return FieldInfoNeedsComponentSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01a4:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr01f8:
                                                                                                this.mxmlContent = [this._FieldInfoNeedsComponentSkin_VGroup1_c(),this._FieldInfoNeedsComponentSkin_VGroup2_c()];
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr0217:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      this.addEventListener("creationComplete",this.___FieldInfoNeedsComponentSkin_SparkSkin1_creationComplete);
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         addr0245:
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[]
                                                                                                         })];
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr0274:
                                                                                                            i = 0;
                                                                                                            addr0272:
                                                                                                         }
                                                                                                      }
                                                                                                      var _temp_18:*;
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
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_)
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
                                                                                                      while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, !_loc3_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02ca:
                                                                                                   }
                                                                                                   §§goto(addr0272);
                                                                                                }
                                                                                                §§goto(addr02ca);
                                                                                             }
                                                                                             §§goto(addr0245);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr01f8);
                                                                                    }
                                                                                    §§goto(addr0272);
                                                                                 }
                                                                                 §§goto(addr0274);
                                                                              }
                                                                              §§goto(addr0217);
                                                                           }
                                                                           §§goto(addr0171);
                                                                        }
                                                                     }
                                                                     §§goto(addr0188);
                                                                  }
                                                                  §§goto(addr02ca);
                                                               }
                                                               §§goto(addr0274);
                                                            }
                                                            §§goto(addr01a4);
                                                         }
                                                         §§goto(addr0143);
                                                      }
                                                      §§goto(addr0217);
                                                   }
                                                   §§goto(addr0143);
                                                }
                                                §§goto(addr02ca);
                                             }
                                             §§goto(addr010c);
                                          }
                                          §§goto(addr00fa);
                                       }
                                       §§goto(addr0134);
                                    }
                                    §§goto(addr0245);
                                 }
                                 §§goto(addr01f8);
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr0274);
                        }
                        §§goto(addr010c);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr0274);
               }
               §§goto(addr0245);
            }
            §§goto(addr0067);
         }
         §§goto(addr0171);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            FieldInfoNeedsComponentSkin._watcherSetupUtil = param1;
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0049);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0049:
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
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.sellsWithRentLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.commercial.sellsWithRent");
         }
      }
      
      private function _FieldInfoNeedsComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoNeedsComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoNeedsComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoNeedsComponentSkin_BriskImageDynaLib3_c()];
                  addr003d:
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0082:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0082);
            }
         }
         §§goto(addr003d);
      }
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.height = 12;
                     if(!_loc2_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007f:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr007f);
      }
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc2_)
            {
               addr004c:
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!(_loc2_ && _loc3_))
               {
                  addr005f:
                  _loc1_.width = 227;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || _loc3_)
                     {
                        addr0086:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr005f);
         }
         §§goto(addr004c);
      }
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(!(_loc2_ && _loc3_))
               {
                  addr005c:
                  _loc1_.width = 227;
                  if(_loc3_)
                  {
                     addr0067:
                     _loc1_.height = 27;
                     if(_loc3_)
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0071);
               }
               addr0081:
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr0067);
      }
      
      private function _FieldInfoNeedsComponentSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 12;
            if(!_loc2_)
            {
               _loc1_.width = 226;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.gap = 8;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc3_ || _loc3_)
                        {
                           addr007a:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              _loc1_.bottom = 27;
                              if(_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoNeedsComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoNeedsComponentSkin_Group1_c(),this._FieldInfoNeedsComponentSkin_LocaLabel1_i(),this._FieldInfoNeedsComponentSkin_SeparatorList1_i(),this._FieldInfoNeedsComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoNeedsComponentSkin_ModifierValueComponent1_i()];
                                 §§goto(addr008f);
                              }
                              §§goto(addr00dd);
                           }
                           addr008f:
                           if(_loc3_)
                           {
                              addr00c9:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00dd:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00e1);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr00dd);
            }
            §§goto(addr00c9);
         }
         addr00e1:
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(!_loc3_)
         {
            _loc1_.id = "headerComponent";
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr007e);
                  }
               }
            }
            addr006c:
            this.headerComponent = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr007e:
               BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
            }
            §§goto(addr008b);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 2;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0051:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0051);
      }
      
      private function _FieldInfoNeedsComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "sellsWithRentLabel";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.id = "sellsWithRentLabel";
                  addr003d:
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0085:
                              this.sellsWithRentLabel = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 BindingManager.executeBindings(this,"sellsWithRentLabel",this.sellsWithRentLabel);
                              }
                           }
                           §§goto(addr00a4);
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr003d);
         }
         §§goto(addr0085);
      }
      
      private function _FieldInfoNeedsComponentSkin_SeparatorList1_i() : SeparatorList
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SeparatorList = new SeparatorList();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.maxHeight = 83;
               if(_loc3_)
               {
                  addr0039:
                  _loc1_.minHeight = 1;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.itemRenderer = this._FieldInfoNeedsComponentSkin_ClassFactory1_c();
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.setStyle("skinClass",NeedsListSkin);
                        if(_loc3_ || _loc2_)
                        {
                           addr0087:
                           _loc1_.id = "needsList";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00b2:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00c3:
                                       this.needsList = _loc1_;
                                       if(_loc3_)
                                       {
                                          BindingManager.executeBindings(this,"needsList",this.needsList);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr00b2);
            }
            §§goto(addr0039);
         }
         §§goto(addr00c3);
      }
      
      private function _FieldInfoNeedsComponentSkin_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = NeedsItemRenderer;
         }
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc3_ && _loc3_))
               {
                  addr0055:
                  _loc1_.id = "splitter";
                  if(_loc2_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0091);
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0074);
               }
               addr0091:
               this.splitter = _loc1_;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"splitter",this.splitter);
               }
               return _loc1_;
            }
            §§goto(addr0055);
         }
         §§goto(addr0060);
      }
      
      private function _FieldInfoNeedsComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.id = "modifierValueComponent";
               if(!_loc2_)
               {
                  addr0043:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0077);
            }
            §§goto(addr0043);
         }
         addr0064:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr006d:
            this.modifierValueComponent = _loc1_;
            if(!_loc2_)
            {
               addr0077:
               BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
            }
         }
         return _loc1_;
      }
      
      public function ___FieldInfoNeedsComponentSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      private function _FieldInfoNeedsComponentSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc1_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0053);
               }
               §§goto(addr00ae);
            }
            §§goto(addr00ac);
         }
         addr0053:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc3_))
         {
            §§push(0);
            if(_loc2_)
            {
               §§pop()[§§pop()] = new Binding(this,function():Boolean
               {
                  return needsList.visible;
               },null,"sellsWithRentLabel.visible");
               if(_loc2_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§goto(addr00b0);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00ac);
            }
            §§goto(addr009b);
         }
         addr00b0:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            addr009b:
            §§pop()[1] = new Binding(this,function():Boolean
            {
               return needsList.includeInLayout;
            },null,"sellsWithRentLabel.includeInLayout");
            addr00ae:
            addr00ac:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : InfoLayerHeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:InfoLayerHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1449269008headerComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1449269008headerComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get modifierValueComponent() : ModifierValueComponent
      {
         return this._235160899modifierValueComponent;
      }
      
      public function set modifierValueComponent(param1:ModifierValueComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._235160899modifierValueComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._235160899modifierValueComponent = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006c);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get needsList() : SeparatorList
      {
         return this._1093736667needsList;
      }
      
      public function set needsList(param1:SeparatorList) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1093736667needsList;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1093736667needsList = param1;
                  addr004b:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get sellsWithRentLabel() : LocaLabel
      {
         return this._1809672396sellsWithRentLabel;
      }
      
      public function set sellsWithRentLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1809672396sellsWithRentLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1809672396sellsWithRentLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellsWithRentLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get splitter() : BriskImageDynaLib
      {
         return this._1926588729splitter;
      }
      
      public function set splitter(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926588729splitter;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1926588729splitter = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
   }
}

