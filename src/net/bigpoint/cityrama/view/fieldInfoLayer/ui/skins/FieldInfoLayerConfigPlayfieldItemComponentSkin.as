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
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerEnergyMoodComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerProductionComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerResidentialComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerShopComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class FieldInfoLayerConfigPlayfieldItemComponentSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _28398297levelFlavourLabel:LocaLabel;
      
      private var _1605842169levelNumberLabel:LocaLabel;
      
      private var _845656926moodEnergyComponent:InfoLayerEnergyMoodComponent;
      
      private var _366670780productionComponent:InfoLayerProductionComponent;
      
      private var _607607385residentialComponent:InfoLayerResidentialComponent;
      
      private var _665626969shopComponent:InfoLayerShopComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerConfigPlayfieldItemComponentSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§push(null);
            if(_loc3_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0066:
                              §§pop().§§slot[5] = null;
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr0082:
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || Boolean(this))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                addr00bd:
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§pop().§§slot[1] = this._FieldInfoLayerConfigPlayfieldItemComponentSkin_bindingsSetup();
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§goto(addr00ff);
                                                         }
                                                         §§goto(addr0119);
                                                      }
                                                      §§goto(addr01b2);
                                                   }
                                                   §§goto(addr0177);
                                                }
                                                §§goto(addr01b2);
                                             }
                                             §§goto(addr0139);
                                          }
                                          §§goto(addr010a);
                                       }
                                       §§goto(addr00bd);
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr026f);
                              }
                              §§goto(addr0082);
                           }
                           addr00ff:
                           §§pop().§§slot[2] = [];
                           if(_loc3_)
                           {
                              addr010a:
                              §§push(§§newactivation());
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0119:
                                 §§pop().§§slot[3] = this;
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_watcherSetupUtil == null)
                                    {
                                       if(_loc3_)
                                       {
                                          addr0139:
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoLayerConfigPlayfieldItemComponentSkinWatcherSetupUtil");
                                             if(_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr0177:
                                                   §§pop().§§slot[5]["init"](null);
                                                   if(!_loc4_)
                                                   {
                                                      addr018e:
                                                      _watcherSetupUtil.setup(this,function(param1:String):*
                                                      {
                                                         return target[param1];
                                                      },function(param1:String):*
                                                      {
                                                         return FieldInfoLayerConfigPlayfieldItemComponentSkin[param1];
                                                      },bindings,watchers);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr01b2:
                                                         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr01d8);
                                                         }
                                                         §§goto(addr01fe);
                                                      }
                                                      §§goto(addr026f);
                                                   }
                                                   §§goto(addr0214);
                                                }
                                                §§goto(addr0271);
                                             }
                                             §§goto(addr01fe);
                                          }
                                          §§goto(addr0177);
                                       }
                                       §§goto(addr026f);
                                    }
                                    §§goto(addr018e);
                                 }
                                 §§goto(addr01b2);
                              }
                              §§goto(addr0271);
                           }
                           §§goto(addr01d8);
                        }
                        addr01d8:
                        mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                        if(_loc3_)
                        {
                           addr01fe:
                           this.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup2_c()];
                           if(_loc3_)
                           {
                              addr0214:
                              this.currentState = "normal";
                              if(!_loc4_)
                              {
                                 this.addEventListener("creationComplete",this.___FieldInfoLayerConfigPlayfieldItemComponentSkin_SparkSkin1_creationComplete);
                                 if(_loc3_ || _loc2_)
                                 {
                                    states = [new State({
                                       "name":"normal",
                                       "overrides":[]
                                    }),new State({
                                       "name":"disabled",
                                       "overrides":[]
                                    })];
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr0271:
                                       i = 0;
                                       addr026f:
                                    }
                                 }
                              }
                           }
                        }
                        var _temp_17:*;
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
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().§§slot[4]);
                                       if(!_loc4_)
                                       {
                                          §§push(uint(§§pop() + 1));
                                          if(_loc3_)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc4_)
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
                        while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc3_ || _loc3_);
                        
                        return;
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr0177);
               }
               §§goto(addr026f);
            }
            §§goto(addr0066);
         }
         §§goto(addr0271);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            FieldInfoLayerConfigPlayfieldItemComponentSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0058);
                  }
               }
               else
               {
                  addr0066:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0066);
         }
         addr0058:
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.levelFlavourLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansionBuilding.level");
         }
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0079:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0085);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  §§goto(addr004d);
               }
            }
            §§goto(addr006a);
         }
         addr004d:
         if(!(_loc3_ && _loc3_))
         {
            addr006a:
            _loc1_.height = 12;
            if(!_loc3_)
            {
               §§goto(addr0074);
            }
            §§goto(addr0080);
         }
         addr0074:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0080:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  addr0047:
                  if(!_loc3_)
                  {
                     §§goto(addr005d);
                  }
               }
               §§goto(addr007b);
            }
            addr005d:
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr007b:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  §§goto(addr0050);
               }
               §§goto(addr0086);
            }
            §§goto(addr007a);
         }
         addr0050:
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.height = 27;
            if(_loc2_)
            {
               addr007a:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008a);
            }
            §§goto(addr0086);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.top = 12;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 228;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.gap = 6;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc3_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!_loc2_)
                           {
                              addr0072:
                              _loc1_.paddingBottom = 27;
                              if(_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_Group1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_HGroup1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerResidentialComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerProductionComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerShopComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerEnergyMoodComponent1_i()];
                                 §§goto(addr007d);
                              }
                              §§goto(addr00d1);
                           }
                           addr007d:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00d1:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr0072);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr0072);
               }
               addr00e1:
               return _loc1_;
            }
            §§goto(addr00d1);
         }
         §§goto(addr007d);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "headerComponent";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr006b);
                     }
                  }
                  §§goto(addr007d);
               }
            }
            addr006b:
            this.headerComponent = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr007d:
               BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
            }
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.height = 1;
            if(_loc2_)
            {
               addr003b:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 85;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  §§goto(addr0058);
               }
               §§goto(addr006e);
            }
            §§goto(addr007a);
         }
         addr0058:
         _loc1_.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel2_i()];
         if(_loc2_)
         {
            addr006e:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr007a:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "infoLabel";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.maxWidth = 180;
                  if(!_loc3_)
                  {
                     _loc1_.maxDisplayedLines = 2;
                     if(!_loc3_)
                     {
                        _loc1_.setStyle("textAlign","left");
                        if(!_loc3_)
                        {
                           §§goto(addr006b);
                        }
                        §§goto(addr008d);
                     }
                     addr006b:
                     _loc1_.id = "levelFlavourLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008d:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00a0);
                           }
                        }
                     }
                     addr0096:
                     this.levelFlavourLabel = _loc1_;
                     if(!_loc3_)
                     {
                        addr00a0:
                        BindingManager.executeBindings(this,"levelFlavourLabel",this.levelFlavourLabel);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr00a0);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr00a0);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "infoLabel";
            if(!_loc3_)
            {
               _loc1_.width = 50;
               if(_loc2_)
               {
                  _loc1_.maxWidth = 50;
                  if(_loc2_)
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(_loc2_)
                     {
                        _loc1_.setStyle("textAlign","right");
                        if(!_loc3_)
                        {
                           addr006c:
                           _loc1_.id = "levelNumberLabel";
                           if(_loc2_)
                           {
                              addr0077:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr0091:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr009a:
                                       this.levelNumberLabel = _loc1_;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00ac:
                                          BindingManager.executeBindings(this,"levelNumberLabel",this.levelNumberLabel);
                                       }
                                       §§goto(addr00b9);
                                    }
                                    §§goto(addr00ac);
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0077);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr009a);
               }
               addr00b9:
               return _loc1_;
            }
         }
         §§goto(addr0091);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               addr0028:
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc2_)
               {
                  _loc1_.id = "_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4";
                  if(_loc2_)
                  {
                     addr004b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr007d:
                              this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4 = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4",this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4);
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr004b);
            }
            §§goto(addr007d);
         }
         §§goto(addr0028);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerResidentialComponent1_i() : InfoLayerResidentialComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerResidentialComponent = new InfoLayerResidentialComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 85;
            if(_loc3_)
            {
               addr0042:
               _loc1_.id = "residentialComponent";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0063:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0078:
                           this.residentialComponent = _loc1_;
                           if(!_loc2_)
                           {
                              addr0082:
                              BindingManager.executeBindings(this,"residentialComponent",this.residentialComponent);
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr0082);
                     }
                     addr008f:
                     return _loc1_;
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0082);
            }
            §§goto(addr0063);
         }
         §§goto(addr0042);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerProductionComponent1_i() : InfoLayerProductionComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerProductionComponent = new InfoLayerProductionComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 85;
            if(!_loc3_)
            {
               _loc1_.id = "productionComponent";
               if(_loc2_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007a:
                           this.productionComponent = _loc1_;
                           if(!_loc3_)
                           {
                              addr0084:
                              BindingManager.executeBindings(this,"productionComponent",this.productionComponent);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0091);
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr004a);
         }
         addr0091:
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerShopComponent1_i() : InfoLayerShopComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerShopComponent = new InfoLayerShopComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 85;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "shopComponent";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0076:
                           this.shopComponent = _loc1_;
                           if(_loc3_ || _loc2_)
                           {
                              addr0088:
                              BindingManager.executeBindings(this,"shopComponent",this.shopComponent);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0088);
                     }
                     addr0095:
                     return _loc1_;
                  }
               }
               §§goto(addr0076);
            }
         }
         §§goto(addr0088);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc2_)
               {
                  addr004c:
                  _loc1_.id = "_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0070:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0079:
                              this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5 = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 BindingManager.executeBindings(this,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5",this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5);
                              }
                           }
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0079);
                  }
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr004c);
         }
         §§goto(addr0070);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerEnergyMoodComponent1_i() : InfoLayerEnergyMoodComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerEnergyMoodComponent = new InfoLayerEnergyMoodComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.id = "moodEnergyComponent";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0069:
                        this.moodEnergyComponent = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr007b:
                           BindingManager.executeBindings(this,"moodEnergyComponent",this.moodEnergyComponent);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007b);
                  }
                  addr0088:
                  return _loc1_;
               }
            }
         }
         §§goto(addr0069);
      }
      
      public function ___FieldInfoLayerConfigPlayfieldItemComponentSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Boolean
                        {
                           return Boolean(residentialComponent.visible) || Boolean(productionComponent.visible) || Boolean(shopComponent.visible);
                        },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4.visible");
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Boolean
                                    {
                                       return Boolean(residentialComponent.includeInLayout) || Boolean(productionComponent.includeInLayout) || Boolean(shopComponent.includeInLayout);
                                    },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4.includeInLayout");
                                    if(!_loc2_)
                                    {
                                       addr00ad:
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr00da:
                                                §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                {
                                                   return moodEnergyComponent.visible;
                                                },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5.visible");
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr0131);
                                                   }
                                                   §§goto(addr012f);
                                                }
                                                §§goto(addr012d);
                                             }
                                             §§goto(addr011c);
                                          }
                                          addr0131:
                                          §§goto(addr010b);
                                       }
                                       §§goto(addr012f);
                                    }
                                    §§goto(addr012d);
                                 }
                                 §§goto(addr00da);
                              }
                              §§goto(addr011a);
                           }
                           §§goto(addr012f);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00da);
                  }
                  §§goto(addr011a);
               }
               §§goto(addr010b);
            }
            §§goto(addr00ad);
         }
         addr010b:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || Boolean(this))
         {
            addr011c:
            §§pop()[3] = new Binding(this,function():Boolean
            {
               return moodEnergyComponent.includeInLayout;
            },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5.includeInLayout");
            addr012f:
            addr012d:
            §§push(result);
            addr011a:
         }
         return §§pop();
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1449269008headerComponent = param1;
                  addr0040:
                  if(_loc4_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelFlavourLabel() : LocaLabel
      {
         return this._28398297levelFlavourLabel;
      }
      
      public function set levelFlavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._28398297levelFlavourLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._28398297levelFlavourLabel = param1;
                  if(!_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelFlavourLabel",_loc2_,param1));
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
      public function get levelNumberLabel() : LocaLabel
      {
         return this._1605842169levelNumberLabel;
      }
      
      public function set levelNumberLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1605842169levelNumberLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1605842169levelNumberLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelNumberLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get moodEnergyComponent() : InfoLayerEnergyMoodComponent
      {
         return this._845656926moodEnergyComponent;
      }
      
      public function set moodEnergyComponent(param1:InfoLayerEnergyMoodComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._845656926moodEnergyComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0048:
                  this._845656926moodEnergyComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodEnergyComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007f);
               }
            }
            addr008e:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get productionComponent() : InfoLayerProductionComponent
      {
         return this._366670780productionComponent;
      }
      
      public function set productionComponent(param1:InfoLayerProductionComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._366670780productionComponent;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._366670780productionComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentialComponent() : InfoLayerResidentialComponent
      {
         return this._607607385residentialComponent;
      }
      
      public function set residentialComponent(param1:InfoLayerResidentialComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._607607385residentialComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._607607385residentialComponent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentialComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopComponent() : InfoLayerShopComponent
      {
         return this._665626969shopComponent;
      }
      
      public function set shopComponent(param1:InfoLayerShopComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._665626969shopComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._665626969shopComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopComponent",_loc2_,param1));
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
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0076);
      }
   }
}

