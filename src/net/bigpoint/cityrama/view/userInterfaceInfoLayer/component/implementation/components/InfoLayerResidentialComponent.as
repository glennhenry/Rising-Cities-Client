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
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class InfoLayerResidentialComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _InfoLayerResidentialComponent_LocaLabel1:LocaLabel;
      
      private var _1132963699baseIncomeIcon:BriskImageDynaLib;
      
      private var _903034022baseincomeLabel:LocaLabel;
      
      private var _500208440timerComponent:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InfoLayerResidentialComponent()
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
            if(_loc4_ || Boolean(this))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || _loc2_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc1_)
                              {
                                 addr0094:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    super();
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          addr00d2:
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             addr00da:
                                             §§pop().§§slot[1] = this._InfoLayerResidentialComponent_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      addr0105:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr011f:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr012c:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr0147:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerResidentialComponentWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr015b:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           addr016b:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr0189:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return InfoLayerResidentialComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr01ad:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0202:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr020d:
                                                                                          this.mxmlContent = [this._InfoLayerResidentialComponent_VGroup1_c()];
                                                                                          if(_loc4_ || Boolean(this))
                                                                                          {
                                                                                             addr0228:
                                                                                             i = 0;
                                                                                             addr0226:
                                                                                          }
                                                                                          var _temp_20:*;
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
                                                                                                      if(_loc3_ && Boolean(this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc3_)
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
                                                                                          while(var _temp_20:* = §§pop(), §§pop().§§slot[4] = _temp_20, !(_loc3_ && _loc2_));
                                                                                          
                                                                                          return;
                                                                                          addr0294:
                                                                                       }
                                                                                       §§goto(addr0226);
                                                                                    }
                                                                                    §§goto(addr0294);
                                                                                 }
                                                                                 §§goto(addr0202);
                                                                              }
                                                                              §§goto(addr0226);
                                                                           }
                                                                           §§goto(addr0294);
                                                                        }
                                                                        §§goto(addr0228);
                                                                     }
                                                                     §§goto(addr01ad);
                                                                  }
                                                                  §§goto(addr016b);
                                                               }
                                                               §§goto(addr01ad);
                                                            }
                                                            §§goto(addr0189);
                                                         }
                                                         §§goto(addr020d);
                                                      }
                                                      §§goto(addr0228);
                                                   }
                                                   §§goto(addr020d);
                                                }
                                                §§goto(addr0228);
                                             }
                                             §§goto(addr01ad);
                                          }
                                          §§goto(addr0228);
                                       }
                                       §§goto(addr011f);
                                    }
                                    §§goto(addr01ad);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr01ad);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr015b);
                     }
                     §§goto(addr0105);
                  }
                  §§goto(addr0147);
               }
               §§goto(addr00d2);
            }
            §§goto(addr0050);
         }
         §§goto(addr00da);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && InfoLayerResidentialComponent))
         {
            InfoLayerResidentialComponent._watcherSetupUtil = param1;
         }
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
                  if(_loc2_)
                  {
                     §§goto(addr003d);
                  }
               }
               else
               {
                  addr004b:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr004b);
         }
         addr003d:
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
      
      public function set data(param1:InfoLayerConfigPlayfieldItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
            if(_loc2_)
            {
               addr0022:
               this._dataDirty = true;
            }
            return;
         }
         §§goto(addr0022);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:TimerBarComponentVo = null;
         if(_loc3_ || _loc2_)
         {
            super.commitProperties();
            if(_loc3_)
            {
               §§push(this._dataDirty);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_ || Boolean(this))
                  {
                     addr0046:
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              addr0060:
                              §§push(this._data);
                              if(!_loc4_)
                              {
                                 §§goto(addr006b);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr0075);
                        }
                     }
                  }
                  addr006b:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr0075:
                        this._dataDirty = false;
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0088:
                           §§push(this);
                           §§push(this);
                           §§push(this._data.baseharvestOutput == null);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(!§§pop());
                           }
                           var _loc2_:*;
                           §§pop().includeInLayout = _loc2_ = §§pop();
                           §§pop().visible = _loc2_;
                           if(_loc3_ || _loc2_)
                           {
                              addr00bc:
                              if(this._data.baseharvestOutput)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00d0:
                                    this.baseincomeLabel.text = Math.abs(this._data.baseharvestOutput.outputAmount).toString();
                                 }
                                 _loc2_ = this._data.baseharvestOutput.resourceConfig.type;
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                §§push(0);
                                                if(_loc4_ && _loc3_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr0210:
                                                §§push(2);
                                                if(_loc3_ || _loc3_)
                                                {
                                                }
                                             }
                                             §§goto(addr022f);
                                          }
                                          else
                                          {
                                             §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr01d9:
                                                §§push(_loc2_);
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(1);
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0210);
                                                      }
                                                      §§goto(addr022f);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr020c);
                                                   }
                                                }
                                                addr020c:
                                                §§goto(addr020b);
                                             }
                                             addr020b:
                                             if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc2_)
                                             {
                                                §§goto(addr0210);
                                             }
                                             else
                                             {
                                                §§push(3);
                                             }
                                             addr022f:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(this.baseIncomeIcon);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§push("pp_icon_small");
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§pop().dynaBmpSourceName = §§pop();
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      addr0143:
                                                      §§pop().dynaBmpSourceName = §§pop();
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   addr015e:
                                                   §§pop().dynaBmpSourceName = "ep_icon_small";
                                                   addr015b:
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   break;
                                                case 1:
                                                   §§push(this.baseIncomeIcon);
                                                   if(_loc3_)
                                                   {
                                                      §§push("layer_cc_icon_small");
                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                      {
                                                         §§goto(addr0143);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr015b);
                                                   }
                                                   §§goto(addr015e);
                                                case 2:
                                                   §§goto(addr015b);
                                                   §§push(this.baseIncomeIcon);
                                             }
                                             this.timerComponent.visible = this.timerComponent.includeInLayout = !isNaN(this._data.timerCycle);
                                             _loc1_ = new TimerBarComponentVo();
                                             if(!_loc4_)
                                             {
                                                _loc1_.cycleLength = this._data.timerCycle;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   _loc1_.waitingForStart = true;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      this.timerComponent.data = _loc1_;
                                                   }
                                                }
                                             }
                                             §§goto(addr02b6);
                                          }
                                       }
                                       §§goto(addr020c);
                                    }
                                    §§goto(addr01d9);
                                 }
                                 §§goto(addr0210);
                              }
                              §§goto(addr02b6);
                           }
                        }
                     }
                     §§goto(addr00d0);
                  }
                  addr02b6:
                  return;
               }
               §§goto(addr0046);
            }
            §§goto(addr0060);
         }
         §§goto(addr0088);
      }
      
      private function _InfoLayerResidentialComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._InfoLayerResidentialComponent_HGroup1_c(),this._InfoLayerResidentialComponent_TimerBarComponent1_i()];
                  if(_loc3_)
                  {
                     addr0074:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0088);
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _InfoLayerResidentialComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.paddingRight = 2;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0070:
                     _loc1_.mxmlContent = [this._InfoLayerResidentialComponent_LocaLabel1_i(),this._InfoLayerResidentialComponent_LocaLabel2_i(),this._InfoLayerResidentialComponent_Group2_c()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr0098);
               }
               addr009c:
               return _loc1_;
            }
         }
         §§goto(addr0070);
      }
      
      private function _InfoLayerResidentialComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc2_ || _loc3_)
            {
               _loc1_.styleName = "infoLabelLeft";
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr004f);
               }
               §§goto(addr006c);
            }
            §§goto(addr0059);
         }
         addr004f:
         _loc1_.percentWidth = 100;
         if(_loc2_)
         {
            addr0059:
            _loc1_.id = "_InfoLayerResidentialComponent_LocaLabel1";
            if(_loc2_ || Boolean(_loc1_))
            {
               addr006c:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0094);
            }
            §§goto(addr009e);
         }
         addr0094:
         this._InfoLayerResidentialComponent_LocaLabel1 = _loc1_;
         if(_loc2_)
         {
            addr009e:
            BindingManager.executeBindings(this,"_InfoLayerResidentialComponent_LocaLabel1",this._InfoLayerResidentialComponent_LocaLabel1);
         }
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               _loc1_.styleName = "infoLabel";
               if(!_loc3_)
               {
                  _loc1_.id = "baseincomeLabel";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0098);
                        }
                     }
                     addr0086:
                     this.baseincomeLabel = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"baseincomeLabel",this.baseincomeLabel);
                     }
                     §§goto(addr00a5);
                  }
               }
               §§goto(addr0098);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0098);
      }
      
      private function _InfoLayerResidentialComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 36;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._InfoLayerResidentialComponent_BriskImageDynaLib1_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007c);
               }
            }
         }
         addr0080:
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.id = "baseIncomeIcon";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr0092);
                              }
                           }
                           §§goto(addr009c);
                        }
                     }
                     addr0092:
                     this.baseIncomeIcon = _loc1_;
                     if(!_loc2_)
                     {
                        addr009c:
                        BindingManager.executeBindings(this,"baseIncomeIcon",this.baseIncomeIcon);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0081);
               }
               addr00a9:
               return _loc1_;
            }
         }
         §§goto(addr0092);
      }
      
      private function _InfoLayerResidentialComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc2_)
         {
            _loc1_.showBoostButton = false;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.activeTimer = false;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 140;
                  if(!_loc3_)
                  {
                     _loc1_.maxWidth = 160;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr007d);
                  }
                  addr0072:
                  _loc1_.id = "timerComponent";
                  if(_loc2_)
                  {
                     addr007d:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr00ae);
                           }
                        }
                        §§goto(addr00b8);
                     }
                     addr00ae:
                     this.timerComponent = _loc1_;
                     if(!_loc3_)
                     {
                        addr00b8:
                        BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
                     }
                     §§goto(addr00c5);
                  }
                  addr00c5:
                  return _loc1_;
               }
            }
            §§goto(addr00ae);
         }
         §§goto(addr00b8);
      }
      
      private function _InfoLayerResidentialComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr0074);
            }
            §§goto(addr0072);
         }
         addr0050:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc1_))
         {
            §§pop()[0] = new Binding(this,function():String
            {
               var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.baseincome.label");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"_InfoLayerResidentialComponent_LocaLabel1.text");
            addr0074:
            addr0072:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get baseIncomeIcon() : BriskImageDynaLib
      {
         return this._1132963699baseIncomeIcon;
      }
      
      public function set baseIncomeIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1132963699baseIncomeIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1132963699baseIncomeIcon = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseIncomeIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0069);
            }
            addr008f:
            return;
         }
         §§goto(addr0080);
      }
      
      [Bindable(event="propertyChange")]
      public function get baseincomeLabel() : LocaLabel
      {
         return this._903034022baseincomeLabel;
      }
      
      public function set baseincomeLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._903034022baseincomeLabel;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004b:
                  this._903034022baseincomeLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseincomeLabel",_loc2_,param1));
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
      public function get timerComponent() : TimerBarComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._500208440timerComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._500208440timerComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
   }
}

