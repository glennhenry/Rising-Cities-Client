package net.bigpoint.cityrama.view.rewardLayer.ui
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
   import net.bigpoint.cityrama.model.rewards.vo.RewardDataVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.rewardLayer.ui.skins.RewardLayerBigListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class RewardLayerPopup extends PaperPopupWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _800887486flavourText:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1177280081itemList:List;
      
      private var _1641788370okButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _rewardData:RewardDataVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RewardLayerPopup()
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
            if(!(_loc4_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc1_))
                  {
                     addr005a:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || Boolean(this))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || Boolean(this))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00b9:
                                       mx_internal::_document = this;
                                       if(!_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._RewardLayerPopup_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                addr00e3:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         addr00fc:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr011d:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0124:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_rewardLayer_ui_RewardLayerPopupWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0175:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return RewardLayerPopup[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr01c0:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       this.showBackButton = false;
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr0201:
                                                                                          this.width = 785;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr020d:
                                                                                             this.height = 430;
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                this.visible = false;
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr022a:
                                                                                                   this.styleName = "rewardFirst";
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0236:
                                                                                                      this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RewardLayerPopup_Array1_c);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr024d:
                                                                                                         i = 0;
                                                                                                         addr024b:
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
                                                                                                               if(_loc4_ && _loc1_)
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
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc4_)
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
                                                                                                   while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, !(_loc4_ && _loc2_));
                                                                                                   
                                                                                                   return;
                                                                                                   addr02b3:
                                                                                                }
                                                                                                §§goto(addr0236);
                                                                                             }
                                                                                             §§goto(addr024b);
                                                                                          }
                                                                                          §§goto(addr02b3);
                                                                                       }
                                                                                       §§goto(addr022a);
                                                                                    }
                                                                                    §§goto(addr0201);
                                                                                 }
                                                                                 §§goto(addr02b3);
                                                                              }
                                                                              §§goto(addr024b);
                                                                           }
                                                                           §§goto(addr022a);
                                                                        }
                                                                        §§goto(addr024d);
                                                                     }
                                                                     §§goto(addr02b3);
                                                                  }
                                                                  §§goto(addr024d);
                                                               }
                                                               §§goto(addr0201);
                                                            }
                                                            §§goto(addr0175);
                                                         }
                                                         §§goto(addr011d);
                                                      }
                                                      §§goto(addr0124);
                                                   }
                                                   §§goto(addr011d);
                                                }
                                                §§goto(addr00fc);
                                             }
                                             §§goto(addr024b);
                                          }
                                          §§goto(addr024d);
                                       }
                                       §§goto(addr024b);
                                    }
                                    §§goto(addr0236);
                                 }
                                 §§goto(addr01c0);
                              }
                              §§goto(addr020d);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr022a);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr00fc);
               }
               §§goto(addr00b9);
            }
            §§goto(addr005a);
         }
         §§goto(addr00fc);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            RewardLayerPopup._watcherSetupUtil = param1;
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
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0043:
            return;
         }
         §§goto(addr0051);
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§push(Boolean(this._rewardData));
               if(!_loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr003c:
                        §§pop();
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr005c);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  addr005c:
                  §§push(this._isDirty);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        this._isDirty = false;
                        if(_loc2_)
                        {
                           this.styleName = this._rewardData.styleName;
                           if(_loc2_ || _loc1_)
                           {
                              this.title = this._rewardData.title;
                              if(!_loc1_)
                              {
                                 addr00a7:
                                 §§push(this.okButton);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(this._rewardData);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().buttonText);
                                       if(!_loc1_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc1_)
                                          {
                                             this.flavourText.text = this._rewardData.flavourText;
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                addr00eb:
                                                this.itemList.dataProvider = this._rewardData.receivedItems;
                                                if(!_loc1_)
                                                {
                                                   addr00fe:
                                                   §§push(this.okButton);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr0120:
                                                      §§pop().toolTip = this._rewardData.buttonTooltip;
                                                      addr011d:
                                                      addr010f:
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr0133:
                                                         this.okButton.enabled = true;
                                                         addr012f:
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr0144:
                                                            this.visible = true;
                                                         }
                                                      }
                                                      §§goto(addr0148);
                                                   }
                                                   §§goto(addr0133);
                                                }
                                                §§goto(addr0144);
                                             }
                                             §§goto(addr0148);
                                          }
                                          §§goto(addr0144);
                                       }
                                       §§goto(addr0120);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr010f);
                              }
                              §§goto(addr00fe);
                           }
                           §§goto(addr0148);
                        }
                        §§goto(addr012f);
                     }
                  }
                  addr0148:
                  return;
               }
               §§goto(addr003c);
            }
            §§goto(addr00eb);
         }
         §§goto(addr0144);
      }
      
      public function set data(param1:RewardDataVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._rewardData))
            {
               if(!(_loc3_ && _loc2_))
               {
                  this._isDirty = true;
                  if(_loc2_ || _loc3_)
                  {
                     this._rewardData = param1;
                     if(!_loc3_)
                     {
                        addr006f:
                        invalidateProperties();
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr006f);
            }
         }
         addr0074:
      }
      
      private function _RewardLayerPopup_Array1_c() : Array
      {
         return [this._RewardLayerPopup_BriskImageDynaLib1_i(),this._RewardLayerPopup_VGroup1_c()];
      }
      
      private function _RewardLayerPopup_BriskImageDynaLib1_i() : BriskImageDynaLib
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
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0044:
                  _loc1_.left = -25;
                  if(!_loc3_)
                  {
                     _loc1_.top = -35;
                     if(!_loc3_)
                     {
                        _loc1_.id = "infoIcon";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a6:
                                    this.infoIcon = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00b0:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00a6);
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr0044);
         }
         §§goto(addr00a6);
      }
      
      private function _RewardLayerPopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 35;
            if(_loc3_)
            {
               _loc1_.gap = 0;
               if(_loc3_)
               {
                  addr003d:
                  _loc1_.verticalAlign = "top";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     addr0047:
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc3_)
                        {
                           _loc1_.percentHeight = 100;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._RewardLayerPopup_LocaLabel1_i(),this._RewardLayerPopup_Group1_c(),this._RewardLayerPopup_MultistateButton1_i()];
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00bc:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00bc);
                        }
                        addr00c0:
                        return _loc1_;
                     }
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr0047);
            }
            §§goto(addr003d);
         }
         §§goto(addr0047);
      }
      
      private function _RewardLayerPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxHeight = 35;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.maxWidth = 660;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "flavorText";
                  if(!_loc3_)
                  {
                     _loc1_.text = "dev";
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc2_)
                        {
                           _loc1_.horizontalCenter = 0;
                           if(!_loc3_)
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr00c3);
                        }
                        addr007c:
                        _loc1_.percentWidth = 100;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.height = 35;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00a0);
                           }
                           §§goto(addr00d6);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00d6);
                  }
                  addr00a0:
                  _loc1_.id = "flavourText";
                  if(_loc2_)
                  {
                     addr00b7:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr00c3:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00cc:
                              this.flavourText = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00d6:
                                 BindingManager.executeBindings(this,"flavourText",this.flavourText);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr00d6);
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr00cc);
                  }
                  addr00e3:
                  return _loc1_;
               }
               §§goto(addr00b7);
            }
            §§goto(addr00c3);
         }
         §§goto(addr00d6);
      }
      
      private function _RewardLayerPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 280;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr008d);
               }
            }
            §§goto(addr0064);
         }
         addr005a:
         _loc1_.verticalCenter = 0;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._RewardLayerPopup_StickyNoteComponent1_c(),this._RewardLayerPopup_List1_i(),this._RewardLayerPopup_UiInfolayerAlignmentLine1_i()];
            addr0064:
            if(!_loc2_)
            {
               addr008d:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00a1:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00a5);
            }
            §§goto(addr00a1);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _RewardLayerPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "blue";
            if(_loc3_)
            {
               _loc1_.width = 700;
               if(!_loc2_)
               {
                  _loc1_.height = 280;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._RewardLayerPopup_Array4_c);
                           addr006e:
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr0097);
                           }
                           §§goto(addr00ab);
                        }
                     }
                     addr0097:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00ab:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr006e);
               }
            }
            §§goto(addr00ab);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _RewardLayerPopup_Array4_c() : Array
      {
         return [this._RewardLayerPopup_HGroup1_c()];
      }
      
      private function _RewardLayerPopup_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc3_)
                     {
                        addr006e:
                        _loc1_.percentHeight = 100;
                        if(_loc2_)
                        {
                           _loc1_.horizontalCenter = 0;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008a:
                              _loc1_.verticalCenter = -27;
                              if(_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._RewardLayerPopup_BriskImageDynaLib2_c(),this._RewardLayerPopup_BriskImageDynaLib3_c(),this._RewardLayerPopup_BriskImageDynaLib4_c()];
                                 addr0094:
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00c3);
                                 }
                              }
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00cf);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0094);
            }
            §§goto(addr006e);
         }
         addr00c3:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr00cf:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RewardLayerPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "frame_blue";
            if(_loc2_)
            {
               addr003c:
               _loc1_.dynaLibName = "gui_popups_rewardLayer";
               if(!_loc3_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr0053);
            }
            addr0047:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0053:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _RewardLayerPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "frame_blue";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_rewardLayer";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _RewardLayerPopup_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "frame_blue";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_rewardLayer";
               §§goto(addr003c);
            }
            §§goto(addr006e);
         }
         addr003c:
         if(_loc2_ || Boolean(_loc1_))
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr006e:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _RewardLayerPopup_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.itemRenderer = this._RewardLayerPopup_ClassFactory1_c();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     addr005a:
                     _loc1_.width = 740;
                     if(!_loc2_)
                     {
                        _loc1_.visible = true;
                        if(_loc3_ || _loc2_)
                        {
                           addr0083:
                           _loc1_.setStyle("skinClass",RewardLayerBigListSkin);
                           if(_loc3_ || _loc3_)
                           {
                              addr009a:
                              _loc1_.id = "itemList";
                              if(_loc3_ || Boolean(this))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00b9:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00d5:
                                          this.itemList = _loc1_;
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00e7:
                                             BindingManager.executeBindings(this,"itemList",this.itemList);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00b9);
                        }
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0083);
            }
            §§goto(addr005a);
         }
         §§goto(addr009a);
      }
      
      private function _RewardLayerPopup_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _RewardLayerPopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_)
         {
            _loc1_.left = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = 70;
               if(!_loc3_)
               {
                  _loc1_.right = 0;
                  if(!_loc3_)
                  {
                     _loc1_.lineId = 0;
                     if(_loc2_)
                     {
                        addr0061:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(_loc2_)
                        {
                           addr006c:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§goto(addr008d);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009e);
                        }
                        addr008d:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr009e:
                           this.uiInfolayerAlignmentLine = _loc1_;
                           if(_loc2_)
                           {
                              addr00a8:
                              BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr00a8);
               }
               addr00b5:
               return _loc1_;
            }
         }
         §§goto(addr0061);
      }
      
      private function _RewardLayerPopup_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "confirm";
            if(_loc2_ || _loc2_)
            {
               _loc1_.showSparkle = true;
               if(!_loc3_)
               {
                  _loc1_.width = 207;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.id = "okButton";
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr009b:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00b7:
                                    this.okButton = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00c9:
                                       BindingManager.executeBindings(this,"okButton",this.okButton);
                                    }
                                 }
                              }
                              §§goto(addr00d6);
                           }
                        }
                        §§goto(addr00b7);
                     }
                  }
                  §§goto(addr009b);
               }
            }
            §§goto(addr00c9);
         }
         addr00d6:
         return _loc1_;
      }
      
      private function _RewardLayerPopup_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§pop()[0] = new Binding(this,function():uint
                     {
                        return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                     },null,"uiInfolayerAlignmentLine.alignment");
                     addr0061:
                     addr005f:
                     return result;
                  }
               }
               §§goto(addr0061);
            }
            §§goto(addr005f);
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._800887486flavourText = param1;
                  addr004a:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
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
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177606215infoIcon;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._177606215infoIcon = param1;
                  addr003e:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
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
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177280081itemList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1177280081itemList = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
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
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1641788370okButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1641788370okButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
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
         }
         addr007f:
      }
   }
}

