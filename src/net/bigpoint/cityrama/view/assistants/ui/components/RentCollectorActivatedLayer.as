package net.bigpoint.cityrama.view.assistants.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorActivatedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class RentCollectorActivatedLayer extends MediumLayerWindow
   {
      
      public static const EVENT_MORE_OFFER:String = "EVENT_MORE_OFFER";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         EVENT_MORE_OFFER = "EVENT_MORE_OFFER";
         if(_loc1_ || _loc1_)
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
      }
      
      private var _1682553352bottomText:LocaLabel;
      
      private var _647795034collectorIcon:BriskImageDynaLib;
      
      private var _111871826offerButton:MultistateButton;
      
      private var _1727590177stackIcon:BriskImageDynaLib;
      
      private var _110364485timer:TimerBarComponent;
      
      private var _1139881950topText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RentCollectorActivatedVo;
      
      private var _dataDirty:Boolean;
      
      public function RentCollectorActivatedLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.showSparkles = true;
                  if(_loc1_)
                  {
                     addr004b:
                     this.styleName = "upsellOffer";
                     if(!_loc2_)
                     {
                        addr0056:
                        this.characterImageBmpName = "characterOffer";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           this.characterImageLibName = "gui_popups_paperPopup";
                           if(_loc1_ || Boolean(this))
                           {
                              addr0088:
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RentCollectorActivatedLayer_Array1_c);
                              if(_loc1_)
                              {
                                 addr009d:
                                 this.addEventListener("creationComplete",this.___RentCollectorActivatedLayer_MediumLayerWindow1_creationComplete);
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0088);
                  }
                  addr00a9:
                  return;
               }
               §§goto(addr004b);
            }
            §§goto(addr0056);
         }
         §§goto(addr004b);
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
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0047:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            title = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
            if(!(_loc3_ && _loc3_))
            {
               addr004a:
               §§push(this.offerButton);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.button.label"));
                  if(!_loc3_)
                  {
                     §§pop().label = §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0097:
                        this.offerButton.toolTip = LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.button.tooltip");
                        addr008b:
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr008b);
            }
            addr0099:
            return;
         }
         §§goto(addr004a);
      }
      
      public function set data(param1:RentCollectorActivatedVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc3_)
               {
                  addr0037:
                  this._data = param1;
                  if(!_loc3_)
                  {
                     this._dataDirty = true;
                     if(!_loc3_)
                     {
                        addr004b:
                        invalidateProperties();
                     }
                     §§goto(addr0050);
                  }
                  §§goto(addr004b);
               }
            }
            addr0050:
            return;
         }
         §§goto(addr0037);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.commitProperties();
            if(_loc3_)
            {
               §§push(this._data);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this._dataDirty);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr0070);
                                 }
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr0100);
                     }
                  }
                  addr0070:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this._dataDirty = false;
                        if(_loc3_ || Boolean(this))
                        {
                           this.topText.text = this._data.topText;
                           if(_loc3_ || _loc3_)
                           {
                              this.bottomText.text = this._data.bottomText;
                              if(!_loc2_)
                              {
                                 addr00c1:
                                 this.collectorIcon.briskDynaVo = this._data.collectorIcon;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00dc:
                                    var _temp_11:* = this.stackIcon;
                                    var _loc1_:*;
                                    this.stackIcon.visible = _loc1_ = this._data.stacked;
                                    _temp_11.includeInLayout = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00f9:
                                       addr0100:
                                       addr00fd:
                                       if(this._data.stacked)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr0109:
                                             §§push(this.timer);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(280);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§pop().width = §§pop();
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                   }
                                                   addr0168:
                                                   this.timer.data = this._data.timerVo;
                                                   addr0164:
                                                }
                                                else
                                                {
                                                   addr0155:
                                                   §§pop().width = §§pop();
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      §§goto(addr0164);
                                                   }
                                                }
                                                §§goto(addr0171);
                                             }
                                             §§goto(addr0168);
                                          }
                                          §§goto(addr0164);
                                       }
                                       else
                                       {
                                          §§push(this.timer);
                                          if(_loc3_)
                                          {
                                             §§goto(addr0155);
                                             §§push(180);
                                          }
                                       }
                                       §§goto(addr0168);
                                    }
                                    §§goto(addr0171);
                                 }
                                 §§goto(addr0164);
                              }
                              §§goto(addr0171);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00f9);
                  }
                  addr0171:
                  return;
               }
               §§goto(addr00fd);
            }
            §§goto(addr00c1);
         }
         §§goto(addr00f9);
      }
      
      private function handleOfferButtonClicked(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new Event(EVENT_MORE_OFFER,true,true));
         }
      }
      
      private function _RentCollectorActivatedLayer_Array1_c() : Array
      {
         return [this._RentCollectorActivatedLayer_BriskImageDynaLib1_c(),this._RentCollectorActivatedLayer_VGroup1_c()];
      }
      
      private function _RentCollectorActivatedLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layerGlow";
               if(_loc2_)
               {
                  addr003c:
                  _loc1_.height = 180;
                  if(_loc2_)
                  {
                     _loc1_.width = 230;
                     if(_loc2_)
                     {
                        _loc1_.maintainAspectRation = true;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0070:
                           _loc1_.horizontalCenter = 0;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr008e:
                              _loc1_.top = 40;
                              if(_loc2_)
                              {
                                 §§goto(addr0098);
                              }
                           }
                           §§goto(addr00ac);
                        }
                        addr0098:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00ac:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr008e);
            }
         }
         §§goto(addr003c);
      }
      
      private function _RentCollectorActivatedLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr006d);
            }
         }
         addr003b:
         _loc1_.horizontalAlign = "center";
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalAlign = "top";
            if(!_loc2_)
            {
               _loc1_.paddingTop = 6;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_VGroup2_c(),this._RentCollectorActivatedLayer_Group1_c(),this._RentCollectorActivatedLayer_VGroup3_c(),this._RentCollectorActivatedLayer_MultistateButton1_i()];
                  addr006d:
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr00a3);
                  }
                  §§goto(addr00b7);
               }
            }
            addr00a3:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr00b7:
                  _loc1_.document = this;
               }
            }
            §§goto(addr00bb);
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr0028:
               _loc1_.height = 40;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           addr0076:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr008a:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr008a);
                     }
                     addr008e:
                     return _loc1_;
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0076);
            }
            §§goto(addr008a);
         }
         §§goto(addr0028);
      }
      
      private function _RentCollectorActivatedLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 3;
            if(_loc2_)
            {
               addr0031:
               _loc1_.styleName = "flavourOfferLayer";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 80;
                  if(!_loc3_)
                  {
                     addr005a:
                     _loc1_.id = "topText";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr008f:
                                 this.topText = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"topText",this.topText);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00a1);
                           }
                           addr00ae:
                           return _loc1_;
                        }
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr00a1);
               }
            }
            §§goto(addr005a);
         }
         §§goto(addr0031);
      }
      
      private function _RentCollectorActivatedLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 180;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_BriskImageDynaLib2_i(),this._RentCollectorActivatedLayer_BriskImageDynaLib3_i(),this._RentCollectorActivatedLayer_TimerBarComponent1_i()];
               if(_loc3_)
               {
                  §§goto(addr005e);
               }
               §§goto(addr0072);
            }
            addr005e:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0076);
         }
         addr0076:
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "rentCollector_big_44";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr009d);
               }
            }
            addr005a:
            _loc1_.top = 16;
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "collectorIcon";
               if(!(_loc3_ && _loc2_))
               {
                  addr007f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr009d:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr00a6);
                        }
                     }
                     §§goto(addr00b0);
                  }
                  addr00a6:
                  this.collectorIcon = _loc1_;
                  if(_loc2_)
                  {
                     addr00b0:
                     BindingManager.executeBindings(this,"collectorIcon",this.collectorIcon);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr00b0);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _RentCollectorActivatedLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "icon_bigPlus";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004f:
                  _loc1_.left = 70;
                  if(_loc3_)
                  {
                     _loc1_.top = 6;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc3_)
                        {
                           addr0080:
                           _loc1_.visible = false;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0091);
                           }
                        }
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr0080);
            }
            addr0091:
            _loc1_.id = "stackIcon";
            if(!_loc2_)
            {
               addr009c:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00bb:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00cc:
                        this.stackIcon = _loc1_;
                        if(_loc3_)
                        {
                           BindingManager.executeBindings(this,"stackIcon",this.stackIcon);
                        }
                     }
                     §§goto(addr00e3);
                  }
               }
               §§goto(addr00cc);
            }
            addr00e3:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _RentCollectorActivatedLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.showBoostButton = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.bottom = 0;
               if(_loc3_ || Boolean(this))
               {
                  addr005d:
                  _loc1_.horizontalCenter = -12;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr006f:
                     _loc1_.id = "timer";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr008c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00a1:
                                 this.timer = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"timer",this.timer);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00ab);
                           }
                           addr00b8:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006f);
            }
            §§goto(addr005d);
         }
         §§goto(addr00ab);
      }
      
      private function _RentCollectorActivatedLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0046);
            }
            §§goto(addr0071);
         }
         addr0046:
         _loc1_.height = 40;
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  addr0071:
                  _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_LocaLabel2_i()];
                  if(!_loc3_)
                  {
                     §§goto(addr0081);
                  }
               }
               §§goto(addr008d);
            }
            §§goto(addr0071);
         }
         addr0081:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr008d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.maxDisplayedLines = 3;
            if(!_loc3_)
            {
               _loc1_.styleName = "flavourOfferLayer";
               if(!(_loc3_ && _loc2_))
               {
                  addr0047:
                  _loc1_.percentWidth = 85;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "bottomText";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0077:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr009f);
                              }
                              §§goto(addr00b1);
                           }
                        }
                     }
                     addr009f:
                     this.bottomText = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00b1:
                        BindingManager.executeBindings(this,"bottomText",this.bottomText);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0077);
            }
            §§goto(addr0047);
         }
         §§goto(addr00b1);
      }
      
      private function _RentCollectorActivatedLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 200;
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__offerButton_click);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "offerButton";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0090);
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
                  addr0090:
                  this.offerButton = _loc1_;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00a2:
                     BindingManager.executeBindings(this,"offerButton",this.offerButton);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00a2);
            }
         }
         addr00af:
         return _loc1_;
      }
      
      public function __offerButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleOfferButtonClicked(param1);
         }
      }
      
      public function ___RentCollectorActivatedLayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
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
      public function get bottomText() : LocaLabel
      {
         return this._1682553352bottomText;
      }
      
      public function set bottomText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1682553352bottomText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1682553352bottomText = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomText",_loc2_,param1));
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
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get collectorIcon() : BriskImageDynaLib
      {
         return this._647795034collectorIcon;
      }
      
      public function set collectorIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._647795034collectorIcon;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._647795034collectorIcon = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectorIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get offerButton() : MultistateButton
      {
         return this._111871826offerButton;
      }
      
      public function set offerButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._111871826offerButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._111871826offerButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offerButton",_loc2_,param1));
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
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get stackIcon() : BriskImageDynaLib
      {
         return this._1727590177stackIcon;
      }
      
      public function set stackIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1727590177stackIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1727590177stackIcon = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stackIcon",_loc2_,param1));
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
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110364485timer;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._110364485timer = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0066);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get topText() : LocaLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1139881950topText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1139881950topText = param1;
                  if(_loc4_)
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0051);
            }
         }
         addr0077:
      }
   }
}

