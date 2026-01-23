package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EventFailNoSaleContentComponent extends HGroup
   {
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1984686051layerButton:MultistateButton;
      
      private var _934326481reward:RewardItemComponent;
      
      private var _2111053664xplanationLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RewardItemComponentVo;
      
      private var _isDirty:Boolean;
      
      public function EventFailNoSaleContentComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     addr003a:
                     this.horizontalAlign = "center";
                     if(_loc1_ || _loc1_)
                     {
                        this.percentWidth = 100;
                        §§goto(addr004c);
                     }
                     §§goto(addr0068);
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr003a);
         }
         addr004c:
         if(_loc1_ || _loc2_)
         {
            addr0068:
            this.percentHeight = 100;
            if(_loc1_)
            {
               this.gap = 0;
               if(_loc1_ || _loc2_)
               {
                  addr0084:
                  this.maxWidth = 480;
                  if(_loc1_ || Boolean(this))
                  {
                     addr00a2:
                     this.mxmlContent = [this._EventFailNoSaleContentComponent_HGroup2_c(),this._EventFailNoSaleContentComponent_VGroup1_c()];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00c0:
                        this.addEventListener("creationComplete",this.___EventFailNoSaleContentComponent_HGroup1_creationComplete);
                     }
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00a2);
            }
            §§goto(addr00c0);
         }
         addr00cc:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr004f);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr004f:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(Boolean(this._data));
               if(_loc1_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr003b:
                        §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0064);
                  }
                  addr006f:
                  addr0053:
                  §§push(this._isDirty);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0064:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        this._isDirty = false;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0092:
                           this.reward.data = this._data;
                        }
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr003b);
            }
            addr009c:
            return;
         }
         §§goto(addr0053);
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.headerLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.header.noSale");
            if(_loc3_ || Boolean(param1))
            {
               §§push(this.layerButton);
               if(_loc3_ || Boolean(param1))
               {
                  §§push(LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.noSale"));
                  if(!_loc2_)
                  {
                     §§pop().label = §§pop();
                     if(_loc3_)
                     {
                        §§goto(addr0089);
                     }
                     §§goto(addr0090);
                  }
                  addr0089:
                  this.layerButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.tooltip.noSale");
                  §§goto(addr007d);
               }
               addr007d:
               §§goto(addr0079);
            }
            addr0079:
            if(!_loc2_)
            {
               addr0090:
               this.xplanationLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.text.noSale");
            }
            §§goto(addr00a2);
         }
         addr00a2:
      }
      
      private function onButtonClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event(CitySquareEventFailPopup.CANCEL_BUY_REWARD,true,true));
         }
      }
      
      public function set data(param1:RewardItemComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  this._data = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     this._isDirty = true;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr005d:
                        this.commitProperties();
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr005d);
               }
            }
            addr0063:
            return;
         }
         §§goto(addr005d);
      }
      
      private function _EventFailNoSaleContentComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.paddingTop = 42;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0072:
                        _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_Group1_c()];
                        if(_loc3_)
                        {
                           §§goto(addr0082);
                        }
                        §§goto(addr0096);
                     }
                  }
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0096:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0096);
            }
         }
         §§goto(addr0072);
      }
      
      private function _EventFailNoSaleContentComponent_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_RewardItemComponent1_i(),this._EventFailNoSaleContentComponent_BriskImageDynaLib1_c()];
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0073:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0073);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_RewardItemComponent1_i() : RewardItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.showBottomPaper = false;
            if(!_loc3_)
            {
               _loc1_.id = "reward";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0075:
                           this.reward = _loc1_;
                           if(!_loc3_)
                           {
                              addr007f:
                              BindingManager.executeBindings(this,"reward",this.reward);
                           }
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0075);
               }
               addr008c:
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr0075);
      }
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_demolish";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.left = -10;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0082);
            }
            addr0070:
            _loc1_.top = -5;
            if(!(_loc3_ && _loc2_))
            {
               addr0082:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr008e:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0092);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.paddingTop = -5;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_Group2_c(),this._EventFailNoSaleContentComponent_HGroup5_c(),this._EventFailNoSaleContentComponent_MultistateButton1_i()];
                     addr005c:
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr005c);
            }
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_HGroup3_c(),this._EventFailNoSaleContentComponent_HGroup4_c()];
                  if(_loc3_)
                  {
                     §§goto(addr006b);
                  }
               }
            }
            §§goto(addr007f);
         }
         addr006b:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc2_)
            {
               addr007f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr003c:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.horizontalCenter = 0;
                        if(_loc3_ || _loc2_)
                        {
                           addr007e:
                           _loc1_.height = 40;
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.minWidth = 240;
                              addr0090:
                              if(_loc3_)
                              {
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00c5);
                           }
                           addr00a9:
                           _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_BriskImageDynaLib2_c(),this._EventFailNoSaleContentComponent_BriskImageDynaLib3_c(),this._EventFailNoSaleContentComponent_BriskImageDynaLib4_c()];
                           if(_loc3_)
                           {
                              addr00c5:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00d1:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr00d1);
                     }
                     addr00d5:
                     return _loc1_;
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr007e);
            }
            §§goto(addr0090);
         }
         §§goto(addr003c);
      }
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0070);
               }
            }
            addr005c:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0070:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(_loc2_)
               {
                  addr0053:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr008e);
                  }
               }
               addr007a:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr008e:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr008e);
         }
         §§goto(addr0053);
      }
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc3_)
               {
                  addr0054:
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0072:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0072);
            }
            addr0076:
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _EventFailNoSaleContentComponent_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 80;
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0031);
            }
            §§goto(addr0058);
         }
         addr0031:
         _loc1_.height = 40;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               addr0058:
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr007f);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr007f);
            }
            §§goto(addr008f);
         }
         addr007f:
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_LocaLabel1_i()];
         if(!_loc3_)
         {
            addr008f:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "StatusBarStyle";
            if(!_loc3_)
            {
               _loc1_.id = "headerLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0068:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr0071);
                        }
                        §§goto(addr007b);
                     }
                  }
                  addr0071:
                  this.headerLabel = _loc1_;
                  if(!_loc3_)
                  {
                     addr007b:
                     BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                  }
               }
               §§goto(addr0088);
            }
            §§goto(addr0068);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.height = 105;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr008d);
               }
               addr0071:
               _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_LocaLabel2_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr008d:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0091);
            }
         }
         addr0091:
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "avatarText";
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr003a);
            }
            §§goto(addr0086);
         }
         addr003a:
         _loc1_.percentHeight = 100;
         if(!_loc3_)
         {
            _loc1_.maxWidth = 220;
            if(_loc2_)
            {
               §§goto(addr005c);
            }
            §§goto(addr0086);
         }
         addr005c:
         _loc1_.maxDisplayedLines = 5;
         if(!_loc3_)
         {
            _loc1_.id = "xplanationLabel";
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0086:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr00b4);
               }
               addr00a2:
               this.xplanationLabel = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr00b4:
                  BindingManager.executeBindings(this,"xplanationLabel",this.xplanationLabel);
               }
               §§goto(addr00c1);
            }
            §§goto(addr0086);
         }
         addr00c1:
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 207;
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__layerButton_click);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "layerButton";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0093:
                              this.layerButton = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a5:
                                 BindingManager.executeBindings(this,"layerButton",this.layerButton);
                              }
                           }
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00a5);
               }
            }
            addr00b2:
            return _loc1_;
         }
         §§goto(addr00a5);
      }
      
      public function __layerButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onButtonClick();
         }
      }
      
      public function ___EventFailNoSaleContentComponent_HGroup1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.creationCompleteHandler(param1);
         }
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
                  if(_loc3_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0041);
            }
            addr005f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get layerButton() : MultistateButton
      {
         return this._1984686051layerButton;
      }
      
      public function set layerButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1984686051layerButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1984686051layerButton = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get reward() : RewardItemComponent
      {
         return this._934326481reward;
      }
      
      public function set reward(param1:RewardItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._934326481reward;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._934326481reward = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xplanationLabel() : LocaLabel
      {
         return this._2111053664xplanationLabel;
      }
      
      public function set xplanationLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2111053664xplanationLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._2111053664xplanationLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0074);
               }
               addr0064:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xplanationLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0064);
      }
   }
}

