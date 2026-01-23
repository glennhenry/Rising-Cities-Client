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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class InfoLayerShopComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _InfoLayerShopComponent_LocaLabel1:LocaLabel;
      
      public var _InfoLayerShopComponent_LocaLabel3:LocaLabel;
      
      private var _1223098708shopMaxStockLabel:LocaLabel;
      
      private var _1523473236shopRadiusLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InfoLayerShopComponent()
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
         if(!_loc4_)
         {
            §§push(null);
            if(!(_loc4_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc1_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr0084:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(!_loc4_)
                                    {
                                       addr0099:
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          addr00ab:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._InfoLayerShopComponent_bindingsSetup();
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      addr00e4:
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr0114:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr0123:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerShopComponentWatcherSetupUtil");
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr015a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr0179:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return InfoLayerShopComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr019c:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr01f9:
                                                                                       this.percentWidth = 100;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0204:
                                                                                          this.mxmlContent = [this._InfoLayerShopComponent_VGroup1_c()];
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             addr021e:
                                                                                             i = 0;
                                                                                             addr021c:
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
                                                                                                   if(_loc4_)
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
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc4_ && _loc3_))
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
                                                                                       while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, _loc3_ || Boolean(this));
                                                                                       
                                                                                       return;
                                                                                       addr0283:
                                                                                    }
                                                                                    §§goto(addr0204);
                                                                                 }
                                                                                 §§goto(addr01f9);
                                                                              }
                                                                              §§goto(addr0204);
                                                                           }
                                                                           §§goto(addr01f9);
                                                                        }
                                                                        §§goto(addr021e);
                                                                     }
                                                                     §§goto(addr0283);
                                                                  }
                                                                  §§goto(addr021e);
                                                               }
                                                               §§goto(addr021c);
                                                            }
                                                            §§goto(addr0179);
                                                         }
                                                         §§goto(addr0204);
                                                      }
                                                      §§goto(addr021e);
                                                   }
                                                   §§goto(addr019c);
                                                }
                                                §§goto(addr0123);
                                             }
                                             §§goto(addr0204);
                                          }
                                          §§goto(addr021e);
                                       }
                                       §§goto(addr0179);
                                    }
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr0099);
                              }
                              §§goto(addr0204);
                           }
                           §§goto(addr0084);
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr0114);
                  }
                  §§goto(addr015a);
               }
               §§goto(addr0179);
            }
            §§goto(addr0048);
         }
         §§goto(addr0123);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && InfoLayerShopComponent))
         {
            InfoLayerShopComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0058);
         }
         addr003c:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               return;
            }
         }
         else
         {
            addr0058:
            this.__moduleFactoryInitialized = true;
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
      
      public function set data(param1:InfoLayerConfigPlayfieldItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
            if(_loc2_ || Boolean(param1))
            {
               addr0028:
               this._dataDirty = true;
            }
            return;
         }
         §§goto(addr0028);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               if(this._dataDirty)
               {
                  if(_loc3_ || _loc1_)
                  {
                     this._dataDirty = false;
                     if(!_loc2_)
                     {
                        addr0049:
                        §§push(this);
                        §§push(this);
                        §§push(this._data.shopRadius == null);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop().includeInLayout = §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           if(this._data.shopRadius)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 this.shopRadiusLabel.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.shopradius.dimensiondivider",[this._data.shopRadius.width,this._data.shopRadius.height]);
                                 addr009b:
                                 if(_loc3_)
                                 {
                                    addr00d4:
                                    this.shopMaxStockLabel.text = this._data.shopMaxStock.toString();
                                 }
                              }
                           }
                           §§goto(addr00e6);
                        }
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr0049);
               }
               §§goto(addr00e6);
            }
            §§goto(addr009b);
         }
         addr00e6:
      }
      
      private function _InfoLayerShopComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._InfoLayerShopComponent_HGroup1_c(),this._InfoLayerShopComponent_HGroup2_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008a);
                  }
               }
            }
            §§goto(addr0086);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._InfoLayerShopComponent_LocaLabel1_i(),this._InfoLayerShopComponent_LocaLabel2_i(),this._InfoLayerShopComponent_Group2_c()];
                  §§goto(addr0050);
               }
               §§goto(addr007f);
            }
            addr0050:
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr007f:
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
         §§goto(addr007f);
      }
      
      private function _InfoLayerShopComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc2_)
            {
               _loc1_.styleName = "infoLabelLeft";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.id = "_InfoLayerShopComponent_LocaLabel1";
                     if(_loc3_)
                     {
                        addr005e:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0085:
                                 this._InfoLayerShopComponent_LocaLabel1 = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr008f:
                                    BindingManager.executeBindings(this,"_InfoLayerShopComponent_LocaLabel1",this._InfoLayerShopComponent_LocaLabel1);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr005e);
               }
            }
         }
         §§goto(addr0085);
      }
      
      private function _InfoLayerShopComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.styleName = "infoLabel";
               if(_loc2_)
               {
                  _loc1_.id = "shopMaxStockLabel";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0085:
                              this.shopMaxStockLabel = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"shopMaxStockLabel",this.shopMaxStockLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0085);
            }
            §§goto(addr0097);
         }
         §§goto(addr0085);
      }
      
      private function _InfoLayerShopComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 28;
            if(_loc2_ || _loc3_)
            {
               addr0045:
               _loc1_.height = 36;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._InfoLayerShopComponent_BriskImageDynaLib1_c()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0081);
               }
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _InfoLayerShopComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  addr0055:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "shopstock";
                     if(!_loc3_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr006b);
            }
         }
         §§goto(addr0055);
      }
      
      private function _InfoLayerShopComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               §§goto(addr0030);
            }
            §§goto(addr007f);
         }
         addr0030:
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._InfoLayerShopComponent_LocaLabel3_i(),this._InfoLayerShopComponent_LocaLabel4_i(),this._InfoLayerShopComponent_Group3_c()];
            if(_loc3_ || _loc3_)
            {
               addr007f:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0093:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr0093);
         }
         addr0097:
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc2_)
            {
               _loc1_.styleName = "infoLabelLeft";
               if(_loc3_ || _loc3_)
               {
                  addr0055:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr005f:
                     _loc1_.id = "_InfoLayerShopComponent_LocaLabel3";
                     if(_loc3_ || _loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009b:
                                 this._InfoLayerShopComponent_LocaLabel3 = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a6:
                                    BindingManager.executeBindings(this,"_InfoLayerShopComponent_LocaLabel3",this._InfoLayerShopComponent_LocaLabel3);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr005f);
            }
            §§goto(addr0055);
         }
         §§goto(addr0072);
      }
      
      private function _InfoLayerShopComponent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_ || _loc2_)
            {
               _loc1_.styleName = "infoLabel";
               if(!_loc3_)
               {
                  _loc1_.id = "shopRadiusLabel";
                  if(_loc2_ || _loc3_)
                  {
                     addr005a:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0074);
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr005a);
            }
            §§goto(addr008f);
         }
         addr0074:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr007d:
            this.shopRadiusLabel = _loc1_;
            if(!(_loc3_ && _loc3_))
            {
               addr008f:
               BindingManager.executeBindings(this,"shopRadiusLabel",this.shopRadiusLabel);
            }
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(_loc3_)
            {
               _loc1_.height = 36;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0053:
                  _loc1_.mxmlContent = [this._InfoLayerShopComponent_BriskImageDynaLib2_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr007b);
            }
            §§goto(addr0053);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  §§goto(addr0057);
               }
               §§goto(addr007a);
            }
            addr0057:
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "shopradius";
               if(!_loc3_)
               {
                  addr007a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr008e:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr008e);
            }
            §§goto(addr0092);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc1_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.shopmaxstock.label");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"_InfoLayerShopComponent_LocaLabel1.text");
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr008b);
            }
            §§goto(addr00a5);
         }
         addr008b:
         §§push(§§pop().§§slot[1]);
         if(!_loc2_)
         {
            addr0094:
            §§pop()[1] = new Binding(this,function():String
            {
               var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.shopradius.label");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"_InfoLayerShopComponent_LocaLabel3.text");
            addr00a7:
            addr00a5:
            §§push(result);
            addr0092:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get shopMaxStockLabel() : LocaLabel
      {
         return this._1223098708shopMaxStockLabel;
      }
      
      public function set shopMaxStockLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1223098708shopMaxStockLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1223098708shopMaxStockLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopMaxStockLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopRadiusLabel() : LocaLabel
      {
         return this._1523473236shopRadiusLabel;
      }
      
      public function set shopRadiusLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1523473236shopRadiusLabel;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1523473236shopRadiusLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopRadiusLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
         }
         addr007b:
      }
   }
}

