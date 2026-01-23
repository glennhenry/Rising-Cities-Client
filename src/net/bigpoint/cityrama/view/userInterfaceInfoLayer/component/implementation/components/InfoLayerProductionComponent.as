package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.layouts.TileLayout;
   
   use namespace mx_internal;
   
   public class InfoLayerProductionComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _InfoLayerProductionComponent_LocaLabel1:LocaLabel;
      
      private var _545452088productionItemsGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InfoLayerProductionComponent()
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
         if(!(_loc3_ && _loc2_))
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0047:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc1_))
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
                                 addr007b:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    super();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr00b9:
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§pop().§§slot[1] = this._InfoLayerProductionComponent_bindingsSetup();
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr00df:
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   addr00e6:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      addr00f1:
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr00f9:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0135:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerProductionComponentWatcherSetupUtil");
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0158:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr0177:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return InfoLayerProductionComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0193:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01b9:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr01e7:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          addr01fa:
                                                                                          this.mxmlContent = [this._InfoLayerProductionComponent_VGroup1_c()];
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr020c:
                                                                                             i = 0;
                                                                                             addr020a:
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
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(!(_loc4_ || _loc2_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(uint(§§pop() + 1));
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         var _temp_22:* = §§pop();
                                                                                                         §§pop().§§slot[4] = _temp_22;
                                                                                                         if(_loc4_ || _loc3_)
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
                                                                                       addr027b:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr020a);
                                                                              }
                                                                              §§goto(addr01e7);
                                                                           }
                                                                           §§goto(addr027b);
                                                                        }
                                                                        §§goto(addr020c);
                                                                     }
                                                                     §§goto(addr0193);
                                                                  }
                                                                  §§goto(addr020c);
                                                               }
                                                               §§goto(addr01fa);
                                                            }
                                                            §§goto(addr0177);
                                                         }
                                                         §§goto(addr01e7);
                                                      }
                                                      §§goto(addr0135);
                                                   }
                                                   §§goto(addr020a);
                                                }
                                                §§goto(addr0158);
                                             }
                                             §§goto(addr020a);
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr027b);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr020a);
                              }
                              §§goto(addr01b9);
                           }
                           §§goto(addr007b);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00f1);
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr027b);
            }
            §§goto(addr0047);
         }
         §§goto(addr00f9);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            InfoLayerProductionComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0050);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0050:
            this.__moduleFactoryInitialized = true;
         }
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
      
      public function set data(param1:InfoLayerConfigPlayfieldItemVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._data = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               this._dataDirty = true;
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ConfigGoodDTO = null;
         var _loc2_:BriskImageDynaLib = null;
         if(!_loc6_)
         {
            super.commitProperties();
            if(_loc5_)
            {
               if(this._dataDirty)
               {
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     addr0045:
                     this._dataDirty = false;
                     if(!_loc6_)
                     {
                        this.visible = this.includeInLayout = this._data.goodsProduced.length > 0;
                        addr0050:
                     }
                     for each(_loc1_ in this._data.goodsProduced)
                     {
                        _loc2_ = new BriskImageDynaLib();
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           §§push(§§findproperty(BriskDynaVo));
                           §§push(BriskDynaVo.LIB_SMALL_GOOD_ICONS);
                           §§push("small_");
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(§§pop() + _loc1_.gfxId);
                           }
                           §§pop().briskDynaVo = new §§pop().BriskDynaVo(§§pop(),§§pop());
                           if(!_loc6_)
                           {
                              this.productionItemsGroup.addElement(_loc2_);
                           }
                        }
                     }
                     §§goto(addr00e4);
                  }
                  §§goto(addr0050);
               }
               addr00e4:
               return;
            }
            §§goto(addr0050);
         }
         §§goto(addr0045);
      }
      
      private function _InfoLayerProductionComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._InfoLayerProductionComponent_LocaLabel1_i(),this._InfoLayerProductionComponent_Group2_i()];
                  if(_loc3_)
                  {
                     addr0062:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr0076);
            }
            addr007a:
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _InfoLayerProductionComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc3_)
            {
               addr0033:
               _loc1_.styleName = "infoLabelLeft";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        _loc1_.id = "_InfoLayerProductionComponent_LocaLabel1";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0078:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0084:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00a2:
                                    this._InfoLayerProductionComponent_LocaLabel1 = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       BindingManager.executeBindings(this,"_InfoLayerProductionComponent_LocaLabel1",this._InfoLayerProductionComponent_LocaLabel1);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0084);
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr00a2);
            }
            §§goto(addr0084);
         }
         §§goto(addr0033);
      }
      
      private function _InfoLayerProductionComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 200;
            if(_loc3_ || _loc3_)
            {
               _loc1_.layout = this._InfoLayerProductionComponent_TileLayout1_c();
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "productionItemsGroup";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr0087);
                        }
                     }
                     §§goto(addr0098);
                  }
                  addr0087:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0098:
                     this.productionItemsGroup = _loc1_;
                     if(!_loc2_)
                     {
                        BindingManager.executeBindings(this,"productionItemsGroup",this.productionItemsGroup);
                     }
                  }
                  §§goto(addr00af);
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr0098);
      }
      
      private function _InfoLayerProductionComponent_TileLayout1_c() : TileLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TileLayout = new TileLayout();
         if(!_loc2_)
         {
            _loc1_.orientation = "rows";
            if(_loc3_)
            {
               _loc1_.horizontalGap = 2;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalGap = 2;
                  addr004e:
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr006d);
                  }
               }
               §§goto(addr0080);
            }
            §§goto(addr004e);
         }
         addr006d:
         _loc1_.paddingLeft = 20;
         if(!(_loc2_ && Boolean(this)))
         {
            addr0080:
            _loc1_.horizontalAlign = "center";
         }
         return _loc1_;
      }
      
      private function _InfoLayerProductionComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc1_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0065);
               }
               §§goto(addr0081);
            }
            §§goto(addr007f);
         }
         addr0065:
         §§push(§§pop().§§slot[1]);
         if(!_loc2_)
         {
            §§pop()[0] = new Binding(this,function():String
            {
               var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.products.label");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"_InfoLayerProductionComponent_LocaLabel1.text");
            addr0081:
            addr007f:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productionItemsGroup() : Group
      {
         return this._545452088productionItemsGroup;
      }
      
      public function set productionItemsGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._545452088productionItemsGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._545452088productionItemsGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionItemsGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006a);
      }
   }
}

