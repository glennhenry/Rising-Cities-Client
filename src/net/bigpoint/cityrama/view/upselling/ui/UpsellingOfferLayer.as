package net.bigpoint.cityrama.view.upselling.ui
{
   import com.greensock.TweenMax;
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
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingOfferLayerVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class UpsellingOfferLayer extends MediumLayerWindow
   {
      
      public static const SHOW_OFFER:String = "SHOW_OFFER";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || UpsellingOfferLayer)
      {
         SHOW_OFFER = "SHOW_OFFER";
         if(_loc2_ || UpsellingOfferLayer)
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
      
      private var _427674644detailsButton:MultistateButton;
      
      private var _150980045discountLabel:LocaLabel;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1638751296iconGfx:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _2131590956itemGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpsellingOfferLayerVo;
      
      private var _dataDirty:Boolean;
      
      public function UpsellingOfferLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.showSparkles = true;
                  if(_loc1_ || Boolean(this))
                  {
                     this.styleName = "upsellOffer";
                     if(!_loc2_)
                     {
                        addr0056:
                        this.characterImageBmpName = "characterOffer";
                        if(_loc1_ || _loc2_)
                        {
                           this.characterImageLibName = "gui_popups_paperPopup";
                           if(_loc1_ || _loc2_)
                           {
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpsellingOfferLayer_Array1_c);
                              if(_loc1_)
                              {
                                 addr009d:
                                 this.addEventListener("creationComplete",this.___UpsellingOfferLayer_MediumLayerWindow1_creationComplete);
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0056);
         }
         §§goto(addr009d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0044);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0044:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            title = LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.title.capital");
            if(_loc2_ || Boolean(this))
            {
               §§push(this.detailsButton);
               if(_loc2_ || Boolean(param1))
               {
                  §§push(LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.button.capital"));
                  if(!_loc3_)
                  {
                     §§pop().label = §§pop();
                     if(_loc2_)
                     {
                        addr008d:
                        this.detailsButton.toolTip = LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.button.tooltip");
                        addr0076:
                        addr0072:
                        if(_loc2_)
                        {
                           TweenMax.to(this.discountLabel,0,{"glowFilter":{
                              "color":16731136,
                              "alpha":1,
                              "blurX":4,
                              "blurY":4,
                              "strength":20
                           }});
                        }
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0076);
            }
            §§goto(addr0072);
         }
         addr00c1:
      }
      
      public function set data(param1:UpsellingOfferLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc3_)
               {
                  this._data = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0054:
                     this._dataDirty = true;
                     if(!_loc3_)
                     {
                        addr005e:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0054);
            }
            addr0063:
            return;
         }
         §§goto(addr005e);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:int = 0;
         if(_loc4_)
         {
            super.commitProperties();
            if(_loc4_ || Boolean(this))
            {
               if(this._dataDirty)
               {
                  if(!_loc3_)
                  {
                     this._dataDirty = false;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.itemGfx);
                        §§push("rebuyPack_");
                        if(_loc4_)
                        {
                           §§push(§§pop() + this._data.packConfig.gfxId);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + "_big");
                           }
                        }
                        §§pop().dynaBmpSourceName = §§pop();
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           §§push(this.flavourLabel);
                           §§push(LocaUtils);
                           §§push("rcl.booklayer.upsellingOffer");
                           §§push("rcl.booklayer.upsellingOffer.text.");
                           if(_loc4_)
                           {
                              §§push(§§pop() + this._data.locaID);
                           }
                           §§pop().text = §§pop().getString(§§pop(),§§pop());
                           if(_loc4_)
                           {
                              addr00a6:
                              §§push(this._data);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().currentUpsell);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().discount);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(0);
                                       if(!_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                addr00e6:
                                                this.itemGroup.visible = this.itemGroup.includeInLayout = false;
                                                if(_loc3_ && Boolean(this))
                                                {
                                                }
                                                addr0120:
                                                addr0127:
                                                addr0124:
                                                §§push(this._data.currentUpsell.discount);
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr0139:
                                                   addr0137:
                                                   §§push(§§pop() * 100);
                                                }
                                                _loc1_ = §§pop();
                                                if(_loc4_)
                                                {
                                                   addr014e:
                                                   §§push(this.discountLabel);
                                                   §§push("-");
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + _loc1_);
                                                      if(!_loc3_)
                                                      {
                                                         addr016a:
                                                         §§push(§§pop() + "%");
                                                      }
                                                      §§pop().text = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         addr0176:
                                                         this.iconGfx.dynaBmpSourceName = "upsell_big";
                                                      }
                                                      §§goto(addr0180);
                                                   }
                                                   §§goto(addr016a);
                                                }
                                                §§goto(addr0176);
                                             }
                                          }
                                          else
                                          {
                                             this.itemGroup.visible = this.itemGroup.includeInLayout = true;
                                             if(!_loc3_)
                                             {
                                                §§goto(addr0120);
                                             }
                                          }
                                          §§goto(addr014e);
                                       }
                                       §§goto(addr0139);
                                    }
                                    §§goto(addr0137);
                                 }
                                 §§goto(addr0127);
                              }
                              §§goto(addr0124);
                           }
                           §§goto(addr014e);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr014e);
                  }
                  §§goto(addr00a6);
               }
               addr0180:
               return;
            }
            §§goto(addr00e6);
         }
         §§goto(addr0120);
      }
      
      private function detailsButtonClickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new Event(SHOW_OFFER));
         }
      }
      
      private function _UpsellingOfferLayer_Array1_c() : Array
      {
         return [this._UpsellingOfferLayer_VGroup1_c()];
      }
      
      private function _UpsellingOfferLayer_VGroup1_c() : VGroup
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
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._UpsellingOfferLayer_Group1_c(),this._UpsellingOfferLayer_VGroup4_c(),this._UpsellingOfferLayer_HGroup2_c()];
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr0088);
                     }
                     §§goto(addr0094);
                  }
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
         addr0098:
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib1_c(),this._UpsellingOfferLayer_VGroup2_c(),this._UpsellingOfferLayer_VGroup3_c(),this._UpsellingOfferLayer_Group2_i()];
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "layerGlow";
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr004a);
               }
               §§goto(addr0056);
            }
            addr004a:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0056:
                  _loc1_.document = this;
               }
            }
            §§goto(addr005a);
         }
         addr005a:
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib2_c()];
                        if(!_loc3_)
                        {
                           addr008a:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr009e);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr009e);
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(_loc3_)
               {
                  §§goto(addr0060);
               }
               §§goto(addr0074);
            }
            addr0060:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0074:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0078);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  §§goto(addr0047);
               }
            }
            §§goto(addr0078);
         }
         addr0047:
         _loc1_.horizontalAlign = "center";
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc2_)
            {
               addr0078:
               _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib3_i()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr009c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr009c);
            }
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "";
               if(!_loc3_)
               {
                  _loc1_.id = "itemGfx";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007c:
                              this.itemGfx = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
                              }
                           }
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr007c);
            }
         }
         addr0093:
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.right = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib4_i(),this._UpsellingOfferLayer_HGroup1_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr006c:
                     _loc1_.id = "itemGroup";
                     if(_loc2_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0098);
                              }
                              §§goto(addr00a2);
                           }
                        }
                     }
                  }
                  addr0098:
                  this.itemGroup = _loc1_;
                  if(_loc2_)
                  {
                     addr00a2:
                     BindingManager.executeBindings(this,"itemGroup",this.itemGroup);
                  }
                  return _loc1_;
               }
               §§goto(addr00a2);
            }
            §§goto(addr0083);
         }
         §§goto(addr006c);
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               addr003f:
               _loc1_.id = "iconGfx";
               if(!_loc2_)
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr006c:
                           this.iconGfx = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"iconGfx",this.iconGfx);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr006c);
            }
            §§goto(addr0057);
         }
         §§goto(addr003f);
      }
      
      private function _UpsellingOfferLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(_loc3_ || Boolean(this))
               {
                  addr0044:
                  _loc1_.right = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.bottom = 0;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr0088);
                        }
                        §§goto(addr00a8);
                     }
                     addr0088:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00a8:
                        _loc1_.mxmlContent = [this._UpsellingOfferLayer_LocaLabel1_i()];
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00c0:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00cc:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr00cc);
                     }
                     addr00d0:
                     return _loc1_;
                  }
               }
               §§goto(addr00c0);
            }
            §§goto(addr00cc);
         }
         §§goto(addr0044);
      }
      
      private function _UpsellingOfferLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "whiteThirtyCenter";
            if(!_loc3_)
            {
               _loc1_.id = "discountLabel";
               if(_loc2_)
               {
                  addr004f:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr005b:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0064:
                           this.discountLabel = _loc1_;
                           if(!_loc3_)
                           {
                              addr006e:
                              BindingManager.executeBindings(this,"discountLabel",this.discountLabel);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0064);
               }
               §§goto(addr005b);
            }
            §§goto(addr004f);
         }
         §§goto(addr006e);
      }
      
      private function _UpsellingOfferLayer_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0064:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._UpsellingOfferLayer_LocaLabel2_i()];
                        if(_loc2_)
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr008e);
                        }
                     }
                     §§goto(addr008a);
                  }
                  addr008e:
                  return _loc1_;
               }
               §§goto(addr0064);
            }
            §§goto(addr007e);
         }
         §§goto(addr0064);
      }
      
      private function _UpsellingOfferLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.maxDisplayedLines = 3;
            if(_loc2_)
            {
               _loc1_.maxWidth = 400;
               if(_loc2_)
               {
                  _loc1_.styleName = "flavourOfferLayer";
                  if(_loc2_)
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr006b:
                        _loc1_.id = "flavourLabel";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr009f:
                                    this.flavourLabel = _loc1_;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00b1:
                                       BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr007e);
            }
         }
         §§goto(addr006b);
      }
      
      private function _UpsellingOfferLayer_HGroup2_c() : HGroup
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
               _loc1_.horizontalAlign = "center";
               §§goto(addr0029);
            }
            §§goto(addr0082);
         }
         addr0029:
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._UpsellingOfferLayer_MultistateButton1_i()];
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0082:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0082);
         }
         addr0086:
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.styleName = "confirm";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 200;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.addEventListener("click",this.__detailsButton_click);
                  if(_loc3_)
                  {
                     addr0064:
                     _loc1_.id = "detailsButton";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0098:
                                 this.detailsButton = _loc1_;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"detailsButton",this.detailsButton);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           addr00b7:
                           return _loc1_;
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0064);
            }
            §§goto(addr008f);
         }
         §§goto(addr0098);
      }
      
      public function __detailsButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.detailsButtonClickHandler(param1);
         }
      }
      
      public function ___UpsellingOfferLayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detailsButton() : MultistateButton
      {
         return this._427674644detailsButton;
      }
      
      public function set detailsButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._427674644detailsButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._427674644detailsButton = param1;
                  if(_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailsButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get discountLabel() : LocaLabel
      {
         return this._150980045discountLabel;
      }
      
      public function set discountLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._150980045discountLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._150980045discountLabel = param1;
                  if(_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discountLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005c);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._949820541flavourLabel = param1;
                  if(_loc4_)
                  {
                     addr0044:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0044);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGfx() : BriskImageDynaLib
      {
         return this._1638751296iconGfx;
      }
      
      public function set iconGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1638751296iconGfx;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1638751296iconGfx = param1;
                  if(_loc4_ || _loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGfx",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
         }
         addr008b:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2116181862itemGfx = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGroup() : Group
      {
         return this._2131590956itemGroup;
      }
      
      public function set itemGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2131590956itemGroup;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0049:
                  this._2131590956itemGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr006a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr006a);
            }
            addr0091:
            return;
         }
         §§goto(addr0049);
      }
   }
}

