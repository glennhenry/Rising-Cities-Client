package net.bigpoint.cityrama.view.cinema.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class CinemaLayer extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
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
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _2110508920polaroidLabel:LocaLabel;
      
      private var _1893598809stepBar:StepMarkerBarComponent;
      
      private var _435503115videoAvailableContent:CinemaVideoAvailableComponent;
      
      private var _887948804videoUnAvailableContent:CinemaVideoUnavailableComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.styleName = "cinema";
                  if(!(_loc2_ && _loc2_))
                  {
                     this.showBackButton = false;
                     if(_loc1_ || Boolean(this))
                     {
                        this.width = 785;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           this.height = 430;
                           if(_loc1_)
                           {
                              addr0096:
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CinemaLayer_Array1_c);
                              if(_loc1_ || _loc2_)
                              {
                                 addr00b3:
                                 this.addEventListener("creationComplete",this.___CinemaLayer_PaperPopupWindow1_creationComplete);
                              }
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00b3);
            }
            addr00bf:
            return;
         }
         §§goto(addr0096);
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
                  if(!(_loc3_ && _loc3_))
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
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            title = LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.title.capital");
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc3_)
            {
               §§push(this._data);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this._isDirty);
                              if(!_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    §§goto(addr005f);
                                 }
                                 §§goto(addr015d);
                              }
                              §§goto(addr005f);
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr015d);
                     }
                  }
                  addr005f:
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this._isDirty = false;
                        if(!_loc2_)
                        {
                           addr007a:
                           this.flavourText.text = this._data.flavourText;
                           if(_loc3_)
                           {
                              this.polaroidLabel.text = this._data.polaroidText;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 this.polaroidImage.briskDynaVo = this._data.polaroidGfx;
                                 addr00a7:
                                 if(_loc3_ || _loc2_)
                                 {
                                    this.stepBar.data = this._data.stepMarkerData;
                                    if(_loc3_)
                                    {
                                       addr00e0:
                                       §§push(this.videoAvailableContent);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().includeInLayout = this.videoAvailableContent.visible = this._data.videoAvailable;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr0112:
                                             §§push(this.videoUnAvailableContent);
                                             if(_loc3_)
                                             {
                                                §§push(this.videoUnAvailableContent);
                                                §§push(this._data.videoAvailable);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§push(!§§pop());
                                                }
                                                var _loc1_:*;
                                                §§pop().visible = _loc1_ = §§pop();
                                                §§pop().includeInLayout = _loc1_;
                                                if(_loc3_ || _loc1_)
                                                {
                                                   addr014a:
                                                   addr015d:
                                                   addr015a:
                                                   if(this._data.videoAvailable)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr016a:
                                                         this.videoAvailableContent.data = this._data;
                                                         addr0166:
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0185:
                                                      this.videoUnAvailableContent.data = this._data;
                                                   }
                                                }
                                                §§goto(addr018b);
                                             }
                                             §§goto(addr0185);
                                          }
                                          §§goto(addr0166);
                                       }
                                       §§goto(addr016a);
                                    }
                                    §§goto(addr0166);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr018b);
                           }
                        }
                        §§goto(addr014a);
                     }
                     §§goto(addr00e0);
                  }
                  addr018b:
                  return;
               }
               §§goto(addr015a);
            }
            §§goto(addr00a7);
         }
         §§goto(addr0112);
      }
      
      public function set data(param1:CinemaLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._data = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     this._isDirty = true;
                     if(_loc3_)
                     {
                        addr0075:
                        invalidateProperties();
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0075);
               }
            }
         }
         addr007a:
      }
      
      private function _CinemaLayer_Array1_c() : Array
      {
         return [this._CinemaLayer_Group1_c()];
      }
      
      private function _CinemaLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = 26;
                  if(!_loc2_)
                  {
                     addr005c:
                     _loc1_.bottom = 12;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._CinemaLayer_HGroup1_c(),this._CinemaLayer_HGroup4_c()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009f:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr009f);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr005c);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr009f);
      }
      
      private function _CinemaLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 95;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.top = 60;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr0065:
                        _loc1_.gap = 0;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0081:
                           _loc1_.mxmlContent = [this._CinemaLayer_Group2_c(),this._CinemaLayer_Group3_c(),this._CinemaLayer_Group6_c()];
                           if(_loc3_)
                           {
                              §§goto(addr009d);
                           }
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00a9);
            }
            §§goto(addr0065);
         }
         addr009d:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr00a9:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 10;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
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
      
      private function _CinemaLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._CinemaLayer_Group4_c(),this._CinemaLayer_Group5_c(),this._CinemaLayer_BriskMCDynaLib1_c()];
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0063);
            }
            §§goto(addr0077);
         }
         addr0063:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0077:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 78;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr004f);
               }
               §§goto(addr0072);
            }
            addr004f:
            _loc1_.top = 225;
            if(_loc2_)
            {
               _loc1_.width = 185;
               if(_loc2_)
               {
                  addr0072:
                  _loc1_.mxmlContent = [this._CinemaLayer_StickyNoteComponent1_c(),this._CinemaLayer_HGroup2_c()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0090);
                  }
                  §§goto(addr009c);
               }
            }
            addr0090:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr009c:
                  _loc1_.document = this;
               }
            }
            §§goto(addr00a0);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _CinemaLayer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr006d);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _CinemaLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 88;
            if(_loc2_ || _loc2_)
            {
               _loc1_.bottom = 20;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 25;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0062:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.mxmlContent = [this._CinemaLayer_LocaLabel1_i()];
                              addr0091:
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00b6:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00ca:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00ca);
                           }
                           addr00ce:
                           return _loc1_;
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr0091);
                  }
               }
               §§goto(addr00ca);
            }
            §§goto(addr0062);
         }
         §§goto(addr00ca);
      }
      
      private function _CinemaLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "eventRuntime";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "polaroidLabel";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr0090);
                              }
                           }
                           §§goto(addr009a);
                        }
                        addr0090:
                        this.polaroidLabel = _loc1_;
                        if(!_loc2_)
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"polaroidLabel",this.polaroidLabel);
                        }
                        return _loc1_;
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr007f);
               }
            }
         }
         §§goto(addr009a);
      }
      
      private function _CinemaLayer_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0066);
         }
         addr003b:
         _loc1_.top = 15;
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._CinemaLayer_BriskImageDynaLib1_c(),this._CinemaLayer_BriskImageDynaLib2_i()];
            if(!_loc3_)
            {
               addr0066:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  §§goto(addr004b);
               }
               §§goto(addr0063);
            }
            §§goto(addr0075);
         }
         addr004b:
         if(_loc2_)
         {
            addr0063:
            _loc1_.verticalCenter = 0;
            if(_loc2_ || _loc3_)
            {
               addr0075:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0081:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr0081);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _CinemaLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_rewardLayer";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "polaroid_cinema_available";
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = -1;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.verticalCenter = -1;
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.id = "polaroidImage";
                        if(_loc3_)
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§goto(addr00a0);
                        }
                        addr008f:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00a0:
                           this.polaroidImage = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                           }
                        }
                     }
                     §§goto(addr00b7);
                  }
               }
               §§goto(addr006c);
            }
            §§goto(addr0077);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _CinemaLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.top = 5;
                     if(!_loc3_)
                     {
                        §§goto(addr006f);
                     }
                  }
                  §§goto(addr007b);
               }
               addr006f:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr007b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007f);
            }
         }
         addr007f:
         return _loc1_;
      }
      
      private function _CinemaLayer_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 532;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._CinemaLayer_CinemaVideoAvailableComponent1_i(),this._CinemaLayer_CinemaVideoUnavailableComponent1_i(),this._CinemaLayer_StickyNoteComponent2_c(),this._CinemaLayer_HGroup3_c()];
               §§goto(addr0041);
            }
            §§goto(addr0082);
         }
         addr0041:
         if(_loc3_ || _loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0082:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_CinemaVideoAvailableComponent1_i() : CinemaVideoAvailableComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CinemaVideoAvailableComponent = new CinemaVideoAvailableComponent();
         if(!_loc2_)
         {
            _loc1_.top = 54;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.includeInLayout = false;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0063:
                     _loc1_.visible = false;
                     if(!_loc2_)
                     {
                        _loc1_.id = "videoAvailableContent";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr009f:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00a8);
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           addr00a8:
                           this.videoAvailableContent = _loc1_;
                           if(_loc3_)
                           {
                              addr00b2:
                              BindingManager.executeBindings(this,"videoAvailableContent",this.videoAvailableContent);
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr007f);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _CinemaLayer_CinemaVideoUnavailableComponent1_i() : CinemaVideoUnavailableComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CinemaVideoUnavailableComponent = new CinemaVideoUnavailableComponent();
         if(_loc3_)
         {
            _loc1_.top = 54;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.includeInLayout = false;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.id = "videoUnAvailableContent";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008e:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr009f:
                                    this.videoUnAvailableContent = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a9:
                                       BindingManager.executeBindings(this,"videoUnAvailableContent",this.videoUnAvailableContent);
                                    }
                                    §§goto(addr00b6);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00b6);
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0077);
            }
            addr00b6:
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _CinemaLayer_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.height = 90;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr003b:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr003b);
      }
      
      private function _CinemaLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.height = 54;
                  if(_loc2_ || _loc3_)
                  {
                     addr0061:
                     _loc1_.top = 18;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0086:
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00a3:
                              _loc1_.mxmlContent = [this._CinemaLayer_StepMarkerBarComponent1_i()];
                              if(!_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00bf:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00bf);
                  }
               }
               addr00c3:
               return _loc1_;
            }
            §§goto(addr0061);
         }
         §§goto(addr0086);
      }
      
      private function _CinemaLayer_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         if(_loc3_)
         {
            _loc1_.addMouseListener = false;
            if(_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  _loc1_.id = "stepBar";
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0093);
            }
            addr0056:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0078:
                  _loc1_.document = this;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0089);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0089);
         }
         addr0089:
         this.stepBar = _loc1_;
         if(_loc3_)
         {
            addr0093:
            BindingManager.executeBindings(this,"stepBar",this.stepBar);
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               addr002b:
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0048);
               }
               §§goto(addr005c);
            }
            addr0048:
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 103;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CinemaLayer_Group7_c()];
                  addr005c:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0094:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0094);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      private function _CinemaLayer_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 740;
            if(_loc2_ || _loc3_)
            {
               addr0040:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._CinemaLayer_BriskImageDynaLib3_c(),this._CinemaLayer_HGroup5_c(),this._CinemaLayer_BriskImageDynaLib4_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0072);
                  }
                  §§goto(addr0086);
               }
               addr0072:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008a);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _CinemaLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bubble-top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr0069);
      }
      
      private function _CinemaLayer_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 88;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 60;
               if(!_loc3_)
               {
                  _loc1_.top = 8;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006e:
                        _loc1_.horizontalAlign = "center";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0080:
                           _loc1_.horizontalCenter = 0;
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr009d);
                           }
                           §§goto(addr00b9);
                        }
                     }
                     addr009d:
                     _loc1_.mxmlContent = [this._CinemaLayer_LocaLabel2_i()];
                     if(_loc2_)
                     {
                        addr00ad:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00b9:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr006e);
               }
            }
            §§goto(addr0080);
         }
         §§goto(addr00ad);
      }
      
      private function _CinemaLayer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.id = "flavourText";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006a:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr0098);
                     }
                     addr0086:
                     this.flavourText = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"flavourText",this.flavourText);
                     }
                     §§goto(addr00a5);
                  }
                  addr00a5:
                  return _loc1_;
               }
            }
            §§goto(addr0098);
         }
         §§goto(addr006a);
      }
      
      private function _CinemaLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               addr003d:
               _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
               if(!_loc3_)
               {
                  _loc1_.top = -4;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = 4;
                     if(_loc2_)
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr006f);
               }
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      public function ___CinemaLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
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
               if(_loc3_)
               {
                  this._800887486flavourText = param1;
                  addr0036:
                  if(_loc3_ || Boolean(this))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
            }
            addr0073:
            return;
         }
         §§goto(addr0036);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._2112922897polaroidImage = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr006a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr006a);
            }
            addr0089:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidLabel() : LocaLabel
      {
         return this._2110508920polaroidLabel;
      }
      
      public function set polaroidLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2110508920polaroidLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2110508920polaroidLabel = param1;
                  if(!_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0053);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1893598809stepBar = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0056);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get videoAvailableContent() : CinemaVideoAvailableComponent
      {
         return this._435503115videoAvailableContent;
      }
      
      public function set videoAvailableContent(param1:CinemaVideoAvailableComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._435503115videoAvailableContent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0039:
                  this._435503115videoAvailableContent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"videoAvailableContent",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get videoUnAvailableContent() : CinemaVideoUnavailableComponent
      {
         return this._887948804videoUnAvailableContent;
      }
      
      public function set videoUnAvailableContent(param1:CinemaVideoUnavailableComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._887948804videoUnAvailableContent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr004a:
                  this._887948804videoUnAvailableContent = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"videoUnAvailableContent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008f);
                  }
               }
               §§goto(addr0080);
            }
            addr008f:
            return;
         }
         §§goto(addr004a);
      }
   }
}

