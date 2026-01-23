package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionNeedItemRendered;
   import net.bigpoint.cityrama.view.productionBook.ui.skins.NeedsListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class EmergencyCleanupMiniLayer extends MiniLayerWindow
   {
      
      public static const OK:String = "OK";
      
      public static const RC:String = "RC";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         OK = "OK";
         if(_loc2_ || _loc2_)
         {
            addr0036:
            RC = "RC";
            if(!(_loc1_ && _loc2_))
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
         return;
      }
      §§goto(addr0036);
      
      private var _496408456buildCosts:List;
      
      private var _1602367816emergencyCleanupImage:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _70621023neededGoods:LocaLabel;
      
      private var _781580483rcButton:DynamicPlusButton;
      
      private var _1943111220startButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyCleanupMiniLayerVo;
      
      private var _dirty:Boolean;
      
      public function EmergencyCleanupMiniLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  addr0052:
                  this.width = 540;
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0094);
            }
            addr0065:
            this.height = 313;
            if(!(_loc1_ && Boolean(this)))
            {
               addr0078:
               this.showAttentionSign = true;
               if(_loc2_ || _loc1_)
               {
                  addr0094:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyCleanupMiniLayer_Array1_c);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.addEventListener("creationComplete",this.___EmergencyCleanupMiniLayer_MiniLayerWindow1_creationComplete);
                  }
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      public function setData(param1:EmergencyCleanupMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc3_)
               {
                  this._dirty = true;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr004a:
                     this._data = param1;
                     if(_loc2_ || Boolean(this))
                     {
                        addr005c:
                        this.invalidateProperties();
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr005c);
               }
            }
            addr0060:
            return;
         }
         §§goto(addr004a);
      }
      
      private function handleOkClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event(OK));
         }
      }
      
      private function handleRcClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new Event(RC));
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(this._dirty);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && Boolean(this)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§pop();
                           if(_loc1_)
                           {
                              §§push(this._data);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(§§pop() == null);
                                 if(_loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr0084);
                                    }
                                    §§goto(addr0190);
                                 }
                                 §§goto(addr0084);
                              }
                              §§goto(addr01e1);
                           }
                           §§goto(addr028e);
                        }
                        §§goto(addr0190);
                     }
                     addr0084:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this._dirty = false;
                           if(_loc1_ || Boolean(this))
                           {
                              §§goto(addr009f);
                           }
                           §§goto(addr012d);
                        }
                        addr009f:
                        this.title = this._data.title;
                        if(_loc1_ || Boolean(this))
                        {
                           this.header.text = this._data.header;
                           if(!_loc2_)
                           {
                              this.flavourText.text = this._data.flavourText;
                              if(_loc1_ || _loc2_)
                              {
                                 this.neededGoods.text = this._data.productionNeedVo.requiredAmount + " X";
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr0105:
                                    §§push(this.startButton);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§pop().label = this._data.buttonText;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.infoLabel.text = StringUtil.substitute(this._data.instantFinishText,this._data.instantRCCosts);
                                          addr012d:
                                          if(!_loc2_)
                                          {
                                             §§push(this.rcButton);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(this._data);
                                                if(_loc1_)
                                                {
                                                   §§pop().priceToConfirm = §§pop().instantRCCosts;
                                                   if(!_loc2_)
                                                   {
                                                      addr017c:
                                                      §§push(this._data);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr0190:
                                                         if(!§§pop().hasEnoughRC)
                                                         {
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               §§push(this.rcButton);
                                                               if(_loc1_ || Boolean(this))
                                                               {
                                                                  §§pop().showPlus = true;
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     addr01cb:
                                                                     this.rcButton.toolTip = this._data.instantFinishToolTipBad;
                                                                     addr01c7:
                                                                     addr01c3:
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        addr01dd:
                                                                        addr01e1:
                                                                        if(this._data.productionNeedVo.requiredAmount > this._data.productionNeedVo.stockAmount)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr01fe:
                                                                              this.startButton.enabled = false;
                                                                              §§goto(addr01fa);
                                                                           }
                                                                        }
                                                                        §§goto(addr0207);
                                                                     }
                                                                     §§goto(addr0241);
                                                                  }
                                                                  §§goto(addr028e);
                                                               }
                                                               §§goto(addr01c7);
                                                            }
                                                            addr01fa:
                                                            if(_loc1_)
                                                            {
                                                               addr0207:
                                                               §§push(this.emergencyCleanupImage);
                                                               if(_loc1_)
                                                               {
                                                                  §§push(this._data);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop().swfName);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        §§pop().dynaSWFFileName = §§pop();
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           addr0241:
                                                                           §§push(this.emergencyCleanupImage);
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              addr0252:
                                                                              §§push(this._data);
                                                                              if(_loc1_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().libName);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§pop().dynaLibName = §§pop();
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr0287);
                                                                                    }
                                                                                    §§goto(addr028e);
                                                                                 }
                                                                                 addr0287:
                                                                                 this.emergencyCleanupImage.dynaBmpSourceName = this._data.bmpName;
                                                                                 §§goto(addr0284);
                                                                              }
                                                                              addr0284:
                                                                              §§goto(addr0280);
                                                                           }
                                                                           addr0280:
                                                                           addr027c:
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr028e:
                                                                              this.buildCosts.dataProvider = new ArrayCollection([this._data.productionNeedVo]);
                                                                           }
                                                                           §§goto(addr02a3);
                                                                        }
                                                                        §§goto(addr028e);
                                                                     }
                                                                     §§goto(addr0287);
                                                                  }
                                                                  §§goto(addr0284);
                                                               }
                                                               §§goto(addr0252);
                                                            }
                                                            §§goto(addr02a3);
                                                         }
                                                         §§goto(addr01dd);
                                                      }
                                                      §§goto(addr01e1);
                                                   }
                                                   §§goto(addr027c);
                                                }
                                                §§goto(addr01cb);
                                             }
                                             §§goto(addr01c7);
                                          }
                                          §§goto(addr0241);
                                       }
                                       §§goto(addr017c);
                                    }
                                    §§goto(addr01fe);
                                 }
                                 §§goto(addr0241);
                              }
                              §§goto(addr017c);
                           }
                           §§goto(addr01c3);
                        }
                        §§goto(addr02a3);
                     }
                     addr02a3:
                     return;
                  }
               }
               §§goto(addr0190);
            }
         }
         §§goto(addr0105);
      }
      
      protected function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.startButton.addEventListener(MouseEvent.CLICK,this.handleOkClick);
            if(!_loc3_)
            {
               addr0044:
               this.rcButton.addEventListener(MouseEvent.CLICK,this.handleRcClick);
            }
            return;
         }
         §§goto(addr0044);
      }
      
      private function _EmergencyCleanupMiniLayer_Array1_c() : Array
      {
         return [this._EmergencyCleanupMiniLayer_Group1_c(),this._EmergencyCleanupMiniLayer_Group5_c()];
      }
      
      private function _EmergencyCleanupMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_HGroup1_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0087);
            }
            addr0073:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0087:
                  _loc1_.document = this;
               }
            }
            §§goto(addr008b);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.left = 12;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  addr0058:
                  _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_Group2_c(),this._EmergencyCleanupMiniLayer_VGroup1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr0082);
               }
               addr0076:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0082:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0058);
         }
         §§goto(addr0082);
      }
      
      private function _EmergencyCleanupMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_BriskImageDynaLib1_c(),this._EmergencyCleanupMiniLayer_BriskImageDynaLib2_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr004c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0050);
            }
            §§goto(addr004c);
         }
         addr0050:
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0060:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0074);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.top = 9;
            if(_loc2_)
            {
               _loc1_.left = 10;
               if(!_loc3_)
               {
                  _loc1_.id = "emergencyCleanupImage";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007c:
                              this.emergencyCleanupImage = _loc1_;
                              if(_loc2_)
                              {
                                 addr0086:
                                 BindingManager.executeBindings(this,"emergencyCleanupImage",this.emergencyCleanupImage);
                              }
                           }
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0086);
               }
               addr0093:
               return _loc1_;
            }
         }
         §§goto(addr0086);
      }
      
      private function _EmergencyCleanupMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.paddingTop = 50;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc2_)
                     {
                        addr0072:
                        _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_Group3_c(),this._EmergencyCleanupMiniLayer_HGroup3_c()];
                        if(!_loc2_)
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
                     §§goto(addr0098);
                  }
                  addr0098:
                  return _loc1_;
               }
               §§goto(addr0072);
            }
         }
         §§goto(addr0094);
      }
      
      private function _EmergencyCleanupMiniLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 124;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_BriskImageDynaLib3_c(),this._EmergencyCleanupMiniLayer_BriskMCDynaLib1_c(),this._EmergencyCleanupMiniLayer_VGroup2_c()];
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0084);
                  }
               }
            }
            §§goto(addr0090);
         }
         addr0084:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0090:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "paper_quadrille_small";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_miniLayer";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006c:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006c);
            }
         }
         addr0070:
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 50;
                  if(_loc3_)
                  {
                     addr005c:
                     _loc1_.top = -5;
                     if(!_loc2_)
                     {
                        _loc1_.horizontalCenter = 0;
                        §§goto(addr0066);
                     }
                     §§goto(addr0098);
                  }
                  addr0066:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0098:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr005c);
         }
         §§goto(addr0098);
      }
      
      private function _EmergencyCleanupMiniLayer_VGroup2_c() : VGroup
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
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.gap = 5;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0054);
            }
            §§goto(addr0067);
         }
         addr0054:
         _loc1_.paddingTop = 20;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_LocaLabel1_i(),this._EmergencyCleanupMiniLayer_BriskImageDynaLib4_c(),this._EmergencyCleanupMiniLayer_HGroup2_c()];
            addr0067:
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00aa:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.text = "Dev: Awesome Headline";
            if(_loc2_)
            {
               _loc1_.styleName = "residentialOutputHeader";
               if(_loc2_)
               {
                  _loc1_.id = "header";
                  if(!_loc3_)
                  {
                     addr0049:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0061);
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0049);
            }
         }
         addr0061:
         _loc1_.document = this;
         if(_loc2_ || Boolean(this))
         {
            addr0072:
            this.header = _loc1_;
            if(!_loc3_)
            {
               BindingManager.executeBindings(this,"header",this.header);
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "head_line_long";
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0071);
            }
         }
         addr005d:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0071:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_HGroup2_c() : HGroup
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
               _loc1_.horizontalAlign = "center";
               §§goto(addr003b);
            }
            §§goto(addr00a3);
         }
         addr003b:
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_LocaLabel2_i(),this._EmergencyCleanupMiniLayer_List1_i()];
               if(!_loc2_)
               {
                  §§goto(addr008f);
               }
            }
            §§goto(addr00a3);
         }
         addr008f:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc3_)
            {
               addr00a3:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.text = "Dev: 3 x";
            if(_loc2_)
            {
               _loc1_.width = 60;
               if(_loc2_)
               {
                  addr003e:
                  _loc1_.height = 70;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.styleName = "levelLabel";
                     if(_loc2_)
                     {
                        _loc1_.setStyle("textAlign","center");
                        if(_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr00d5);
                     }
                     addr0076:
                     _loc1_.setStyle("verticalAlign","middle");
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.id = "neededGoods";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00a0:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr00d5);
                              }
                           }
                        }
                     }
                     addr00cb:
                     this.neededGoods = _loc1_;
                     if(!_loc3_)
                     {
                        addr00d5:
                        BindingManager.executeBindings(this,"neededGoods",this.neededGoods);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00d5);
            }
         }
         §§goto(addr003e);
      }
      
      private function _EmergencyCleanupMiniLayer_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._EmergencyCleanupMiniLayer_ClassFactory1_c();
            if(_loc2_ || Boolean(this))
            {
               addr0036:
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.setStyle("skinClass",NeedsListSkin);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr006b:
                     _loc1_.id = "buildCosts";
                     if(_loc2_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a0:
                                 this.buildCosts = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"buildCosts",this.buildCosts);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           addr00b7:
                           return _loc1_;
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr008f);
            }
            §§goto(addr006b);
         }
         §§goto(addr0036);
      }
      
      private function _EmergencyCleanupMiniLayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = ProductionNeedItemRendered;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.width = 250;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_Group4_c(),this._EmergencyCleanupMiniLayer_DynamicPlusButton1_i()];
               if(_loc3_ || _loc2_)
               {
                  addr006b:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006b);
      }
      
      private function _EmergencyCleanupMiniLayer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_LocaLabel3_i(),this._EmergencyCleanupMiniLayer_MultistateButton1_i()];
               if(_loc2_ || _loc2_)
               {
                  addr0067:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0073);
         }
         §§goto(addr0067);
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "residentialProgressComment";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.text = "Dev: Kauf mich";
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     addr0050:
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc2_)
                        {
                           _loc1_.id = "infoLabel";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0083:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a5:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00ae:
                                       this.infoLabel = _loc1_;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00c0:
                                          BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                       }
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00ae);
                           }
                           addr00cd:
                           return _loc1_;
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00a5);
            }
            §§goto(addr0050);
         }
         §§goto(addr00ae);
      }
      
      private function _EmergencyCleanupMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.label = "Dev: Starten";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.imageNameLeft = "button_icon_build";
                        if(!_loc3_)
                        {
                           addr0069:
                           _loc1_.libNameLeft = "gui_popups_paperPopup";
                           if(!(_loc3_ && _loc2_))
                           {
                              addr007d:
                              _loc1_.id = "startButton";
                              if(!_loc3_)
                              {
                                 addr0088:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr009c:
                                       _loc1_.document = this;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00b9:
                                          this.startButton = _loc1_;
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00cb:
                                             BindingManager.executeBindings(this,"startButton",this.startButton);
                                          }
                                          §§goto(addr00d8);
                                       }
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00b9);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00b9);
                        }
                        addr00d8:
                        return _loc1_;
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0088);
            }
            §§goto(addr0069);
         }
         §§goto(addr009c);
      }
      
      private function _EmergencyCleanupMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc3_)
         {
            _loc1_.width = 40;
            if(_loc3_ || _loc2_)
            {
               _loc1_.useConfirmation = true;
               if(!_loc2_)
               {
                  _loc1_.iconImageName = "dd_button_icon";
                  if(_loc3_)
                  {
                     addr004c:
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(!_loc2_)
                        {
                           _loc1_.addEventListener("mouseOver",this.__rcButton_mouseOver);
                           if(!_loc2_)
                           {
                              _loc1_.addEventListener("mouseOut",this.__rcButton_mouseOut);
                              if(!_loc2_)
                              {
                                 addr009e:
                                 _loc1_.id = "rcButton";
                                 if(!_loc2_)
                                 {
                                    addr00a9:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr00c8:
                                          _loc1_.document = this;
                                          if(_loc3_)
                                          {
                                             §§goto(addr00d1);
                                          }
                                          §§goto(addr00db);
                                       }
                                    }
                                    addr00d1:
                                    this.rcButton = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00db:
                                       BindingManager.executeBindings(this,"rcButton",this.rcButton);
                                    }
                                    §§goto(addr00e8);
                                 }
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00c8);
                  }
                  addr00e8:
                  return _loc1_;
               }
               §§goto(addr004c);
            }
            §§goto(addr00a9);
         }
         §§goto(addr009e);
      }
      
      public function __rcButton_mouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.startButton.visible = false;
            if(!(_loc2_ && Boolean(this)))
            {
               this.infoLabel.visible = true;
            }
         }
      }
      
      public function __rcButton_mouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.startButton.visible = true;
            if(_loc3_ || _loc3_)
            {
               addr003f:
               this.infoLabel.visible = false;
            }
            return;
         }
         §§goto(addr003f);
      }
      
      private function _EmergencyCleanupMiniLayer_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_BriskImageDynaLib5_c(),this._EmergencyCleanupMiniLayer_LocaLabel4_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr006a);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bubble_small";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = -12;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.left = 0;
                     if(!_loc3_)
                     {
                        addr0079:
                        _loc1_.mouseChildren = false;
                        if(!_loc3_)
                        {
                           addr0083:
                           _loc1_.mouseEnabled = false;
                           if(!_loc3_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr008d);
            }
            §§goto(addr0079);
         }
         addr008d:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0099:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.text = "Dev: Awesome Headline";
            if(!_loc3_)
            {
               _loc1_.width = 436;
               if(!_loc3_)
               {
                  _loc1_.height = 34;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.styleName = "optionsLabel";
                        if(!_loc3_)
                        {
                           _loc1_.setStyle("textAlign","center");
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.setStyle("verticalAlign","middle");
                              if(_loc2_ || _loc3_)
                              {
                                 addr009e:
                                 _loc1_.setStyle("paddingRight",10);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00fa);
                              }
                              §§goto(addr00bf);
                           }
                           addr00b4:
                           _loc1_.id = "flavourText";
                           if(_loc2_)
                           {
                              addr00bf:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00df:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00e8:
                                       this.flavourText = _loc1_;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00fa:
                                          BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                       }
                                    }
                                 }
                                 §§goto(addr0107);
                              }
                              §§goto(addr00e8);
                           }
                           addr0107:
                           return _loc1_;
                        }
                        §§goto(addr009e);
                     }
                  }
                  §§goto(addr00e8);
               }
               §§goto(addr00bf);
            }
            §§goto(addr00fa);
         }
         §§goto(addr00df);
      }
      
      public function ___EmergencyCleanupMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
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
      public function get buildCosts() : List
      {
         return this._496408456buildCosts;
      }
      
      public function set buildCosts(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._496408456buildCosts;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._496408456buildCosts = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildCosts",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyCleanupImage() : BriskImageDynaLib
      {
         return this._1602367816emergencyCleanupImage;
      }
      
      public function set emergencyCleanupImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1602367816emergencyCleanupImage;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1602367816emergencyCleanupImage = param1;
                  if(_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyCleanupImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0052);
            }
         }
         addr0071:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(!_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr004f);
            }
            addr0076:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1221270899header;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1221270899header = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1213523686infoLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1213523686infoLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
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
      public function get neededGoods() : LocaLabel
      {
         return this._70621023neededGoods;
      }
      
      public function set neededGoods(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._70621023neededGoods;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._70621023neededGoods = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"neededGoods",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcButton() : DynamicPlusButton
      {
         return this._781580483rcButton;
      }
      
      public function set rcButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._781580483rcButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._781580483rcButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1943111220startButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1943111220startButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
   }
}

