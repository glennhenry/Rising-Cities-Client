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
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareRewardPreviewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.NextLevelUpRewardItemListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CitysquareRewardPreviewMinilayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
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
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1641788370okButton:MultistateButton;
      
      private var _1440288096rewardItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareRewardPreviewVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CitysquareRewardPreviewMinilayer()
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
         if(_loc3_)
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr003f:
                     §§pop().§§slot[5] = null;
                     if(!_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              addr0061:
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr009a:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._CitysquareRewardPreviewMinilayer_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr00c2:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr00d6:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc4_)
                                                         {
                                                            addr00e1:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr00f7:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr00fe:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CitysquareRewardPreviewMinilayerWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr0112:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr0121:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              addr014b:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return CitysquareRewardPreviewMinilayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    addr01a0:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr01cf:
                                                                                       this.width = 540;
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          this.height = 313;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01ee:
                                                                                             this.showAttentionSign = false;
                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                             {
                                                                                                addr0201:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitysquareRewardPreviewMinilayer_Array1_c);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0216:
                                                                                                   this.addEventListener("creationComplete",this.___CitysquareRewardPreviewMinilayer_MiniLayerWindow1_creationComplete);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0231:
                                                                                                      i = 0;
                                                                                                      addr022f:
                                                                                                   }
                                                                                                   var _temp_14:*;
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
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc3_ || _loc1_)
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
                                                                                                   while(var _temp_14:* = §§pop(), §§pop().§§slot[4] = _temp_14, _loc3_ || _loc2_);
                                                                                                   
                                                                                                   return;
                                                                                                   addr0292:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr022f);
                                                                                          }
                                                                                          §§goto(addr0201);
                                                                                       }
                                                                                       §§goto(addr0292);
                                                                                    }
                                                                                    §§goto(addr0201);
                                                                                 }
                                                                                 §§goto(addr01cf);
                                                                              }
                                                                              §§goto(addr01a0);
                                                                           }
                                                                           §§goto(addr0292);
                                                                        }
                                                                        §§goto(addr0231);
                                                                     }
                                                                     §§goto(addr01a0);
                                                                  }
                                                                  §§goto(addr0231);
                                                               }
                                                               §§goto(addr01ee);
                                                            }
                                                            §§goto(addr014b);
                                                         }
                                                         §§goto(addr01cf);
                                                      }
                                                      §§goto(addr00fe);
                                                   }
                                                   §§goto(addr0201);
                                                }
                                                §§goto(addr0121);
                                             }
                                             §§goto(addr01ee);
                                          }
                                          §§goto(addr0121);
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr009a);
                              }
                              §§goto(addr01cf);
                           }
                           §§goto(addr0292);
                        }
                        §§goto(addr0061);
                     }
                     §§goto(addr0216);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr0112);
            }
            §§goto(addr003f);
         }
         §§goto(addr00c2);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            CitysquareRewardPreviewMinilayer._watcherSetupUtil = param1;
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
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr002d);
                  }
               }
               else
               {
                  addr0033:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr002d:
            return;
         }
         §§goto(addr0033);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.title = ResourceManager.getInstance().getString(String("rcl.citysquare.popup.mini.rewardpreview"),String("rcl.citysquare.popup.mini.rewardpreview.header"));
            if(_loc2_ || Boolean(this))
            {
               this.okButton.label = ResourceManager.getInstance().getString(String("rcl.citysquare.popup.mini.rewardpreview"),String("rcl.citysquare.popup.mini.rewardpreview.button.ok"));
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(this._data));
               if(_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0050:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr006d);
                        }
                        §§goto(addr00c4);
                     }
                  }
                  addr006d:
                  §§push(this._isDirty);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr0076:
                        this._isDirty = false;
                        if(_loc2_ || _loc2_)
                        {
                           §§push(ResourceManager.getInstance().getString(String("rcl.citysquare.popup.events"),String("rcl.citysquare.popup.events.challenge.header2")));
                           if(_loc2_)
                           {
                              §§push(§§pop());
                           }
                           _loc1_ = §§pop();
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr00c4);
                           }
                        }
                        §§goto(addr00e5);
                     }
                     addr00c4:
                     this.flavourText.text = StringUtil.substitute(_loc1_,this._data.challengeNumber,this._data.totalChallenges);
                     if(!_loc3_)
                     {
                        addr00e5:
                        this.rewardItemList.dataProvider = this._data.rewardCollection;
                     }
                     §§goto(addr00f3);
                  }
                  addr00f3:
                  return;
               }
               §§goto(addr0050);
            }
            §§goto(addr0076);
         }
         §§goto(addr00c4);
      }
      
      public function setData(param1:CitySquareRewardPreviewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc2_)
               {
                  this._isDirty = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     this._data = param1;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.invalidateProperties();
                     }
                  }
               }
            }
         }
      }
      
      private function _CitysquareRewardPreviewMinilayer_Array1_c() : Array
      {
         return [this._CitysquareRewardPreviewMinilayer_VGroup1_c(),this._CitysquareRewardPreviewMinilayer_BriskImageDynaLib1_c()];
      }
      
      private function _CitysquareRewardPreviewMinilayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.paddingTop = 8;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.gap = -10;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._CitysquareRewardPreviewMinilayer_LocaLabel1_i(),this._CitysquareRewardPreviewMinilayer_Group1_c(),this._CitysquareRewardPreviewMinilayer_MultistateButton1_i()];
                        addr006b:
                        if(_loc2_ || Boolean(this))
                        {
                           addr009b:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00af:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00af);
                     }
                  }
                  addr00b3:
                  return _loc1_;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr009b);
      }
      
      private function _CitysquareRewardPreviewMinilayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.height = 50;
            if(!_loc3_)
            {
               addr0028:
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0094);
                              }
                           }
                           §§goto(addr009e);
                        }
                        addr0094:
                        this.flavourText = _loc1_;
                        if(_loc2_)
                        {
                           addr009e:
                           BindingManager.executeBindings(this,"flavourText",this.flavourText);
                        }
                        §§goto(addr00ab);
                     }
                     addr00ab:
                     return _loc1_;
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr009e);
         }
         §§goto(addr0028);
      }
      
      private function _CitysquareRewardPreviewMinilayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._CitysquareRewardPreviewMinilayer_List1_i(),this._CitysquareRewardPreviewMinilayer_UiInfolayerAlignmentLine1_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0054:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0058);
            }
            §§goto(addr0054);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _CitysquareRewardPreviewMinilayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._CitysquareRewardPreviewMinilayer_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.width = 450;
               if(_loc3_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0091);
            }
            addr004b:
            _loc1_.setStyle("skinClass",NextLevelUpRewardItemListSkin);
            if(_loc3_)
            {
               _loc1_.id = "rewardItemList";
               if(_loc3_)
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0091:
                           this.rewardItemList = _loc1_;
                           if(_loc3_)
                           {
                              addr009b:
                              BindingManager.executeBindings(this,"rewardItemList",this.rewardItemList);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00a8);
                  }
               }
               §§goto(addr0091);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      private function _CitysquareRewardPreviewMinilayer_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CitysquareRewardPreviewMinilayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.top = 70;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0044);
               }
               §§goto(addr0065);
            }
            §§goto(addr0098);
         }
         addr0044:
         _loc1_.right = 0;
         if(!_loc3_)
         {
            _loc1_.lineId = 0;
            if(_loc2_)
            {
               addr0065:
               _loc1_.id = "uiInfolayerAlignmentLine";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0098:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr00a1:
                           this.uiInfolayerAlignmentLine = _loc1_;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00b3:
                              BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00c0);
            }
            §§goto(addr0098);
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _CitysquareRewardPreviewMinilayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 204;
            if(_loc3_ || _loc3_)
            {
               _loc1_.libNameLeft = "gui_popups_miniLayer";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "okButton";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a2:
                              this.okButton = _loc1_;
                              if(_loc3_)
                              {
                                 addr00ac:
                                 BindingManager.executeBindings(this,"okButton",this.okButton);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00ac);
                        }
                        addr00b9:
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr00a2);
      }
      
      private function _CitysquareRewardPreviewMinilayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_)
               {
                  _loc1_.left = 9;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = -66;
                     if(_loc3_ || _loc2_)
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr007d);
                  }
                  addr0081:
                  return _loc1_;
               }
               §§goto(addr0071);
            }
         }
         §§goto(addr007d);
      }
      
      public function ___CitysquareRewardPreviewMinilayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _CitysquareRewardPreviewMinilayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr0074);
            }
            §§goto(addr0072);
         }
         addr0050:
         §§push(§§pop().§§slot[1]);
         if(!(_loc2_ && _loc1_))
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr0074:
            addr0072:
            return result;
         }
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._800887486flavourText = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1641788370okButton;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1641788370okButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007c);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr007c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0046:
                  this._1440288096rewardItemList = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr005c);
      }
   }
}

