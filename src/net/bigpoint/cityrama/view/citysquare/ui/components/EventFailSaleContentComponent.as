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
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EventFailSaleContentComponent extends HGroup
   {
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1990131276cancelButton:MultistateButton;
      
      private var _292147534costGroup:HGroup;
      
      private var _288049369costLabel:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _934326481reward:RewardItemComponent;
      
      private var _2111053664xplanationLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RewardItemComponentVo;
      
      private var _price:Number = 0;
      
      private var _affordable:Boolean;
      
      private var _isDirty:Boolean;
      
      public function EventFailSaleContentComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  addr0047:
                  this.verticalAlign = "middle";
                  if(!(_loc2_ && _loc1_))
                  {
                     this.horizontalAlign = "center";
                     if(_loc1_ || Boolean(this))
                     {
                        this.percentWidth = 100;
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr0088);
                        }
                        §§goto(addr00a4);
                     }
                     addr0088:
                     this.percentHeight = 100;
                     if(_loc1_ || _loc1_)
                     {
                        this.gap = 0;
                        if(!_loc2_)
                        {
                           this.maxWidth = 480;
                           addr00a4:
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00c2);
                           }
                           §§goto(addr00d8);
                        }
                        addr00c2:
                        this.mxmlContent = [this._EventFailSaleContentComponent_HGroup2_c(),this._EventFailSaleContentComponent_VGroup1_c()];
                        if(!_loc2_)
                        {
                           addr00d8:
                           this.addEventListener("creationComplete",this.___EventFailSaleContentComponent_HGroup1_creationComplete);
                        }
                     }
                     §§goto(addr00e4);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr00c2);
            }
            §§goto(addr0047);
         }
         addr00e4:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr003a:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._data));
               if(!_loc2_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc1_ || _loc2_)
                        {
                           addr0053:
                           §§push(this._isDirty);
                           if(_loc1_)
                           {
                              addr0052:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this._isDirty = false;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.acceptButton);
                                    if(_loc1_)
                                    {
                                       §§push(this._affordable);
                                       if(_loc1_)
                                       {
                                          §§pop().showSparkle = §§pop();
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr009a:
                                             §§push(this.acceptButton);
                                             if(!_loc2_)
                                             {
                                                §§push(this._affordable);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr00b4:
                                                   §§push(!§§pop());
                                                }
                                                §§pop().showPlus = §§pop();
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   this.acceptButton.priceToConfirm = this._price;
                                                   §§goto(addr00c9);
                                                }
                                                §§goto(addr00e7);
                                             }
                                             §§goto(addr00c9);
                                          }
                                          §§goto(addr00fc);
                                       }
                                       §§goto(addr00b4);
                                    }
                                    addr00c9:
                                    §§goto(addr00c5);
                                 }
                                 addr00c5:
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr00e7:
                                    this.priceLabel.text = LocaUtils.getThousendSeperatedNumber(this._price);
                                    if(!_loc2_)
                                    {
                                       addr00fc:
                                       this.reward.data = this._data;
                                    }
                                 }
                                 §§goto(addr0106);
                              }
                           }
                        }
                        addr0106:
                        return;
                     }
                  }
                  §§goto(addr0053);
               }
               §§goto(addr0052);
            }
            §§goto(addr00e7);
         }
         §§goto(addr009a);
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.headerLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.header.sale");
            if(_loc2_ || _loc3_)
            {
               §§push(this.acceptButton);
               if(_loc2_)
               {
                  §§push(LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.sale"));
                  if(_loc2_)
                  {
                     §§pop().label = §§pop();
                     if(_loc2_)
                     {
                        addr006f:
                        this.acceptButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.tooltip.sale");
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.cancelButton);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§push(LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.cancelSale"));
                              if(_loc2_ || Boolean(this))
                              {
                                 §§pop().label = §§pop();
                                 if(_loc2_)
                                 {
                                    addr00ce:
                                    this.cancelButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.tooltip.cancelSale");
                                    if(!_loc3_)
                                    {
                                       addr00e2:
                                       this.costLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.costs");
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr0101:
                                          this.xplanationLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.text.sale");
                                       }
                                    }
                                    addr0113:
                                    return;
                                    addr00c2:
                                    addr00be:
                                 }
                                 §§goto(addr0101);
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00be);
                        addr0063:
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0063);
            }
         }
         §§goto(addr0113);
      }
      
      private function onButtonClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.target == this.acceptButton)
            {
               if(!_loc2_)
               {
                  if(this.acceptButton.showPlus)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        dispatchEvent(new Event(CitySquareEventFailPopup.OPEN_TREASURY,true,true));
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     dispatchEvent(new Event(CitySquareEventFailPopup.BUY_REWARD,true,true));
                     if(_loc2_)
                     {
                     }
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(CitySquareEventFailPopup.CANCEL_BUY_REWARD,true,true));
            }
         }
      }
      
      public function setData(param1:RewardItemComponentVo, param2:Number, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            this._data = param1;
            if(!_loc5_)
            {
               this._price = param2;
               if(_loc4_ || Boolean(this))
               {
                  addr0047:
                  this._affordable = param3;
                  if(_loc4_)
                  {
                     this._isDirty = true;
                     if(_loc4_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      private function _EventFailSaleContentComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr004f:
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.paddingTop = 42;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._EventFailSaleContentComponent_Group1_c()];
                        if(_loc2_)
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a6:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a6);
                     }
                     addr00aa:
                     return _loc1_;
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00a6);
            }
         }
         §§goto(addr004f);
      }
      
      private function _EventFailSaleContentComponent_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._EventFailSaleContentComponent_RewardItemComponent1_i(),this._EventFailSaleContentComponent_BriskImageDynaLib1_c()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0057:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0057);
      }
      
      private function _EventFailSaleContentComponent_RewardItemComponent1_i() : RewardItemComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.showBottomPaper = false;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "reward";
               if(!_loc2_)
               {
                  addr0054:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0074);
                     }
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr0054);
         }
         addr0074:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr007d:
            this.reward = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               BindingManager.executeBindings(this,"reward",this.reward);
            }
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
               if(!_loc2_)
               {
                  addr0056:
                  _loc1_.left = -10;
                  if(_loc3_)
                  {
                     §§goto(addr0060);
                  }
               }
               §§goto(addr0076);
            }
            addr0060:
            _loc1_.top = -5;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0076:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _EventFailSaleContentComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.paddingTop = -5;
                  if(_loc2_ || Boolean(this))
                  {
                     addr005b:
                     _loc1_.gap = 6;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._EventFailSaleContentComponent_Group2_c(),this._EventFailSaleContentComponent_HGroup5_c(),this._EventFailSaleContentComponent_BriskImageDynaLib6_c(),this._EventFailSaleContentComponent_HGroup6_i(),this._EventFailSaleContentComponent_HGroup7_c()];
                        addr0065:
                        if(_loc2_)
                        {
                           §§goto(addr0099);
                        }
                        §§goto(addr00ad);
                     }
                  }
                  addr0099:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr00ad:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00ad);
            }
            §§goto(addr0065);
         }
         §§goto(addr005b);
      }
      
      private function _EventFailSaleContentComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._EventFailSaleContentComponent_HGroup3_c(),this._EventFailSaleContentComponent_HGroup4_c(),this._EventFailSaleContentComponent_BriskImageDynaLib5_c()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr009a:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr009a);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      private function _EventFailSaleContentComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     addr004e:
                     if(_loc2_)
                     {
                        addr0064:
                        _loc1_.horizontalCenter = 0;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr00d1);
                     }
                     addr0076:
                     _loc1_.height = 40;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.minWidth = 240;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._EventFailSaleContentComponent_BriskImageDynaLib2_c(),this._EventFailSaleContentComponent_BriskImageDynaLib3_c(),this._EventFailSaleContentComponent_BriskImageDynaLib4_c()];
                           addr0094:
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00d1:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr0064);
               }
               addr00d5:
               return _loc1_;
            }
            §§goto(addr004e);
         }
         §§goto(addr0094);
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc3_)
               {
                  addr0059:
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr0077);
               }
               addr006b:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0077:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0077);
         }
         §§goto(addr0059);
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr008e);
               }
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  §§goto(addr004d);
               }
               §§goto(addr0080);
            }
            addr004d:
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0080:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0084);
         }
         addr0084:
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 80;
            if(!_loc2_)
            {
               _loc1_.height = 40;
               if(!_loc2_)
               {
                  addr003a:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.horizontalCenter = 0;
                        if(_loc3_ || _loc3_)
                        {
                           addr008a:
                           _loc1_.mxmlContent = [this._EventFailSaleContentComponent_LocaLabel1_i()];
                           if(_loc3_)
                           {
                              addr009a:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00ae:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr008a);
            }
            §§goto(addr003a);
         }
         §§goto(addr009a);
      }
      
      private function _EventFailSaleContentComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "StatusBarStyle";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.id = "headerLabel";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0073:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007c:
                           this.headerLabel = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008e:
                              BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0073);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "sparkle_single_big";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.left = -10;
                  if(!_loc3_)
                  {
                     addr006c:
                     _loc1_.top = -15;
                     if(_loc2_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr006c);
            }
            §§goto(addr0076);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup5_c() : HGroup
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
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0052:
                  _loc1_.height = 60;
                  if(!_loc2_)
                  {
                     _loc1_.maxHeight = 60;
                     if(!_loc2_)
                     {
                        addr0067:
                        _loc1_.percentWidth = 100;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0085:
                           _loc1_.mxmlContent = [this._EventFailSaleContentComponent_LocaLabel2_i()];
                           if(_loc3_)
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr00a1);
                        }
                        addr0095:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00a1:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr00a1);
               }
               addr00a5:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr0067);
      }
      
      private function _EventFailSaleContentComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "avatarText";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.maxWidth = 220;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.maxDisplayedLines = 5;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr007e:
                        _loc1_.id = "xplanationLabel";
                        if(_loc2_)
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00b3:
                                    this.xplanationLabel = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"xplanationLabel",this.xplanationLabel);
                                    }
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00b3);
                  }
                  addr00ca:
                  return _loc1_;
               }
               §§goto(addr0089);
            }
            §§goto(addr00bd);
         }
         §§goto(addr007e);
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "head_line_long";
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0061);
               }
               §§goto(addr006d);
            }
         }
         addr0061:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr006d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup6_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._EventFailSaleContentComponent_LocaLabel3_i(),this._EventFailSaleContentComponent_BriskImageDynaLib7_c(),this._EventFailSaleContentComponent_LocaLabel4_i()];
                     if(_loc3_ || Boolean(this))
                     {
                        addr0079:
                        _loc1_.id = "costGroup";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008c:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr00bf);
                              }
                           }
                        }
                     }
                     addr00b5:
                     this.costGroup = _loc1_;
                     if(_loc3_)
                     {
                        addr00bf:
                        BindingManager.executeBindings(this,"costGroup",this.costGroup);
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0079);
            }
            addr00cc:
            return _loc1_;
         }
         §§goto(addr00b5);
      }
      
      private function _EventFailSaleContentComponent_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "avatarText";
            if(_loc2_)
            {
               _loc1_.id = "costLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr006d);
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr006d);
               }
            }
            §§goto(addr0064);
         }
         addr006d:
         this.costLabel = _loc1_;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr007f:
            BindingManager.executeBindings(this,"costLabel",this.costLabel);
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "rc_icon_small";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _EventFailSaleContentComponent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "avatarText";
            if(!(_loc3_ && _loc2_))
            {
               addr0046:
               _loc1_.id = "priceLabel";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr006f);
                     }
                  }
                  §§goto(addr0080);
               }
            }
            addr006f:
            _loc1_.document = this;
            if(_loc2_ || _loc2_)
            {
               addr0080:
               this.priceLabel = _loc1_;
               if(!_loc3_)
               {
                  BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _EventFailSaleContentComponent_HGroup7_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.gap = 20;
               if(!_loc2_)
               {
                  §§goto(addr004d);
               }
               §§goto(addr00a0);
            }
            addr004d:
            _loc1_.paddingLeft = 5;
            if(!_loc2_)
            {
               _loc1_.paddingRight = 5;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0076:
                  _loc1_.mxmlContent = [this._EventFailSaleContentComponent_MultistateButton1_i(),this._EventFailSaleContentComponent_MultistateButton2_i()];
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00a0:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00a0);
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr0076);
      }
      
      private function _EventFailSaleContentComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "abort";
               if(!_loc3_)
               {
                  _loc1_.addEventListener("click",this.__cancelButton_click);
                  if(_loc2_ || _loc3_)
                  {
                     addr0065:
                     _loc1_.id = "cancelButton";
                     if(_loc2_ || _loc3_)
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr0090);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0065);
            }
            addr0090:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr0099:
               this.cancelButton = _loc1_;
               if(!_loc3_)
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"cancelButton",this.cancelButton);
               }
            }
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      public function __cancelButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.onButtonClick(param1);
         }
      }
      
      private function _EventFailSaleContentComponent_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.styleName = "confirm";
               if(!_loc2_)
               {
                  _loc1_.useConfirmation = true;
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__acceptButton_click);
                     if(_loc3_)
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr006d);
            }
            §§goto(addr008d);
         }
         addr005a:
         _loc1_.id = "acceptButton";
         if(_loc3_ || _loc3_)
         {
            addr006d:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr008d:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr0096:
                     this.acceptButton = _loc1_;
                     if(_loc3_)
                     {
                        BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                     }
                  }
                  §§goto(addr00ad);
               }
            }
            §§goto(addr0096);
         }
         addr00ad:
         return _loc1_;
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onButtonClick(param1);
         }
      }
      
      public function ___EventFailSaleContentComponent_HGroup1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1480909402acceptButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr007c);
            }
         }
         addr008b:
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelButton() : MultistateButton
      {
         return this._1990131276cancelButton;
      }
      
      public function set cancelButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1990131276cancelButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1990131276cancelButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get costGroup() : HGroup
      {
         return this._292147534costGroup;
      }
      
      public function set costGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._292147534costGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._292147534costGroup = param1;
                  if(!_loc4_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get costLabel() : LocaLabel
      {
         return this._288049369costLabel;
      }
      
      public function set costLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._288049369costLabel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._288049369costLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0069);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1166031975headerLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1481293013priceLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0040:
                  this._1481293013priceLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
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
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._934326481reward = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
         }
         addr0076:
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2111053664xplanationLabel = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xplanationLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
   }
}

