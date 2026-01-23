package net.bigpoint.cityrama.view.upselling.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingNotificationLayerVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class UpsellNotificationMinilayer extends MediumLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkles":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "titleDisplay":false,
            "characterImage":false
         };
      }
      
      private var _473928780buttonCancel:MultistateButton;
      
      private var _1108005746buttonOK:MultistateButton;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1638751296iconGfx:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _143560184offerLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpsellingNotificationLayerVo;
      
      private var _dataDirty:Boolean;
      
      public function UpsellNotificationMinilayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.styleName = "upsellOffer";
                  if(_loc2_ || _loc1_)
                  {
                     addr006f:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpsellNotificationMinilayer_Array1_c);
                     if(!_loc1_)
                     {
                        addr0084:
                        this.addEventListener("creationComplete",this.___UpsellNotificationMinilayer_MediumLayerWindow1_creationComplete);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0084);
               }
            }
            addr0090:
            return;
         }
         §§goto(addr006f);
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
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr003f);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr003f:
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            title = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.title.capital");
            if(!(_loc2_ && Boolean(param1)))
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.text");
               if(_loc3_ || Boolean(this))
               {
                  addr0067:
                  §§push(this.buttonOK);
                  if(_loc3_)
                  {
                     §§push(LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonOK.capital"));
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().label = §§pop();
                        if(_loc3_)
                        {
                           addr00b0:
                           this.buttonOK.toolTip = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonOK.tooltip");
                           addr0095:
                           addr0091:
                           if(!_loc2_)
                           {
                              §§push(this.buttonCancel);
                              if(!_loc2_)
                              {
                                 §§push(LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonCancel.capital"));
                                 if(_loc3_)
                                 {
                                    §§pop().label = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr00e9:
                                       this.buttonCancel.toolTip = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonCancel.tooltip");
                                       addr00dd:
                                       addr00d9:
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr00dd);
                           }
                           §§goto(addr00d9);
                        }
                        addr00eb:
                        return;
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0091);
            }
         }
         §§goto(addr0067);
      }
      
      public function set data(param1:UpsellingNotificationLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc2_ || _loc3_)
               {
                  this._data = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr0069:
                     this._dataDirty = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0069);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:int = 0;
         if(_loc2_ || _loc2_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               if(this._dataDirty)
               {
                  if(_loc2_)
                  {
                     this._dataDirty = false;
                     if(!_loc3_)
                     {
                        addr004b:
                        §§push(this.itemGfx);
                        §§push("rebuyPack_");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + this._data.packConfig.gfxId);
                           if(!_loc3_)
                           {
                              addr0072:
                              §§push(§§pop() + "_big");
                           }
                           §§pop().dynaBmpSourceName = §§pop();
                           if(!_loc3_)
                           {
                              this.offerLabel.text = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.offer",[this._data.amount,this._data.price.toString() + this._data.currency]);
                              if(!_loc3_)
                              {
                                 _loc1_ = this._data.currentUpsell.discount * 100;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00d6:
                                    §§push(this.iconGfx);
                                    §§push("upsell_big_");
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(§§pop() + _loc1_);
                                    }
                                    §§pop().dynaBmpSourceName = §§pop();
                                 }
                              }
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr0072);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr004b);
               }
            }
            addr00ef:
            return;
         }
         §§goto(addr004b);
      }
      
      private function buttonOK_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event(Event.OPEN));
         }
      }
      
      private function buttonCancel_clickHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            dispatchEvent(new Event(Event.CANCEL));
         }
      }
      
      private function _UpsellNotificationMinilayer_Array1_c() : Array
      {
         return [this._UpsellNotificationMinilayer_VGroup1_c()];
      }
      
      private function _UpsellNotificationMinilayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr009f);
               }
            }
            §§goto(addr0066);
         }
         addr005c:
         _loc1_.top = 20;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_LocaLabel1_i(),this._UpsellNotificationMinilayer_Group1_c(),this._UpsellNotificationMinilayer_HGroup1_c(),this._UpsellNotificationMinilayer_HGroup2_c()];
            addr0066:
            if(_loc3_ || _loc2_)
            {
               addr009f:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00ab:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "flavorText";
            if(_loc3_)
            {
               _loc1_.maxWidth = 400;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "flavourLabel";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0091:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a2:
                                 this.flavourLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00ac:
                                    BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                                 }
                                 §§goto(addr00b9);
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00ac);
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr0091);
      }
      
      private function _UpsellNotificationMinilayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_BriskImageDynaLib1_c(),this._UpsellNotificationMinilayer_VGroup2_c(),this._UpsellNotificationMinilayer_VGroup3_c(),this._UpsellNotificationMinilayer_BriskImageDynaLib4_i()];
            if(!_loc3_)
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
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layerGlow";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = -15;
                  addr004b:
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0074);
               }
               addr0069:
               _loc1_.bottom = -20;
               if(!_loc2_)
               {
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0080:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr004b);
      }
      
      private function _UpsellNotificationMinilayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        addr0070:
                        _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_BriskImageDynaLib2_c()];
                        if(_loc2_)
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0080);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr006f:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006f);
      }
      
      private function _UpsellNotificationMinilayer_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0068:
                        _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_BriskImageDynaLib3_i()];
                        if(_loc3_)
                        {
                           §§goto(addr0078);
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               addr0078:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0084:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0068);
      }
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "itemGfx";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0081:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0092:
                              this.itemGfx = _loc1_;
                              if(_loc2_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
                              }
                           }
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0092);
                  }
                  addr00a9:
                  return _loc1_;
               }
               §§goto(addr0092);
            }
            §§goto(addr009c);
         }
         §§goto(addr0081);
      }
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.top = 0;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     addr004c:
                     _loc1_.id = "iconGfx";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0087:
                                 this.iconGfx = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr0099:
                                    BindingManager.executeBindings(this,"iconGfx",this.iconGfx);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr004c);
         }
         §§goto(addr0099);
      }
      
      private function _UpsellNotificationMinilayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_LocaLabel2_i()];
                  if(_loc2_ || _loc3_)
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0089:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr0089);
      }
      
      private function _UpsellNotificationMinilayer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "priceTreasury";
            if(_loc3_ || _loc2_)
            {
               _loc1_.maxWidth = 400;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     addr005f:
                     _loc1_.id = "offerLabel";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008b:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0094:
                                 this.offerLabel = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr009e:
                                    BindingManager.executeBindings(this,"offerLabel",this.offerLabel);
                                 }
                              }
                              §§goto(addr00ab);
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr005f);
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _UpsellNotificationMinilayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_MultistateButton1_i(),this._UpsellNotificationMinilayer_MultistateButton2_i()];
            if(!_loc3_)
            {
               addr005a:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _UpsellNotificationMinilayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.styleName = "confirm";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 120;
               if(!_loc2_)
               {
                  _loc1_.addEventListener("click",this.__buttonOK_click);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0066:
                     _loc1_.id = "buttonOK";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0092);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0066);
            }
            addr0092:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr009b:
               this.buttonOK = _loc1_;
               if(!_loc2_)
               {
                  addr00a5:
                  BindingManager.executeBindings(this,"buttonOK",this.buttonOK);
               }
            }
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      public function __buttonOK_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.buttonOK_clickHandler(param1);
         }
      }
      
      private function _UpsellNotificationMinilayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.styleName = "abort";
            if(_loc3_)
            {
               _loc1_.width = 120;
               if(!_loc2_)
               {
                  _loc1_.addEventListener("click",this.__buttonCancel_click);
                  if(!_loc2_)
                  {
                     _loc1_.id = "buttonCancel";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0086:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr008f:
                                 this.buttonCancel = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0099:
                                    BindingManager.executeBindings(this,"buttonCancel",this.buttonCancel);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0064);
            }
            §§goto(addr008f);
         }
         addr00a6:
         return _loc1_;
      }
      
      public function __buttonCancel_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.buttonCancel_clickHandler(param1);
         }
      }
      
      public function ___UpsellNotificationMinilayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonCancel() : MultistateButton
      {
         return this._473928780buttonCancel;
      }
      
      public function set buttonCancel(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._473928780buttonCancel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._473928780buttonCancel = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonCancel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonOK() : MultistateButton
      {
         return this._1108005746buttonOK;
      }
      
      public function set buttonOK(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1108005746buttonOK;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1108005746buttonOK = param1;
                  if(!_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonOK",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0059);
            }
         }
         addr0077:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._949820541flavourLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
            addr007d:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGfx() : BriskImageDynaLib
      {
         return this._1638751296iconGfx;
      }
      
      public function set iconGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1638751296iconGfx;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1638751296iconGfx = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007f);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr007f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGfx",_loc2_,param1));
                  }
               }
               §§goto(addr008e);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2116181862itemGfx;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2116181862itemGfx = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get offerLabel() : LocaLabel
      {
         return this._143560184offerLabel;
      }
      
      public function set offerLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._143560184offerLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._143560184offerLabel = param1;
                  addr003d:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offerLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr003d);
      }
   }
}

