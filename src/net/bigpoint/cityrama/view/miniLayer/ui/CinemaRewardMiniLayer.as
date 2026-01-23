package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaRewardMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CinemaRewardMiniLayer extends MiniLayerWindow
   {
      
      public static const EVENT_WATCH_MORE:String = "EVENT_WATCH_MORE";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         EVENT_WATCH_MORE = "EVENT_WATCH_MORE";
         if(_loc2_)
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
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _1641788370okButton:MultistateButton;
      
      private var _1101149125rewardItemComponent:RewardItemComponent;
      
      private var _1893598809stepBar:StepMarkerBarComponent;
      
      private var _1076356374watchMoreButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaRewardMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaRewardMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr001d:
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.width = 540;
                  §§goto(addr0037);
               }
               §§goto(addr0054);
            }
            addr0037:
            if(_loc1_ || Boolean(this))
            {
               addr0054:
               this.height = 313;
               if(_loc1_)
               {
                  this.showSparkle = false;
                  if(!(_loc2_ && _loc1_))
                  {
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CinemaRewardMiniLayer_Array1_c);
                     if(_loc1_ || _loc2_)
                     {
                        addr0098:
                        this.addEventListener("creationComplete",this.___CinemaRewardMiniLayer_MiniLayerWindow1_creationComplete);
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0098);
            }
            addr00a4:
            return;
         }
         §§goto(addr001d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
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
            return;
         }
         §§goto(addr0050);
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
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            title = LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.title.capital");
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._data));
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr005f);
                        }
                        §§goto(addr0068);
                     }
                  }
               }
               addr005f:
               §§push(this._isDirty);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr0068:
                     this._isDirty = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        this.flavourText.text = this._data.flavourText;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0094:
                           §§push(this.okButton);
                           if(_loc3_)
                           {
                              §§pop().label = this._data.okButtonLabel;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00c5:
                                 this.okButton.toolTip = closeButton.toolTip;
                                 addr00c1:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(this.watchMoreButton);
                                    if(_loc3_)
                                    {
                                       §§push(this._data);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop().watchMoreButtonLabel);
                                          if(!_loc2_)
                                          {
                                             §§pop().label = §§pop();
                                             if(_loc3_)
                                             {
                                                §§push(this.watchMoreButton);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr0115:
                                                   §§pop().toolTip = this._data.watchMoreButtonTooltip;
                                                   addr0111:
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr0128);
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                addr0128:
                                                this.watchMoreButton.includeInLayout = this.watchMoreButton.visible = this._data.watchMoreButtonIncludeInLayout;
                                                §§goto(addr0124);
                                             }
                                             addr0124:
                                             if(!_loc2_)
                                             {
                                                addr0142:
                                                this.headerLabel.text = this._data.headerText;
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr0168:
                                                   this.mainText.text = this._data.layerText;
                                                   if(_loc3_)
                                                   {
                                                      addr017a:
                                                      this.rewardItemComponent.data = this._data.rewardData;
                                                      if(!_loc2_)
                                                      {
                                                         this.stepBar.data = this._data.stepBarData;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr019a);
                                          }
                                          §§goto(addr0115);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0128);
                                 }
                                 §§goto(addr0142);
                              }
                              §§goto(addr0168);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr017a);
               }
               addr019a:
               return;
            }
            §§goto(addr0068);
         }
         §§goto(addr0168);
      }
      
      public function set data(param1:CinemaRewardMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc2_)
               {
                  addr0042:
                  this._data = param1;
                  if(!_loc2_)
                  {
                     addr004c:
                     this._isDirty = true;
                     if(_loc3_ || Boolean(this))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr004c);
            }
            addr0063:
            return;
         }
         §§goto(addr0042);
      }
      
      private function handleOKClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            dispatchEvent(new Event(Event.CLOSE,true,true));
            if(_loc3_ || _loc2_)
            {
               this.okButton.enabled = false;
            }
         }
      }
      
      private function handleWatchMore(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event(EVENT_WATCH_MORE,true,true));
            if(!(_loc3_ && _loc3_))
            {
               this.watchMoreButton.enabled = false;
            }
         }
      }
      
      private function _CinemaRewardMiniLayer_Array1_c() : Array
      {
         return [this._CinemaRewardMiniLayer_VGroup1_c(),this._CinemaRewardMiniLayer_BriskImageDynaLib2_c()];
      }
      
      private function _CinemaRewardMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.paddingBottom = 25;
                     if(!_loc3_)
                     {
                        _loc1_.gap = -10;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_HGroup1_c(),this._CinemaRewardMiniLayer_Group1_c(),this._CinemaRewardMiniLayer_HGroup2_c(),this._CinemaRewardMiniLayer_HGroup5_c()];
                           addr007f:
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr00b5);
                           }
                           §§goto(addr00c9);
                        }
                        addr00b5:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00c9:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr007f);
               }
               addr00cd:
               return _loc1_;
            }
            §§goto(addr00b5);
         }
         §§goto(addr007f);
      }
      
      private function _CinemaRewardMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.height = 40;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  addr0035:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0054:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_LocaLabel1_i()];
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0054);
            }
            addr0082:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0096:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _CinemaRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 80;
            if(_loc3_ || _loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!(_loc2_ && _loc3_))
               {
                  addr0043:
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr009d:
                                 this.flavourText = _loc1_;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00af:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr00bc);
                           }
                        }
                        §§goto(addr009d);
                     }
                     addr00bc:
                     return _loc1_;
                  }
                  §§goto(addr0074);
               }
               §§goto(addr00af);
            }
            §§goto(addr0043);
         }
         §§goto(addr00af);
      }
      
      private function _CinemaRewardMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 20;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004a:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004a);
      }
      
      private function _CinemaRewardMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 90;
            if(_loc3_ || _loc2_)
            {
               addr003a:
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "right";
                     if(_loc3_)
                     {
                        _loc1_.gap = 20;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008b:
                           _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_RewardItemComponent1_i(),this._CinemaRewardMiniLayer_Group2_c()];
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a9:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00b5:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00b5);
                     }
                     addr00b9:
                     return _loc1_;
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00b5);
            }
            §§goto(addr00a9);
         }
         §§goto(addr003a);
      }
      
      private function _CinemaRewardMiniLayer_RewardItemComponent1_i() : RewardItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         if(_loc2_)
         {
            _loc1_.id = "rewardItemComponent";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0069);
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0069);
            }
            §§goto(addr0073);
         }
         addr0069:
         this.rewardItemComponent = _loc1_;
         if(_loc2_)
         {
            addr0073:
            BindingManager.executeBindings(this,"rewardItemComponent",this.rewardItemComponent);
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 140;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 257;
               addr0031:
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     addr0065:
                     _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_BriskImageDynaLib1_c(),this._CinemaRewardMiniLayer_VGroup2_c()];
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr008f);
                  }
                  addr0083:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008f:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr008f);
            }
            §§goto(addr0065);
         }
         §§goto(addr0031);
      }
      
      private function _CinemaRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_FriendBook";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.dynaBmpSourceName = "quadrillepaper_small";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "top";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.top = 10;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc3_)
                        {
                           §§goto(addr006e);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr00c8);
            }
            addr006e:
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_Group3_c(),this._CinemaRewardMiniLayer_Group4_c(),this._CinemaRewardMiniLayer_LocaLabel3_i(),this._CinemaRewardMiniLayer_Group5_c(),this._CinemaRewardMiniLayer_HGroup4_c()];
               addr0080:
               if(_loc3_)
               {
                  addr00b4:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00c8:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _CinemaRewardMiniLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               _loc1_.height = 34;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0055);
               }
               §§goto(addr007f);
            }
            addr0055:
            _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_BlueBarComponent1_c(),this._CinemaRewardMiniLayer_HGroup3_c()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0083);
         }
         addr0083:
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr003f:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr0055);
            }
            addr0049:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0055:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _CinemaRewardMiniLayer_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 90;
                  if(_loc3_ || _loc3_)
                  {
                     addr0057:
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        _loc1_.horizontalCenter = 0;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_LocaLabel2_i()];
                           if(!_loc2_)
                           {
                              addr0086:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr009a:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr0086);
                  }
                  addr009e:
                  return _loc1_;
               }
               §§goto(addr009a);
            }
            §§goto(addr0057);
         }
         §§goto(addr009a);
      }
      
      private function _CinemaRewardMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "fieldInfoHeader";
            if(_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.id = "headerLabel";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr008f);
                              }
                              §§goto(addr00a1);
                           }
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr00a1);
                  }
                  addr008f:
                  this.headerLabel = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr00a1:
                     BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                  }
                  §§goto(addr00ae);
               }
            }
            §§goto(addr0070);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 2;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr004f:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _CinemaRewardMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 90;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_)
                  {
                     _loc1_.id = "mainText";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0090:
                                 this.mainText = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"mainText",this.mainText);
                                 }
                              }
                              §§goto(addr00af);
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr0090);
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr0090);
         }
         §§goto(addr00a2);
      }
      
      private function _CinemaRewardMiniLayer_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 1;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0061:
                  _loc1_.horizontalAlign = "left";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_StepMarkerBarComponent1_i()];
                     if(_loc3_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007c);
               }
            }
            §§goto(addr0088);
         }
         §§goto(addr0061);
      }
      
      private function _CinemaRewardMiniLayer_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         if(_loc3_)
         {
            _loc1_.addMouseListener = false;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  _loc1_.scaleX = 0.5;
                  if(!_loc2_)
                  {
                     _loc1_.scaleY = 0.5;
                     if(_loc3_)
                     {
                        _loc1_.id = "stepBar";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr007a:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr0098:
                                    this.stepBar = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00aa:
                                       BindingManager.executeBindings(this,"stepBar",this.stepBar);
                                    }
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00b7);
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0098);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _CinemaRewardMiniLayer_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 2;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_MultistateButton1_i(),this._CinemaRewardMiniLayer_MultistateButton2_i()];
               addr003f:
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr007b);
            }
            addr0067:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr007b:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _CinemaRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "confirm";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 204;
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0052);
               }
               §§goto(addr0062);
            }
            addr0052:
            _loc1_.addEventListener("click",this.__okButton_click);
            if(_loc3_)
            {
               addr0062:
               _loc1_.id = "okButton";
               if(!_loc2_)
               {
                  addr0078:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0084);
                     }
                  }
                  §§goto(addr008d);
               }
            }
            addr0084:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr008d:
               this.okButton = _loc1_;
               if(!_loc2_)
               {
                  BindingManager.executeBindings(this,"okButton",this.okButton);
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      public function __okButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleOKClick(param1);
         }
      }
      
      private function _CinemaRewardMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 204;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.addEventListener("click",this.__watchMoreButton_click);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "watchMoreButton";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0096:
                              this.watchMoreButton = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a8:
                                 BindingManager.executeBindings(this,"watchMoreButton",this.watchMoreButton);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0096);
                  }
                  addr00b5:
                  return _loc1_;
               }
            }
            §§goto(addr0096);
         }
         §§goto(addr006c);
      }
      
      public function __watchMoreButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handleWatchMore(param1);
         }
      }
      
      private function _CinemaRewardMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.left = 9;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.top = -66;
                     if(_loc2_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0090:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0090);
                  }
               }
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      public function ___CinemaRewardMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleCreationComplete();
         }
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006d);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
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
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1166031975headerLabel = param1;
                  addr0035:
                  if(!_loc4_)
                  {
                     addr004b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr004b);
            }
            addr0072:
            return;
         }
         §§goto(addr0035);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._8439162mainText;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0047:
                  this._8439162mainText = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr0047);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1641788370okButton = param1;
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
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
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItemComponent() : RewardItemComponent
      {
         return this._1101149125rewardItemComponent;
      }
      
      public function set rewardItemComponent(param1:RewardItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1101149125rewardItemComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1101149125rewardItemComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepBar() : StepMarkerBarComponent
      {
         return this._1893598809stepBar;
      }
      
      public function set stepBar(param1:StepMarkerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1893598809stepBar;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1893598809stepBar = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0061);
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get watchMoreButton() : MultistateButton
      {
         return this._1076356374watchMoreButton;
      }
      
      public function set watchMoreButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1076356374watchMoreButton;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1076356374watchMoreButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"watchMoreButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
      }
   }
}

