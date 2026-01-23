package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerExpansionVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ExpansionComponent extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _ExpansionComponent_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _ExpansionComponent_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _ExpansionComponent_BriskImageDynaLib6:BriskImageDynaLib;
      
      private var _1585012474_ExpansionComponent_VGroup1:VGroup;
      
      private var _1585012472_ExpansionComponent_VGroup3:VGroup;
      
      private var _1398066261ccPriceLabel:LocaLabel;
      
      private var _1229032395ddPriceLabel:LocaLabel;
      
      private var _1094425547ddPriceLabelDiscounted:LocaLabel;
      
      private var _332136569lockedFlavour:LocaLabel;
      
      private var _1229408559orLabel:LocaLabel;
      
      private var _123184520saleGroup:VGroup;
      
      private var _119086355saleLabel:LocaLabel;
      
      private var _1244086221saleStrikeThroughGroup:HGroup;
      
      private var _1561827167saleTimerComponent:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FieldInfoLayerExpansionVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ExpansionComponent()
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
         if(_loc3_ || _loc1_)
         {
            §§push(null);
            if(_loc3_ || Boolean(this))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        addr0055:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§goto(addr006e);
                           }
                           §§goto(addr0119);
                        }
                        §§goto(addr00bd);
                     }
                     addr006e:
                     §§pop().§§slot[5] = null;
                     if(_loc3_ || _loc1_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    addr00ac:
                                    super();
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       addr00bd:
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00de:
                                             §§pop().§§slot[1] = this._ExpansionComponent_bindingsSetup();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   addr00fe:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      addr0109:
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr0119:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr0132:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0139:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_ExpansionComponentWatcherSetupUtil");
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                        addr0154:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0171:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ExpansionComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 §§goto(addr018d);
                                                                              }
                                                                              §§goto(addr0214);
                                                                           }
                                                                           §§goto(addr0320);
                                                                        }
                                                                        §§goto(addr0322);
                                                                     }
                                                                     §§goto(addr0171);
                                                                  }
                                                                  §§goto(addr0322);
                                                               }
                                                               §§goto(addr0214);
                                                            }
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr0154);
                                                      }
                                                      §§goto(addr0139);
                                                   }
                                                   §§goto(addr0320);
                                                }
                                                §§goto(addr0139);
                                             }
                                             §§goto(addr0132);
                                          }
                                          §§goto(addr0139);
                                       }
                                       §§goto(addr0132);
                                    }
                                    §§goto(addr0320);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr018d);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00bd);
                     }
                     addr018d:
                     if(!(_loc4_ && _loc2_))
                     {
                        mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                        if(_loc3_ || _loc2_)
                        {
                           this.mxmlContent = [this._ExpansionComponent_VGroup1_i(),this._ExpansionComponent_VGroup3_i()];
                           if(!(_loc4_ && _loc3_))
                           {
                              addr0214:
                              this.currentState = "normal";
                              if(!_loc4_)
                              {
                                 §§goto(addr0221);
                              }
                              §§goto(addr0320);
                           }
                        }
                     }
                     addr0221:
                     states = [new State({
                        "name":"normal",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup1",
                           "name":"visible",
                           "value":true
                        }),new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup1",
                           "name":"includeInLayout",
                           "value":true
                        }),new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup3",
                           "name":"visible",
                           "value":false
                        }),new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup3",
                           "name":"includeInLayout",
                           "value":false
                        })]
                     }),new State({
                        "name":"disabled",
                        "overrides":[]
                     }),new State({
                        "name":"locked",
                        "overrides":[new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup1",
                           "name":"visible",
                           "value":false
                        }),new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup1",
                           "name":"includeInLayout",
                           "value":false
                        }),new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup3",
                           "name":"visible",
                           "value":true
                        }),new SetProperty().initializeFromObject({
                           "target":"_ExpansionComponent_VGroup3",
                           "name":"includeInLayout",
                           "value":true
                        })]
                     })];
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr0322:
                        i = 0;
                        addr0320:
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
                                 if(_loc4_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§push(§§newactivation());
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop().§§slot[4]);
                                    if(_loc3_)
                                    {
                                       §§push(uint(§§pop() + 1));
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
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
                     while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !_loc4_);
                     
                     return;
                  }
                  §§goto(addr00de);
               }
               §§goto(addr0214);
            }
            §§goto(addr0055);
         }
         §§goto(addr00fe);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            ExpansionComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0042:
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
      
      public function set data(param1:FieldInfoLayerExpansionVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     this._dataIsDirty = true;
                     if(_loc2_)
                     {
                        this._data = param1;
                        if(_loc2_)
                        {
                           §§push(this._data);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() == null);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0077:
                                 §§push(!§§pop());
                                 if(_loc2_)
                                 {
                                    addr007d:
                                    var _temp_4:* = §§pop();
                                    §§push(_temp_4);
                                    if(_temp_4)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§pop();
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§goto(addr00b8);
                                          }
                                          §§goto(addr00c1);
                                       }
                                       §§goto(addr00b7);
                                    }
                                 }
                                 addr00b8:
                                 §§goto(addr00af);
                              }
                              §§goto(addr007d);
                           }
                           addr00af:
                           §§push(this._data.isLocked);
                           if(!_loc3_)
                           {
                              addr00b7:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 addr00c1:
                                 this.currentState = "locked";
                                 if(_loc2_)
                                 {
                                    addr00dd:
                                    invalidateProperties();
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00dd);
                           }
                           else
                           {
                              this.currentState = "normal";
                              if(!_loc3_)
                              {
                                 §§goto(addr00dd);
                              }
                           }
                           §§goto(addr00e2);
                        }
                     }
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr00e2);
            }
            §§goto(addr0077);
         }
         addr00e2:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:TimerBarComponentVo = null;
         if(_loc3_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc3_ || _loc2_)
            {
               §§push(this._dataIsDirty);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        this._dataIsDirty = false;
                        if(_loc3_ || Boolean(this))
                        {
                           this.ccPriceLabel.text = this._data.virtualCurrencyCost;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              this.ddPriceLabel.text = this._data.realCurrencyCost;
                              if(_loc3_ || _loc2_)
                              {
                                 var _temp_8:* = this.saleGroup;
                                 var _loc2_:*;
                                 this.saleGroup.includeInLayout = _loc2_ = this._data.onSale;
                                 _temp_8.visible = _loc2_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00ba:
                                    var _temp_11:* = this.saleStrikeThroughGroup;
                                    this.saleStrikeThroughGroup.includeInLayout = _loc2_ = this._data.onSale;
                                    _temp_11.visible = _loc2_;
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr00ed:
                                       addr00f4:
                                       if(this._data.onSale)
                                       {
                                          if(!_loc4_)
                                          {
                                             addr00fe:
                                             _loc1_ = new TimerBarComponentVo();
                                             if(_loc3_)
                                             {
                                                _loc1_.startTime = 0;
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc1_);
                                                   §§push(this._data.saleTimeTotal);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(§§pop() - this._data.saleTimeLeft);
                                                   }
                                                   §§pop().currentTime = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      _loc1_.cycleLength = this._data.saleTimeTotal;
                                                      if(!_loc4_)
                                                      {
                                                         _loc1_.targetTime = this._data.saleTimeTotal;
                                                         if(_loc3_)
                                                         {
                                                            addr0162:
                                                            _loc1_.waitingForStart = false;
                                                            if(!_loc4_)
                                                            {
                                                               addr016d:
                                                               §§push(this.ddPriceLabel);
                                                               §§push(" ");
                                                               if(_loc3_ || Boolean(_loc1_))
                                                               {
                                                                  §§push(§§pop() + this.ddPriceLabel.text);
                                                                  if(!(_loc4_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr0196:
                                                                     §§push(§§pop() + " ");
                                                                  }
                                                                  §§pop().text = §§pop();
                                                                  if(_loc3_)
                                                                  {
                                                                     addr01a1:
                                                                     this.saleTimerComponent.data = _loc1_;
                                                                  }
                                                                  addr01a8:
                                                                  this.ddPriceLabelDiscounted.text = this._data.discountedRealCurrencyCost;
                                                                  if(_loc3_)
                                                                  {
                                                                     this.orLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.or");
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.saleLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.sale");
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           addr01ff:
                                                                           this.lockedFlavour.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.levelLock",[this._data.unlockLevel]);
                                                                        }
                                                                     }
                                                                     §§goto(addr021a);
                                                                  }
                                                                  §§goto(addr01ff);
                                                               }
                                                               §§goto(addr0196);
                                                            }
                                                            §§goto(addr01a8);
                                                         }
                                                         §§goto(addr01a1);
                                                      }
                                                      §§goto(addr0162);
                                                   }
                                                }
                                                §§goto(addr01a1);
                                             }
                                             §§goto(addr016d);
                                          }
                                          §§goto(addr021a);
                                       }
                                       §§goto(addr01a8);
                                    }
                                    §§goto(addr021a);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00fe);
                           }
                        }
                        §§goto(addr021a);
                     }
                     §§goto(addr00ba);
                  }
                  addr021a:
                  return;
               }
               §§goto(addr00f4);
            }
            §§goto(addr00ed);
         }
         §§goto(addr00fe);
      }
      
      private function _ExpansionComponent_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "top";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.gap = 10;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.paddingTop = 10;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._ExpansionComponent_VGroup2_i(),this._ExpansionComponent_HGroup3_c(),this._ExpansionComponent_HGroup4_c(),this._ExpansionComponent_HGroup5_c()];
                           if(_loc3_)
                           {
                              §§goto(addr009f);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00ee);
                     }
                     §§goto(addr00dc);
                  }
                  addr009f:
                  _loc1_.id = "_ExpansionComponent_VGroup1";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00b2:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00be:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00dc:
                              this._ExpansionComponent_VGroup1 = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00ee:
                                 BindingManager.executeBindings(this,"_ExpansionComponent_VGroup1",this._ExpansionComponent_VGroup1);
                              }
                           }
                        }
                        §§goto(addr00fb);
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr00fb);
               }
               addr00fb:
               return _loc1_;
            }
            §§goto(addr00be);
         }
         §§goto(addr009f);
      }
      
      private function _ExpansionComponent_VGroup2_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._ExpansionComponent_HGroup1_c(),this._ExpansionComponent_TimerBarComponent1_i(),this._ExpansionComponent_HGroup2_c()];
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.id = "saleGroup";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0080:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr0091:
                           this.saleGroup = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"saleGroup",this.saleGroup);
                           }
                        }
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0091);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr0091);
      }
      
      private function _ExpansionComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.width = 157;
                     if(_loc2_)
                     {
                        addr0068:
                        _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           addr0078:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr008c:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0078);
               }
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      private function _ExpansionComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "expansionBlue";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "saleLabel";
                     if(_loc3_)
                     {
                        addr0080:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr008c);
                           }
                        }
                     }
                  }
                  §§goto(addr0095);
               }
            }
            §§goto(addr0080);
         }
         addr008c:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0095:
            this.saleLabel = _loc1_;
            if(!_loc2_)
            {
               BindingManager.executeBindings(this,"saleLabel",this.saleLabel);
            }
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.showBoostButton = false;
            if(_loc3_)
            {
               _loc1_.width = 181;
               if(!_loc2_)
               {
                  _loc1_.id = "saleTimerComponent";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0089:
                              this.saleTimerComponent = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"saleTimerComponent",this.saleTimerComponent);
                              }
                              §§goto(addr00a0);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0093);
            }
            §§goto(addr005e);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr006b);
               }
               addr004e:
               _loc1_.height = 4;
               if(_loc3_ || _loc3_)
               {
                  addr006b:
                  _loc1_.mxmlContent = [this._ExpansionComponent_BriskImageDynaLib1_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0087:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0087);
               }
               addr008b:
               return _loc1_;
            }
         }
         §§goto(addr0087);
      }
      
      private function _ExpansionComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc2_)
               {
                  _loc1_.width = 157;
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0066);
                  }
               }
               §§goto(addr007a);
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr007a:
                  _loc1_.document = this;
               }
            }
            §§goto(addr007e);
         }
         addr007e:
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 10;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.width = 157;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ExpansionComponent_BriskImageDynaLib2_c(),this._ExpansionComponent_LocaLabel2_i()];
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0094:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0088);
            }
            §§goto(addr0052);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
               §§goto(addr0036);
            }
            §§goto(addr004d);
         }
         addr0036:
         _loc1_.dynaBmpSourceName = "layer_cc_icon";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr004d:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0031:
               _loc1_.styleName = "expansionGrey";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "ccPriceLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0083:
                              this.ccPriceLabel = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 BindingManager.executeBindings(this,"ccPriceLabel",this.ccPriceLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0063);
            }
            §§goto(addr007a);
         }
         §§goto(addr0031);
      }
      
      private function _ExpansionComponent_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr0062:
                     _loc1_.width = 157;
                     if(!_loc2_)
                     {
                        addr0079:
                        _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel3_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr009d:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr009d);
                     }
                  }
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr0062);
      }
      
      private function _ExpansionComponent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_)
            {
               _loc1_.styleName = "expansionBlue";
               if(!_loc2_)
               {
                  _loc1_.id = "orLabel";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr006f:
                              this.orLabel = _loc1_;
                              if(_loc3_)
                              {
                                 addr0079:
                                 BindingManager.executeBindings(this,"orLabel",this.orLabel);
                              }
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr0079);
                     }
                  }
                  §§goto(addr006f);
               }
               addr0086:
               return _loc1_;
            }
            §§goto(addr0066);
         }
         §§goto(addr0079);
      }
      
      private function _ExpansionComponent_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 10;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc3_)
                  {
                     addr0069:
                     _loc1_.width = 157;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ExpansionComponent_Group2_c(),this._ExpansionComponent_BriskImageDynaLib3_c(),this._ExpansionComponent_Group3_c(),this._ExpansionComponent_LocaLabel5_i(),this._ExpansionComponent_Group4_c()];
                        addr0074:
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00bd:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr0074);
               }
               addr00c1:
               return _loc1_;
            }
            §§goto(addr00bd);
         }
         §§goto(addr0069);
      }
      
      private function _ExpansionComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 50;
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_mm";
               addr0034:
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0068);
         }
         §§goto(addr0034);
      }
      
      private function _ExpansionComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel4_i(),this._ExpansionComponent_HGroup6_i()];
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0070);
               }
               §§goto(addr0084);
            }
            addr0070:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0084:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0088);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               _loc1_.styleName = "expansionGrey";
               addr0033:
               if(_loc2_)
               {
                  _loc1_.id = "ddPriceLabel";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0080:
                              this.ddPriceLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 addr008a:
                                 BindingManager.executeBindings(this,"ddPriceLabel",this.ddPriceLabel);
                              }
                              §§goto(addr0097);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0077);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ExpansionComponent_HGroup6_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 80;
            if(_loc2_)
            {
               _loc1_.paddingTop = 2;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ExpansionComponent_BriskImageDynaLib4_i(),this._ExpansionComponent_BriskImageDynaLib5_i(),this._ExpansionComponent_BriskImageDynaLib6_i()];
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0086:
                           _loc1_.id = "saleStrikeThroughGroup";
                           if(_loc2_ || Boolean(this))
                           {
                              addr0099:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00c0);
                           }
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00c0);
            }
            addr00b7:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr00c0:
               this.saleStrikeThroughGroup = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr00d2:
                  BindingManager.executeBindings(this,"saleStrikeThroughGroup",this.saleStrikeThroughGroup);
               }
            }
            §§goto(addr00df);
         }
         addr00df:
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 5;
            if(!_loc3_)
            {
               _loc1_.width = 5;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "_ExpansionComponent_BriskImageDynaLib4";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr006d);
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               addr006d:
               _loc1_.document = this;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0089:
                  this._ExpansionComponent_BriskImageDynaLib4 = _loc1_;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr009b:
                     BindingManager.executeBindings(this,"_ExpansionComponent_BriskImageDynaLib4",this._ExpansionComponent_BriskImageDynaLib4);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr009b);
      }
      
      private function _ExpansionComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.height = 5;
            if(_loc3_)
            {
               addr002d:
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "_ExpansionComponent_BriskImageDynaLib5";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0086:
                              this._ExpansionComponent_BriskImageDynaLib5 = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"_ExpansionComponent_BriskImageDynaLib5",this._ExpansionComponent_BriskImageDynaLib5);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
            §§goto(addr0086);
         }
         §§goto(addr002d);
      }
      
      private function _ExpansionComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.height = 5;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.width = 5;
               if(_loc2_)
               {
                  _loc1_.id = "_ExpansionComponent_BriskImageDynaLib6";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr009e);
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr009e);
               }
            }
            addr008b:
            this._ExpansionComponent_BriskImageDynaLib6 = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr009e:
               BindingManager.executeBindings(this,"_ExpansionComponent_BriskImageDynaLib6",this._ExpansionComponent_BriskImageDynaLib6);
            }
            §§goto(addr00ac);
         }
         addr00ac:
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "expansionGrey";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0097);
            }
            §§goto(addr008e);
         }
         addr0063:
         _loc1_.id = "ddPriceLabelDiscounted";
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr008e:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     §§goto(addr0097);
                  }
               }
               §§goto(addr00a1);
            }
            addr0097:
            this.ddPriceLabelDiscounted = _loc1_;
            if(!_loc3_)
            {
               addr00a1:
               BindingManager.executeBindings(this,"ddPriceLabelDiscounted",this.ddPriceLabelDiscounted);
            }
            §§goto(addr00ae);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _ExpansionComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 50;
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr0045);
            }
            §§goto(addr0051);
         }
         addr0045:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0051:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.gap = 10;
                     if(!_loc3_)
                     {
                        _loc1_.paddingTop = 10;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel6_i()];
                           if(!_loc3_)
                           {
                              addr0088:
                              _loc1_.id = "_ExpansionComponent_VGroup3";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00ad);
                                    }
                                    §§goto(addr00c0);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr00c0);
            }
            addr00ad:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr00b6:
               this._ExpansionComponent_VGroup3 = _loc1_;
               if(_loc2_)
               {
                  addr00c0:
                  BindingManager.executeBindings(this,"_ExpansionComponent_VGroup3",this._ExpansionComponent_VGroup3);
               }
            }
            §§goto(addr00cd);
         }
         addr00cd:
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel6_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 3;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxWidth = 200;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "infoLabel";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0065:
                     _loc1_.id = "lockedFlavour";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0099:
                                 this.lockedFlavour = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"lockedFlavour",this.lockedFlavour);
                                 }
                              }
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0099);
                     }
                  }
                  addr00b8:
                  return _loc1_;
               }
            }
            §§goto(addr00ab);
         }
         §§goto(addr0065);
      }
      
      private function _ExpansionComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc3_)
               {
                  addr0036:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                        {
                           return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_sale_fontline_left");
                        },null,"_ExpansionComponent_BriskImageDynaLib4.briskDynaVo");
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!_loc3_)
                              {
                                 addr0070:
                                 §§push(1);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                    {
                                       return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_sale_fontline_middle");
                                    },null,"_ExpansionComponent_BriskImageDynaLib5.briskDynaVo");
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr00a9);
                                    }
                                    §§goto(addr00e4);
                                 }
                                 §§goto(addr0101);
                              }
                              §§goto(addr0138);
                           }
                           §§goto(addr014d);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00b8);
            }
            addr00a9:
            §§push(§§newactivation());
            if(_loc2_ || _loc1_)
            {
               addr00b8:
               §§push(§§pop().§§slot[1]);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(2);
                  if(!_loc3_)
                  {
                     addr00ce:
                     §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                     {
                        return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_sale_fontline_right");
                     },null,"_ExpansionComponent_BriskImageDynaLib6.briskDynaVo");
                     if(!_loc3_)
                     {
                        addr00e4:
                        §§push(§§newactivation());
                        if(_loc2_)
                        {
                           §§push(§§pop().§§slot[1]);
                           if(!(_loc3_ && _loc1_))
                           {
                              addr00fa:
                              §§push(3);
                              if(!_loc3_)
                              {
                                 addr0101:
                                 §§pop()[§§pop()] = new Binding(this,function():Boolean
                                 {
                                    return saleGroup.visible;
                                 },null,"ddPriceLabelDiscounted.visible");
                                 if(!_loc3_)
                                 {
                                    addr0122:
                                    §§push(§§newactivation());
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr0131);
                                    }
                                    §§goto(addr014d);
                                 }
                                 §§goto(addr014b);
                              }
                              §§goto(addr013a);
                           }
                           §§goto(addr0138);
                        }
                        §§goto(addr014d);
                     }
                     §§goto(addr0122);
                  }
                  §§goto(addr0101);
               }
               §§goto(addr00fa);
            }
            addr0131:
            §§push(§§pop().§§slot[1]);
            if(_loc2_)
            {
               addr013a:
               §§pop()[4] = new Binding(this,function():Boolean
               {
                  return saleGroup.includeInLayout;
               },null,"ddPriceLabelDiscounted.includeInLayout");
               addr014d:
               addr014b:
               §§push(result);
               addr0138:
            }
            return §§pop();
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ExpansionComponent_VGroup1() : VGroup
      {
         return this._1585012474_ExpansionComponent_VGroup1;
      }
      
      public function set _ExpansionComponent_VGroup1(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1585012474_ExpansionComponent_VGroup1;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1585012474_ExpansionComponent_VGroup1 = param1;
                  addr003f:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ExpansionComponent_VGroup1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ExpansionComponent_VGroup3() : VGroup
      {
         return this._1585012472_ExpansionComponent_VGroup3;
      }
      
      public function set _ExpansionComponent_VGroup3(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1585012472_ExpansionComponent_VGroup3;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1585012472_ExpansionComponent_VGroup3 = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ExpansionComponent_VGroup3",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get ccPriceLabel() : LocaLabel
      {
         return this._1398066261ccPriceLabel;
      }
      
      public function set ccPriceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1398066261ccPriceLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1398066261ccPriceLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ccPriceLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get ddPriceLabel() : LocaLabel
      {
         return this._1229032395ddPriceLabel;
      }
      
      public function set ddPriceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1229032395ddPriceLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._1229032395ddPriceLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddPriceLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get ddPriceLabelDiscounted() : LocaLabel
      {
         return this._1094425547ddPriceLabelDiscounted;
      }
      
      public function set ddPriceLabelDiscounted(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1094425547ddPriceLabelDiscounted;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1094425547ddPriceLabelDiscounted = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0053);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddPriceLabelDiscounted",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedFlavour() : LocaLabel
      {
         return this._332136569lockedFlavour;
      }
      
      public function set lockedFlavour(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._332136569lockedFlavour;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._332136569lockedFlavour = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedFlavour",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get orLabel() : LocaLabel
      {
         return this._1229408559orLabel;
      }
      
      public function set orLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1229408559orLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1229408559orLabel = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"orLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleGroup() : VGroup
      {
         return this._123184520saleGroup;
      }
      
      public function set saleGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._123184520saleGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._123184520saleGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleLabel() : LocaLabel
      {
         return this._119086355saleLabel;
      }
      
      public function set saleLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._119086355saleLabel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._119086355saleLabel = param1;
                  if(_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleStrikeThroughGroup() : HGroup
      {
         return this._1244086221saleStrikeThroughGroup;
      }
      
      public function set saleStrikeThroughGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1244086221saleStrikeThroughGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1244086221saleStrikeThroughGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleStrikeThroughGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get saleTimerComponent() : TimerBarComponent
      {
         return this._1561827167saleTimerComponent;
      }
      
      public function set saleTimerComponent(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1561827167saleTimerComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1561827167saleTimerComponent = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleTimerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
   }
}

