package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.CityWheelRewardListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CityWheelRewardMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const COLLECT_REWARDS:String = "COLLECT_REWARDS";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         COLLECT_REWARDS = "COLLECT_REWARDS";
         if(_loc1_ || CityWheelRewardMiniLayer)
         {
            _skinParts = {
               "moveArea":false,
               "sparkle":false,
               "closeButton":false,
               "controlBarGroup":false,
               "attentionSign":false,
               "contentGroup":false,
               "titleDisplay":false
            };
         }
      }
      
      private var _1932038916collectButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1440288096rewardItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CityWheelRewardMiniLayer()
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
            if(!(_loc3_ && Boolean(this)))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr004b:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           addr0068:
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              addr0073:
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00a3:
                                       mx_internal::_document = this;
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr00ce:
                                             §§pop().§§slot[1] = this._CityWheelRewardMiniLayer_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr00ee:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr0130:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CityWheelRewardMiniLayerWatcherSetupUtil");
                                                                     addr0137:
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr016c:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0183:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return CityWheelRewardMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01c6:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01ec:
                                                                                       this.width = 540;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.height = 313;
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr0204:
                                                                                             this.showSparkle = false;
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                addr0217:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CityWheelRewardMiniLayer_Array1_c);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr022d:
                                                                                                   this.addEventListener("creationComplete",this.___CityWheelRewardMiniLayer_MiniLayerWindow1_creationComplete);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0240:
                                                                                                      i = 0;
                                                                                                      addr023e:
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
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!(_loc4_ || _loc1_))
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
                                                                                                   while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc4_ || _loc2_);
                                                                                                   
                                                                                                   return;
                                                                                                   addr02ae:
                                                                                                }
                                                                                                §§goto(addr023e);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr022d);
                                                                                    }
                                                                                    §§goto(addr0204);
                                                                                 }
                                                                                 §§goto(addr01ec);
                                                                              }
                                                                              §§goto(addr022d);
                                                                           }
                                                                           §§goto(addr0204);
                                                                        }
                                                                        §§goto(addr0240);
                                                                     }
                                                                     §§goto(addr0217);
                                                                  }
                                                                  §§goto(addr0240);
                                                               }
                                                               §§goto(addr0217);
                                                            }
                                                            §§goto(addr0183);
                                                         }
                                                         §§goto(addr01c6);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   §§goto(addr0130);
                                                }
                                                §§goto(addr016c);
                                             }
                                             §§goto(addr0204);
                                          }
                                          §§goto(addr016c);
                                       }
                                       §§goto(addr02ae);
                                    }
                                    §§goto(addr0130);
                                 }
                                 §§goto(addr0204);
                              }
                              §§goto(addr0130);
                           }
                           §§goto(addr02ae);
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr0068);
            }
            §§goto(addr004b);
         }
         §§goto(addr00ee);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            CityWheelRewardMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
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
                  addr004e:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0054);
            }
            §§goto(addr004e);
         }
         addr0054:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            title = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.title.capital");
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0036:
               this.flavourText.text = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.flavour");
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.collectButton);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§push(LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.button.collect"));
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§pop().label = §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00b5:
                           this.collectButton.toolTip = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.button.tooltip");
                           addr00a9:
                           addr00a5:
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr00a5);
            }
            addr00b7:
            return;
         }
         §§goto(addr0036);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc1_ || Boolean(this))
            {
               §§push(Boolean(this._data));
               if(_loc1_ || _loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr008a);
                     }
                  }
                  addr006f:
                  §§push(this._isDirty);
                  if(_loc1_ || Boolean(this))
                  {
                     addr006e:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        this._isDirty = false;
                        if(!_loc2_)
                        {
                           addr008a:
                           this.rewardItemList.dataProvider = this._data;
                        }
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr006e);
            }
            §§goto(addr008a);
         }
         addr0095:
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0056:
                  this._data = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     this._isDirty = true;
                     if(_loc2_ || Boolean(param1))
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      private function handleCollectRewards(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(COLLECT_REWARDS,true));
            if(!_loc3_)
            {
               this.collectButton.enabled = false;
            }
         }
      }
      
      private function _CityWheelRewardMiniLayer_Array1_c() : Array
      {
         return [this._CityWheelRewardMiniLayer_VGroup1_c(),this._CityWheelRewardMiniLayer_BriskImageDynaLib1_c()];
      }
      
      private function _CityWheelRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0039);
            }
            §§goto(addr0076);
         }
         addr0039:
         _loc1_.horizontalAlign = "center";
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.paddingBottom = 20;
            if(!_loc2_)
            {
               _loc1_.gap = -10;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_HGroup1_c(),this._CityWheelRewardMiniLayer_Group1_c(),this._CityWheelRewardMiniLayer_MultistateButton1_i()];
                  addr0076:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr00a6);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00a6);
            }
            §§goto(addr00b2);
         }
         addr00a6:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr00b2:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.height = 50;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc3_)
                  {
                     addr0063:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_LocaLabel1_i()];
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr009a);
                        }
                     }
                     §§goto(addr00a6);
                  }
               }
               addr009a:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr00a6:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr00a6);
         }
         §§goto(addr0063);
      }
      
      private function _CityWheelRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "flavourText";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr00a7);
                        }
                     }
                  }
                  addr0095:
                  this.flavourText = _loc1_;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00a7:
                     BindingManager.executeBindings(this,"flavourText",this.flavourText);
                  }
                  return _loc1_;
               }
               §§goto(addr00a7);
            }
            §§goto(addr0078);
         }
         §§goto(addr00a7);
      }
      
      private function _CityWheelRewardMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_HGroup2_c(),this._CityWheelRewardMiniLayer_UiInfolayerAlignmentLine1_i()];
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0062:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0062);
         }
         addr007a:
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr0093);
               }
               addr006f:
               _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_List1_i()];
               if(!(_loc2_ && _loc3_))
               {
                  addr0087:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0093:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0093);
         }
         §§goto(addr0087);
      }
      
      private function _CityWheelRewardMiniLayer_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.itemRenderer = this._CityWheelRewardMiniLayer_ClassFactory1_c();
            if(_loc2_)
            {
               _loc1_.maxWidth = 455;
               if(!_loc3_)
               {
                  _loc1_.setStyle("skinClass",CityWheelRewardListSkin);
                  if(!_loc3_)
                  {
                     addr005f:
                     _loc1_.id = "rewardItemList";
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr00a3:
                                 this.rewardItemList = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b5:
                                    BindingManager.executeBindings(this,"rewardItemList",this.rewardItemList);
                                 }
                              }
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00b5);
                  }
                  addr00c2:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
            §§goto(addr00b5);
         }
         §§goto(addr00a3);
      }
      
      private function _CityWheelRewardMiniLayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_ || _loc3_)
         {
            _loc1_.left = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.top = 70;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.lineId = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0078:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr00c7);
                              }
                           }
                           addr00b5:
                           this.uiInfolayerAlignmentLine = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              addr00c7:
                              BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                           }
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr00b5);
                  }
                  addr00d4:
                  return _loc1_;
               }
               §§goto(addr008b);
            }
            §§goto(addr0078);
         }
         §§goto(addr00c7);
      }
      
      private function _CityWheelRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 204;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.addEventListener("click",this.__collectButton_click);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "collectButton";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0086:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b5);
                        }
                     }
                     addr00a3:
                     this.collectButton = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00b5:
                        BindingManager.executeBindings(this,"collectButton",this.collectButton);
                     }
                     §§goto(addr00c2);
                  }
               }
               §§goto(addr00b5);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      public function __collectButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.handleCollectRewards(param1);
         }
      }
      
      private function _CityWheelRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc3_ && _loc2_))
               {
                  addr0052:
                  _loc1_.left = 9;
                  if(_loc2_)
                  {
                     _loc1_.top = -66;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr008e);
               }
               addr007a:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr008e:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0052);
      }
      
      public function ___CityWheelRewardMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _CityWheelRewardMiniLayer_bindingsSetup() : Array
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
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0059);
               }
               §§goto(addr007d);
            }
            §§goto(addr007b);
         }
         addr0059:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || Boolean(this))
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr007d:
            addr007b:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collectButton() : MultistateButton
      {
         return this._1932038916collectButton;
      }
      
      public function set collectButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1932038916collectButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1932038916collectButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectButton",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItemList() : List
      {
         return this._1440288096rewardItemList;
      }
      
      public function set rewardItemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1440288096rewardItemList;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1440288096rewardItemList = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
   }
}

