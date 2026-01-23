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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.NextLevelUpRewardItemListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class NextLevelMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _levelData:LevelUpVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NextLevelMiniLayer()
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
         if(!(_loc4_ && _loc2_))
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || _loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_ || _loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc4_)
                                       {
                                          addr00aa:
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00b9:
                                             §§pop().§§slot[1] = this._NextLevelMiniLayer_bindingsSetup();
                                             if(_loc3_)
                                             {
                                                addr00c8:
                                                §§push(§§newactivation());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr00ec:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc4_)
                                                         {
                                                            addr00f7:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr0115:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_NextLevelMiniLayerWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0128:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr0130:
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              addr015e:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return NextLevelMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 addr0184:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr01b2:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01d8:
                                                                                       this.width = 540;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01e4:
                                                                                          this.height = 313;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr01f0:
                                                                                             this.showAttentionSign = false;
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr01fa:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NextLevelMiniLayer_Array1_c);
                                                                                                if(_loc3_ || Boolean(this))
                                                                                                {
                                                                                                   addr0219:
                                                                                                   i = 0;
                                                                                                   addr0217:
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
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(_loc4_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc3_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc4_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                               {
                                                                                                                  var _temp_26:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_26;
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                                addr0298:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0217);
                                                                                       }
                                                                                       §§goto(addr01f0);
                                                                                    }
                                                                                    §§goto(addr01e4);
                                                                                 }
                                                                                 §§goto(addr01fa);
                                                                              }
                                                                              §§goto(addr01d8);
                                                                           }
                                                                           §§goto(addr01b2);
                                                                        }
                                                                        §§goto(addr0219);
                                                                     }
                                                                     §§goto(addr0184);
                                                                  }
                                                                  §§goto(addr0219);
                                                               }
                                                               §§goto(addr0298);
                                                            }
                                                            §§goto(addr015e);
                                                         }
                                                         §§goto(addr01d8);
                                                      }
                                                      §§goto(addr0219);
                                                   }
                                                   §§goto(addr00f7);
                                                }
                                                §§goto(addr0130);
                                             }
                                             §§goto(addr0184);
                                          }
                                          §§goto(addr00ec);
                                       }
                                       §§goto(addr00c8);
                                    }
                                    §§goto(addr0128);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr0184);
                           }
                           §§goto(addr015e);
                        }
                        §§goto(addr01fa);
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr0115);
               }
               §§goto(addr00aa);
            }
            §§goto(addr0040);
         }
         §§goto(addr00b9);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            NextLevelMiniLayer._watcherSetupUtil = param1;
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._levelData));
               if(_loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr004b);
                        }
                        §§goto(addr005c);
                     }
                  }
                  addr004b:
                  §§push(this._isDirty);
                  if(!_loc2_)
                  {
                     addr004a:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr005c:
                        this._isDirty = false;
                        if(!_loc2_)
                        {
                           this.title = LocaUtils.getString("rcl.miniLayer.level","rcl.miniLayer.level.title").toUpperCase();
                           if(!_loc2_)
                           {
                              addr008a:
                              this.flavourText.text = LocaUtils.getString("rcl.miniLayer.level","rcl.miniLayer.level.flavour");
                              if(_loc1_)
                              {
                                 §§push(this.okButton);
                                 if(_loc1_)
                                 {
                                    §§push(LocaUtils.getString("rcl.miniLayer.level","rcl.miniLayer.level.button"));
                                    if(_loc1_)
                                    {
                                       §§pop().label = §§pop();
                                       if(_loc1_ || _loc1_)
                                       {
                                          this.rewardItemList.dataProvider = this._levelData.rewards;
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr0102:
                                             this.okButton.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.levelPreview.button");
                                             addr00f6:
                                             addr00f2:
                                          }
                                       }
                                       §§goto(addr0104);
                                    }
                                    §§goto(addr0102);
                                 }
                                 §§goto(addr00f6);
                              }
                           }
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0104);
               }
               §§goto(addr004a);
            }
            addr0104:
            return;
         }
         §§goto(addr00f2);
      }
      
      public function setData(param1:LevelUpVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._levelData))
            {
               if(!_loc3_)
               {
                  this._isDirty = true;
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0049:
                     this._levelData = param1;
                     if(_loc2_ || _loc3_)
                     {
                        addr005b:
                        invalidateProperties();
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr005b);
               }
            }
            addr0060:
            return;
         }
         §§goto(addr0049);
      }
      
      private function _NextLevelMiniLayer_Array1_c() : Array
      {
         return [this._NextLevelMiniLayer_VGroup1_c(),this._NextLevelMiniLayer_BriskImageDynaLib1_c()];
      }
      
      private function _NextLevelMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.paddingTop = 8;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0061:
                     _loc1_.gap = -10;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._NextLevelMiniLayer_LocaLabel1_i(),this._NextLevelMiniLayer_Group1_c(),this._NextLevelMiniLayer_MultistateButton1_i()];
                        if(!_loc3_)
                        {
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr00a6);
                  }
               }
               addr0092:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00a6:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00aa);
            }
            addr00aa:
            return _loc1_;
         }
         §§goto(addr0061);
      }
      
      private function _NextLevelMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 50;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc2_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc2_)
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a0:
                                 this.flavourText = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00b7);
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr006d);
            }
            §§goto(addr00aa);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _NextLevelMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._NextLevelMiniLayer_List1_i(),this._NextLevelMiniLayer_UiInfolayerAlignmentLine1_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _NextLevelMiniLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._NextLevelMiniLayer_ClassFactory1_c();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 455;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.setStyle("skinClass",NextLevelUpRewardItemListSkin);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr006c:
                     _loc1_.id = "rewardItemList";
                     if(_loc3_ || Boolean(this))
                     {
                        addr007f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00a2:
                                 this.rewardItemList = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00b4:
                                    BindingManager.executeBindings(this,"rewardItemList",this.rewardItemList);
                                 }
                              }
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00b4);
                  }
                  addr00c1:
                  return _loc1_;
               }
               §§goto(addr006c);
            }
            §§goto(addr007f);
         }
         §§goto(addr00a2);
      }
      
      private function _NextLevelMiniLayer_ClassFactory1_c() : ClassFactory
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
      
      private function _NextLevelMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 70;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     addr005c:
                     _loc1_.lineId = 0;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00b4:
                                    this.uiInfolayerAlignmentLine = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00be:
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr00be);
                              }
                              addr00cb:
                              return _loc1_;
                           }
                           §§goto(addr00b4);
                        }
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr005c);
            }
            §§goto(addr00be);
         }
         §§goto(addr00a3);
      }
      
      private function _NextLevelMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 204;
            if(!_loc3_)
            {
               _loc1_.libNameLeft = "gui_popups_miniLayer";
               if(!_loc3_)
               {
                  _loc1_.id = "okButton";
                  addr0041:
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr008a:
                              this.okButton = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"okButton",this.okButton);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        addr00a9:
                        return _loc1_;
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr009c);
            }
         }
         §§goto(addr0041);
      }
      
      private function _NextLevelMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0040);
            }
            §§goto(addr0071);
         }
         addr0040:
         _loc1_.dynaLibName = "gui_popups_questPopup";
         if(_loc2_ || _loc2_)
         {
            _loc1_.left = 9;
            if(!_loc3_)
            {
               _loc1_.top = -66;
               if(_loc2_)
               {
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0085);
            }
         }
         addr0089:
         return _loc1_;
      }
      
      private function _NextLevelMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc1_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0061);
               }
               §§goto(addr0085);
            }
            §§goto(addr0083);
         }
         addr0061:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || _loc1_)
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr0085:
            addr0083:
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
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
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
         §§goto(addr0057);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1641788370okButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItemList() : List
      {
         return this._1440288096rewardItemList;
      }
      
      public function set rewardItemList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1440288096rewardItemList;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1440288096rewardItemList = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
         }
         addr0080:
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  addr0041:
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
      }
   }
}

