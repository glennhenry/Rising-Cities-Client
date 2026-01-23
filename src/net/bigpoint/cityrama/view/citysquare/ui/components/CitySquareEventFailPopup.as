package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventFailVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CitySquareEventFailPopup extends PaperPopupWindow
   {
      
      public static const BUY_REWARD:String = "BUY_REWARD";
      
      public static const CANCEL_BUY_REWARD:String = "CANCEL_BUY_REWARD";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && CitySquareEventFailPopup))
      {
         BUY_REWARD = "BUY_REWARD";
         if(_loc1_ || _loc1_)
         {
            CANCEL_BUY_REWARD = "CANCEL_BUY_REWARD";
            if(!_loc2_)
            {
               OPEN_TREASURY = "OPEN_TREASURY";
               §§goto(addr004b);
            }
            §§goto(addr0063);
         }
         addr004b:
         if(!_loc2_)
         {
            addr0063:
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
         return;
      }
      §§goto(addr0063);
      
      private var _1577357232challengeProgress:StepMarkerBarComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _856513103noSaleContent:EventFailNoSaleContentComponent;
      
      private var _1007961934noSaleContentGroup:Group;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _2110508920polaroidLabel:LocaLabel;
      
      private var _1903419639progressBarComponent:TimerBarComponent;
      
      private var _1758101966saleContent:EventFailSaleContentComponent;
      
      private var _33974419saleContentGroup:Group;
      
      private var _2127489781saleCountdownGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareEventFailVo;
      
      private var _isDirty:Boolean;
      
      public function CitySquareEventFailPopup()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.styleName = "citysquare";
                  if(_loc2_)
                  {
                     addr0055:
                     this.showBackButton = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0067:
                        this.width = 785;
                        if(_loc2_)
                        {
                           this.height = 430;
                           if(_loc2_ || _loc2_)
                           {
                              addr008f:
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventFailPopup_Array1_c);
                              if(!_loc1_)
                              {
                                 addr00a4:
                                 this.addEventListener("creationComplete",this.___CitySquareEventFailPopup_PaperPopupWindow1_creationComplete);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr008f);
                  }
               }
               §§goto(addr0067);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0055);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0036);
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc3_))
            {
               addr0030:
               §§push(this._data);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§goto(addr0061);
                           }
                           §§goto(addr0296);
                        }
                     }
                     addr0061:
                     §§push(this._isDirty);
                     if(_loc3_)
                     {
                        addr0060:
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           this._isDirty = false;
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(this.polaroidImage);
                              if(!_loc2_)
                              {
                                 §§push(this._data);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(§§pop().polaroidData);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§push(§§pop().dynaSwfName);
                                       if(!_loc2_)
                                       {
                                          §§pop().dynaSWFFileName = §§pop();
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(this.polaroidImage);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§push(this._data);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(§§pop().polaroidData);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop().dynaLibName);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         addr00f7:
                                                         §§pop().dynaLibName = §§pop();
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr0114:
                                                            this.polaroidImage.dynaBmpSourceName = this._data.polaroidData.dynaBmpName;
                                                            addr0111:
                                                            addr010e:
                                                            addr010a:
                                                            addr0106:
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               addr0123:
                                                               §§push(this._data);
                                                               if(!_loc2_)
                                                               {
                                                                  addr012c:
                                                                  §§push(§§pop().state);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(CitySquareEventFailVo.STATE_SALE);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              this.noSaleContentGroup.includeInLayout = this.noSaleContentGroup.visible = false;
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 this.saleContentGroup.includeInLayout = this.saleContentGroup.visible = true;
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    addr01a1:
                                                                                    this.saleContent.setData(this._data.rewardData,this._data.price,this._data.affordable);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01c3:
                                                                                       §§push(this.flavourText);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.flavour.sale"));
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§pop().text = §§pop();
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                addr01ec:
                                                                                                §§push(this.polaroidLabel);
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   §§push(LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.polaroidText.sale"));
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop().text = §§pop();
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§goto(addr0215);
                                                                                                      }
                                                                                                      §§goto(addr0311);
                                                                                                   }
                                                                                                   §§goto(addr028f);
                                                                                                }
                                                                                                §§goto(addr0283);
                                                                                             }
                                                                                             §§goto(addr0215);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0270:
                                                                                             §§pop().text = §§pop();
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr027f);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02fa);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0264:
                                                                                          §§push(LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.flavour.noSale"));
                                                                                       }
                                                                                       §§goto(addr0270);
                                                                                    }
                                                                                    §§goto(addr02b5);
                                                                                 }
                                                                                 addr0215:
                                                                                 this.saleCountdownGroup.includeInLayout = this.saleCountdownGroup.visible = true;
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr022c:
                                                                                    this.progressBarComponent.data = this._data.timerData;
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0311:
                                                                                       this.challengeProgress.data = this._data.eventProgress;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr028f:
                                                                                    this.polaroidLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.polaroidText.noSale");
                                                                                    addr0283:
                                                                                    addr027f:
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0296:
                                                                                       this.saleContentGroup.includeInLayout = this.saleContentGroup.visible = false;
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          addr02b5:
                                                                                          this.noSaleContentGroup.includeInLayout = this.noSaleContentGroup.visible = true;
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr02d4);
                                                                                          }
                                                                                          §§goto(addr02fa);
                                                                                       }
                                                                                       §§goto(addr0311);
                                                                                    }
                                                                                    addr02d4:
                                                                                    this.noSaleContent.data = this._data.rewardData;
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       addr02fa:
                                                                                       this.saleCountdownGroup.includeInLayout = this.saleCountdownGroup.visible = false;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr0311);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr031e);
                                                                                 }
                                                                                 §§goto(addr031e);
                                                                              }
                                                                              §§goto(addr01a1);
                                                                           }
                                                                           §§goto(addr02d4);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr024f:
                                                                           addr0249:
                                                                           addr0246:
                                                                           if(this._data.state == CitySquareEventFailVo.STATE_NOSALE)
                                                                           {
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr0264);
                                                                                 §§push(this.flavourText);
                                                                              }
                                                                              §§goto(addr0296);
                                                                           }
                                                                        }
                                                                        §§goto(addr0311);
                                                                     }
                                                                     §§goto(addr024f);
                                                                  }
                                                                  §§goto(addr0249);
                                                               }
                                                               §§goto(addr0246);
                                                            }
                                                            §§goto(addr01ec);
                                                         }
                                                         §§goto(addr02b5);
                                                      }
                                                      §§goto(addr0114);
                                                   }
                                                   §§goto(addr0111);
                                                }
                                                §§goto(addr010e);
                                             }
                                             §§goto(addr010a);
                                          }
                                          §§goto(addr0106);
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr0111);
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr0123);
                        }
                        §§goto(addr01c3);
                     }
                     addr031e:
                     return;
                  }
                  §§goto(addr0060);
               }
               §§goto(addr012c);
            }
            §§goto(addr022c);
         }
         §§goto(addr0030);
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            title = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.popupheader");
         }
      }
      
      public function set data(param1:CitySquareEventFailVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._data = param1;
                  if(_loc2_)
                  {
                     this._isDirty = true;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0052:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0057);
               }
               §§goto(addr0052);
            }
            addr0057:
            return;
         }
         §§goto(addr0036);
      }
      
      private function _CitySquareEventFailPopup_Array1_c() : Array
      {
         return [this._CitySquareEventFailPopup_Group1_c()];
      }
      
      private function _CitySquareEventFailPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.top = 24;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._CitySquareEventFailPopup_HGroup1_c(),this._CitySquareEventFailPopup_Group8_c()];
               addr0045:
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _CitySquareEventFailPopup_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 45;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 98;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        _loc1_.gap = 1;
                        if(_loc2_)
                        {
                           addr007d:
                           _loc1_.mxmlContent = [this._CitySquareEventFailPopup_Group2_c(),this._CitySquareEventFailPopup_Group5_c()];
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr009f:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr009f);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _CitySquareEventFailPopup_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._CitySquareEventFailPopup_StickyNoteComponent1_c(),this._CitySquareEventFailPopup_Group3_c(),this._CitySquareEventFailPopup_BriskMCDynaLib1_c(),this._CitySquareEventFailPopup_VGroup1_c()];
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
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
      
      private function _CitySquareEventFailPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 85;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.top = 243;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0085);
               }
               addr0066:
               _loc1_.width = 185;
               if(!_loc2_)
               {
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0089);
            }
            §§goto(addr0071);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.top = 30;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib1_c(),this._CitySquareEventFailPopup_BriskImageDynaLib2_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0075);
                  }
                  §§goto(addr0089);
               }
            }
         }
         addr0075:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0089:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0081);
            }
            §§goto(addr0075);
         }
         addr0063:
         _loc1_.verticalCenter = 0;
         if(_loc3_ || _loc3_)
         {
            addr0075:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0081:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_events";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = -1;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = -1;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "polaroidImage";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a3:
                                 this.polaroidImage = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00ad:
                                    BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                                 }
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00ad);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr00ad);
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               §§goto(addr0033);
            }
            §§goto(addr005e);
         }
         addr0033:
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = 25;
               addr005e:
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr007c);
               }
               §§goto(addr0090);
            }
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0090:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0094);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.height = 60;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  addr0034:
                  _loc1_.top = 255;
                  if(_loc3_ || _loc3_)
                  {
                     addr0047:
                     _loc1_.width = 180;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_.paddingLeft = 5;
                              if(!_loc2_)
                              {
                                 _loc1_.paddingRight = 5;
                                 if(_loc3_)
                                 {
                                    addr009a:
                                    _loc1_.paddingTop = 5;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00a5);
                                    }
                                    §§goto(addr00e4);
                                 }
                                 §§goto(addr00d0);
                              }
                              addr00a5:
                              _loc1_.paddingBottom = 5;
                              if(!_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._CitySquareEventFailPopup_LocaLabel1_i(),this._CitySquareEventFailPopup_Group4_i()];
                                 if(_loc3_)
                                 {
                                    addr00d0:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00e4:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00e8);
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr00e8);
                           }
                           §§goto(addr009a);
                        }
                        addr00e8:
                        return _loc1_;
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00e4);
               }
               §§goto(addr0047);
            }
            §§goto(addr0034);
         }
         §§goto(addr009a);
      }
      
      private function _CitySquareEventFailPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 85;
            if(_loc2_)
            {
               _loc1_.styleName = "avatarText";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "polaroidLabel";
                  addr0044:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0077:
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0093:
                              this.polaroidLabel = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a5:
                                 BindingManager.executeBindings(this,"polaroidLabel",this.polaroidLabel);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a5);
                        }
                        addr00b2:
                        return _loc1_;
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0063);
            }
            §§goto(addr0044);
         }
         §§goto(addr0093);
      }
      
      private function _CitySquareEventFailPopup_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._CitySquareEventFailPopup_TimerBarComponent1_i()];
            if(_loc3_)
            {
               _loc1_.id = "saleCountdownGroup";
               if(_loc3_ || Boolean(this))
               {
                  addr0062:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0077:
                           this.saleCountdownGroup = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"saleCountdownGroup",this.saleCountdownGroup);
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0077);
               }
            }
            addr008e:
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _CitySquareEventFailPopup_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.showBoostButton = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.revertFlow = true;
               if(_loc2_)
               {
                  _loc1_.width = 158;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.showTimeInDays = true;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.id = "progressBarComponent";
                        if(_loc2_)
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00a5:
                                    this.progressBarComponent = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"progressBarComponent",this.progressBarComponent);
                                    }
                                 }
                                 §§goto(addr00bc);
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00a5);
                  }
                  addr00bc:
                  return _loc1_;
               }
               §§goto(addr00af);
            }
            §§goto(addr0090);
         }
         §§goto(addr00a5);
      }
      
      private function _CitySquareEventFailPopup_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._CitySquareEventFailPopup_Group6_i(),this._CitySquareEventFailPopup_Group7_i(),this._CitySquareEventFailPopup_StickyNoteComponent2_c()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0060:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0060);
            }
         }
         addr0064:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group6_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.top = -36;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib3_c(),this._CitySquareEventFailPopup_EventFailNoSaleContentComponent1_i(),this._CitySquareEventFailPopup_BriskMCDynaLib2_c(),this._CitySquareEventFailPopup_BriskMCDynaLib3_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr00a0);
               }
               addr006c:
               _loc1_.id = "noSaleContentGroup";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00a0:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr00a9);
                        }
                        §§goto(addr00b3);
                     }
                  }
               }
               addr00a9:
               this.noSaleContentGroup = _loc1_;
               if(!_loc2_)
               {
                  addr00b3:
                  BindingManager.executeBindings(this,"noSaleContentGroup",this.noSaleContentGroup);
               }
               §§goto(addr00c0);
            }
            §§goto(addr00b3);
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               addr0029:
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007a);
         }
         §§goto(addr0029);
      }
      
      private function _CitySquareEventFailPopup_EventFailNoSaleContentComponent1_i() : EventFailNoSaleContentComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:EventFailNoSaleContentComponent = new EventFailNoSaleContentComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 230;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 470;
               if(!_loc3_)
               {
                  _loc1_.top = 120;
                  if(!_loc3_)
                  {
                     addr0053:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.verticalCenter = 60;
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.id = "noSaleContent";
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b5:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§goto(addr00c6);
                                    }
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00d0);
                        }
                     }
                     §§goto(addr00b5);
                  }
                  addr00c6:
                  this.noSaleContent = _loc1_;
                  if(!_loc3_)
                  {
                     addr00d0:
                     BindingManager.executeBindings(this,"noSaleContent",this.noSaleContent);
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr0053);
            }
         }
         addr00dd:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(!_loc3_)
               {
                  _loc1_.left = -2;
                  if(_loc2_)
                  {
                     _loc1_.height = 130;
                     if(!_loc3_)
                     {
                        addr0055:
                        _loc1_.width = 22;
                        if(!_loc3_)
                        {
                           _loc1_.verticalCenter = 36;
                           §§goto(addr005f);
                        }
                        §§goto(addr0091);
                     }
                     addr005f:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0091:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0091);
            }
         }
         §§goto(addr0055);
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = 36;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.right = -2;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr00ac);
                  }
                  addr0067:
                  _loc1_.height = 130;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.width = 22;
                     addr007a:
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr00ac:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007a);
            }
            §§goto(addr0055);
         }
         §§goto(addr007a);
      }
      
      private function _CitySquareEventFailPopup_Group7_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = 80;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib4_c(),this._CitySquareEventFailPopup_EventFailSaleContentComponent1_i(),this._CitySquareEventFailPopup_BriskMCDynaLib4_c(),this._CitySquareEventFailPopup_BriskMCDynaLib5_c()];
                  addr0041:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "saleContentGroup";
                     if(!_loc3_)
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr009c:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00ad:
                                 this.saleContentGroup = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00b7:
                                    BindingManager.executeBindings(this,"saleContentGroup",this.saleContentGroup);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00ad);
                     }
                     addr00c4:
                     return _loc1_;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr009c);
            }
            §§goto(addr0041);
         }
         §§goto(addr00b7);
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "bluepost_upselling";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0077);
               }
            }
            §§goto(addr0073);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_EventFailSaleContentComponent1_i() : EventFailSaleContentComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:EventFailSaleContentComponent = new EventFailSaleContentComponent();
         if(_loc2_)
         {
            _loc1_.height = 230;
            if(_loc2_)
            {
               _loc1_.width = 470;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0058);
            }
            §§goto(addr00a0);
         }
         addr0058:
         _loc1_.verticalCenter = 0;
         if(_loc2_)
         {
            _loc1_.id = "saleContent";
            if(!_loc3_)
            {
               addr006d:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr008e:
                        this.saleContent = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a0:
                           BindingManager.executeBindings(this,"saleContent",this.saleContent);
                        }
                     }
                     §§goto(addr00ad);
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr00a0);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib4_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(_loc2_)
               {
                  _loc1_.left = -2;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005c:
                     _loc1_.height = 130;
                     if(!_loc3_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr00a2);
                  }
                  addr0067:
                  _loc1_.width = 22;
                  if(!_loc3_)
                  {
                     _loc1_.verticalCenter = 1;
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00a2:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr005c);
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib5_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.right = -2;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006b:
                        _loc1_.height = 130;
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr008b);
                        }
                        §§goto(addr00a9);
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr009d);
            }
            addr008b:
            _loc1_.width = 22;
            if(!(_loc3_ && _loc2_))
            {
               addr009d:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr00a9:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _CitySquareEventFailPopup_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.height = 100;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventFailPopup_Array11_c);
                  if(!_loc3_)
                  {
                     addr0057:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0057);
      }
      
      private function _CitySquareEventFailPopup_Array11_c() : Array
      {
         return [this._CitySquareEventFailPopup_StepMarkerBarComponent1_i()];
      }
      
      private function _CitySquareEventFailPopup_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 88;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.addMouseListener = false;
                     if(!_loc3_)
                     {
                        _loc1_.id = "challengeProgress";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0087:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0090:
                                    this.challengeProgress = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr009a:
                                       BindingManager.executeBindings(this,"challengeProgress",this.challengeProgress);
                                    }
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr009a);
                              }
                              addr00a7:
                              return _loc1_;
                           }
                        }
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr009a);
            }
            §§goto(addr0053);
         }
         §§goto(addr009a);
      }
      
      private function _CitySquareEventFailPopup_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib5_c(),this._CitySquareEventFailPopup_HGroup2_c(),this._CitySquareEventFailPopup_BriskImageDynaLib6_i()];
            if(_loc3_)
            {
               §§goto(addr0052);
            }
            §§goto(addr005e);
         }
         addr0052:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr005e:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "bubble_large";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0051:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0055);
               }
               §§goto(addr0051);
            }
            addr0055:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _CitySquareEventFailPopup_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.width = 720;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0055:
                     _loc1_.height = 65;
                     if(_loc2_)
                     {
                        _loc1_.paddingTop = 8;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.horizontalCenter = 0;
                           if(_loc2_)
                           {
                              §§goto(addr0087);
                           }
                           §§goto(addr00a3);
                        }
                     }
                  }
                  addr0087:
                  _loc1_.mxmlContent = [this._CitySquareEventFailPopup_LocaLabel2_i()];
                  if(!_loc3_)
                  {
                     addr0097:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0097);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _CitySquareEventFailPopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "avatarText";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 90;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "flavourText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0076:
                              this.flavourText = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0088:
                                 BindingManager.executeBindings(this,"flavourText",this.flavourText);
                              }
                              §§goto(addr0095);
                           }
                           §§goto(addr0088);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0088);
            }
            §§goto(addr006d);
         }
         addr0095:
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
            if(!(_loc2_ && Boolean(this)))
            {
               addr003a:
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_ || _loc3_)
               {
                  addr005a:
                  _loc1_.top = -10;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "infoIcon";
                     if(_loc3_)
                     {
                        addr0082:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0097:
                                 this.infoIcon = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                 }
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0097);
                     }
                     addr00ae:
                     return _loc1_;
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0082);
            }
            §§goto(addr005a);
         }
         §§goto(addr003a);
      }
      
      public function ___CitySquareEventFailPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeProgress() : StepMarkerBarComponent
      {
         return this._1577357232challengeProgress;
      }
      
      public function set challengeProgress(param1:StepMarkerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1577357232challengeProgress;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1577357232challengeProgress = param1;
                  addr003c:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeProgress",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr003c);
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
                  addr0039:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._177606215infoIcon = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get noSaleContent() : EventFailNoSaleContentComponent
      {
         return this._856513103noSaleContent;
      }
      
      public function set noSaleContent(param1:EventFailNoSaleContentComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._856513103noSaleContent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._856513103noSaleContent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noSaleContent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get noSaleContentGroup() : Group
      {
         return this._1007961934noSaleContentGroup;
      }
      
      public function set noSaleContentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1007961934noSaleContentGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1007961934noSaleContentGroup = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noSaleContentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2112922897polaroidImage;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2112922897polaroidImage = param1;
                  if(!_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0061:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0070);
                  }
               }
               §§goto(addr0061);
            }
            addr0070:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidLabel() : LocaLabel
      {
         return this._2110508920polaroidLabel;
      }
      
      public function set polaroidLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2110508920polaroidLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0038:
                  this._2110508920polaroidLabel = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0043);
            }
            addr0061:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarComponent() : TimerBarComponent
      {
         return this._1903419639progressBarComponent;
      }
      
      public function set progressBarComponent(param1:TimerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1903419639progressBarComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0037:
                  this._1903419639progressBarComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleContent() : EventFailSaleContentComponent
      {
         return this._1758101966saleContent;
      }
      
      public function set saleContent(param1:EventFailSaleContentComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1758101966saleContent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1758101966saleContent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleContent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get saleContentGroup() : Group
      {
         return this._33974419saleContentGroup;
      }
      
      public function set saleContentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._33974419saleContentGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._33974419saleContentGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleContentGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleCountdownGroup() : Group
      {
         return this._2127489781saleCountdownGroup;
      }
      
      public function set saleCountdownGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2127489781saleCountdownGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._2127489781saleCountdownGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleCountdownGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

