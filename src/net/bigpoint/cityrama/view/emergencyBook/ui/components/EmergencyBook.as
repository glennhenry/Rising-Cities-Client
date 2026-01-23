package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencySuccessBarVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyTimerProggressVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.EmergencySuccessBarSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EmergencyBook extends PaperPopupWindow
   {
      
      public static const NEXT:String = "next";
      
      public static const SELECT:String = "select";
      
      public static const START:String = "start";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NEXT = "next";
         if(!_loc1_)
         {
            SELECT = "select";
            if(_loc2_)
            {
               START = "start";
               if(!(_loc1_ && _loc2_))
               {
                  addr005e:
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
            }
            return;
         }
      }
      §§goto(addr005e);
      
      private var _163334105bubbleText:LocaLabel;
      
      private var _400476409buildingImage:BriskImageDynaLib;
      
      private var _389389280contentLeft:HGroup;
      
      private var _1038378667emergencyImageTop:BriskImageDynaLib;
      
      private var _1260772300emergencyTimer:EmergencyProggresTimerComponent;
      
      private var _1464992284imageGroup:Group;
      
      private var _1749722107nextButton:MultistateButton;
      
      private var _1555143502selectButton:MultistateButton;
      
      private var _905683178sideContainer:Group;
      
      private var _1943111220startButton:MultistateButton;
      
      private var _159927757successBarComponent:EmergencySuccessBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyZoneLayerVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function EmergencyBook()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.showBackButton = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.width = 785;
                     if(!_loc2_)
                     {
                        this.height = 430;
                        if(_loc1_ || Boolean(this))
                        {
                           addr0083:
                           this.styleName = "emergency";
                           if(!_loc2_)
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr00ab);
                     }
                     addr008e:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyBook_Array1_c);
                     if(_loc1_ || _loc1_)
                     {
                        addr00ab:
                        this.addEventListener("creationComplete",this.___EmergencyBook_PaperPopupWindow1_creationComplete);
                     }
                     §§goto(addr00b7);
                  }
                  addr00b7:
                  return;
               }
            }
            §§goto(addr0083);
         }
         §§goto(addr00ab);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002c:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
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
         §§goto(addr002c);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:EmergencyTimerProggressVo = null;
         if(!_loc2_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this._dataIsDirty = false;
                     if(_loc3_)
                     {
                        this.bubbleText.text = this._data.flavourText;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this.buildingImage);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(this._data);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(§§pop().buildingImage);
                                 if(!_loc2_)
                                 {
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc3_)
                                    {
                                       addr00b3:
                                       this.buildingImage.dynaLibName = this._data.buildingLib;
                                       addr00af:
                                       addr00ab:
                                       addr00a7:
                                    }
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr00b3);
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00ab);
                        }
                     }
                     addr00b5:
                     _loc1_ = new EmergencyTimerProggressVo();
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.currentTime = this._data.timerData.currentTime;
                        if(!_loc2_)
                        {
                           _loc1_.startTime = this._data.timerData.startTime;
                           if(!_loc2_)
                           {
                              §§goto(addr00f3);
                           }
                           §§goto(addr0134);
                        }
                     }
                     addr00f3:
                     _loc1_.targetTime = this._data.timerData.targetTime;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.cycleLength = this._data.timerData.cycleLength;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0134:
                           this.emergencyTimer.data = _loc1_;
                        }
                     }
                     §§goto(addr013b);
                  }
                  §§goto(addr00a7);
               }
               addr013b:
               return;
            }
         }
         §§goto(addr00b5);
      }
      
      public function set successProgress(param1:EmergencySuccessBarVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.successBarComponent.data = param1;
         }
      }
      
      public function get successProggress() : EmergencySuccessBarVo
      {
         return this.successBarComponent.data;
      }
      
      public function set data(param1:EmergencyZoneLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc3_)
               {
                  this._data = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr005d);
               }
               addr0053:
               this._dataIsDirty = true;
               if(!_loc3_)
               {
                  addr005d:
                  invalidateProperties();
               }
               §§goto(addr0062);
            }
         }
         addr0062:
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            backButton.left = 30;
            if(_loc3_ || Boolean(this))
            {
               title = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.title"));
               if(!(_loc2_ && _loc3_))
               {
                  this.nextButton.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.nextButtonLabel"));
                  if(_loc3_ || _loc2_)
                  {
                     addr0095:
                     this.startButton.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.startButtonLabel"));
                     if(!_loc2_)
                     {
                        this.selectButton.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.selectButtonLabel"));
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00f9:
                           this.successBarComponent.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.maxchange"));
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr0095);
         }
         §§goto(addr00f9);
      }
      
      private function handleNextClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event(NEXT));
         }
      }
      
      private function handleStartClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event(START));
         }
      }
      
      private function handleSelectClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event(SELECT));
         }
      }
      
      public function startButtonMode() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.selectButton.visible = this.selectButton.includeInLayout = false;
            if(!_loc2_)
            {
               this.startButton.visible = this.startButton.includeInLayout = true;
               §§goto(addr0042);
            }
            §§goto(addr0066);
         }
         addr0042:
         if(_loc3_)
         {
            addr0066:
            this.nextButton.visible = this.nextButton.includeInLayout = false;
         }
      }
      
      public function selectButtonMode() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.selectButton.visible = this.selectButton.includeInLayout = true;
            if(!_loc3_)
            {
               this.startButton.visible = this.startButton.includeInLayout = false;
               addr003a:
               if(!(_loc3_ && Boolean(this)))
               {
                  this.nextButton.visible = this.nextButton.includeInLayout = false;
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      public function nextButtonMode() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.selectButton.visible = this.selectButton.includeInLayout = false;
            if(!(_loc2_ && _loc3_))
            {
               this.startButton.visible = this.startButton.includeInLayout = false;
               if(_loc3_)
               {
                  addr0068:
                  this.nextButton.visible = this.nextButton.includeInLayout = true;
               }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      public function selectEnabled() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.selectButton.enabled = true;
         }
      }
      
      public function selectDisabled() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.selectButton.enabled = false;
         }
      }
      
      public function startEnabled() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.startButton.enabled = true;
         }
      }
      
      public function startDisabled() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.startButton.enabled = false;
         }
      }
      
      public function nextEnabled() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.nextButton.enabled = true;
         }
      }
      
      public function nextDisabled() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.nextButton.enabled = false;
         }
      }
      
      private function _EmergencyBook_Array1_c() : Array
      {
         return [this._EmergencyBook_BriskImageDynaLib1_c(),this._EmergencyBook_Group1_c()];
      }
      
      private function _EmergencyBook_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_bg_quadrillepaper";
               if(!_loc3_)
               {
                  addr004c:
                  _loc1_.top = 20;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.width = 522;
                     if(!_loc3_)
                     {
                        addr0075:
                        _loc1_.height = 371;
                        if(_loc2_)
                        {
                           _loc1_.left = 0;
                           if(!_loc3_)
                           {
                              §§goto(addr008a);
                           }
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0075);
               }
               addr008a:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0096:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004c);
      }
      
      private function _EmergencyBook_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._EmergencyBook_HGroup1_c(),this._EmergencyBook_Group6_i(),this._EmergencyBook_Group7_c()];
                  addr0040:
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0081);
            }
            §§goto(addr0040);
         }
         addr0081:
         return _loc1_;
      }
      
      private function _EmergencyBook_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.gap = 0;
               if(_loc2_)
               {
                  addr0045:
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.top = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._EmergencyBook_Group2_c(),this._EmergencyBook_Group3_c()];
                        if(_loc2_)
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr008f);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _EmergencyBook_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 530;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._EmergencyBook_VGroup1_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr007a);
               }
               addr006e:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr007a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007e);
            }
         }
         addr007e:
         return _loc1_;
      }
      
      private function _EmergencyBook_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  addr004e:
                  _loc1_.gap = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.bottom = 2;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr007f);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00a9);
               }
               addr007f:
               _loc1_.mxmlContent = [this._EmergencyBook_HGroup2_i(),this._EmergencyBook_EmergencySuccessBarComponent1_i()];
               if(_loc3_)
               {
                  addr0095:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00a9:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004e);
         }
         §§goto(addr0095);
      }
      
      private function _EmergencyBook_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.paddingLeft = 10;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0064:
                     _loc1_.paddingRight = 20;
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr00be);
               }
               addr0077:
               _loc1_.id = "contentLeft";
               if(_loc3_)
               {
                  addr0082:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00b4:
                           this.contentLeft = _loc1_;
                           if(!_loc2_)
                           {
                              addr00be:
                              BindingManager.executeBindings(this,"contentLeft",this.contentLeft);
                           }
                        }
                     }
                     §§goto(addr00cb);
                  }
                  §§goto(addr00b4);
               }
               addr00cb:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr00be);
      }
      
      private function _EmergencyBook_EmergencySuccessBarComponent1_i() : EmergencySuccessBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:EmergencySuccessBarComponent = new EmergencySuccessBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "emergency";
               if(_loc2_)
               {
                  _loc1_.setStyle("skinClass",EmergencySuccessBarSkin);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "successBarComponent";
                     if(_loc2_)
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0085:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr008e:
                                 this.successBarComponent = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0098:
                                    BindingManager.executeBindings(this,"successBarComponent",this.successBarComponent);
                                 }
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr008e);
                     }
                     addr00a5:
                     return _loc1_;
                  }
                  §§goto(addr0065);
               }
               §§goto(addr0098);
            }
            §§goto(addr0085);
         }
         §§goto(addr0065);
      }
      
      private function _EmergencyBook_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 200;
            if(_loc3_ || Boolean(this))
            {
               addr003d:
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._EmergencyBook_Group4_c(),this._EmergencyBook_Group5_i(),this._EmergencyBook_MultistateButton1_i(),this._EmergencyBook_MultistateButton2_i(),this._EmergencyBook_MultistateButton3_i()];
                  if(_loc3_)
                  {
                     addr007a:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0086);
            }
            §§goto(addr007a);
         }
         §§goto(addr003d);
      }
      
      private function _EmergencyBook_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.bottom = 0;
               if(_loc2_)
               {
                  _loc1_.left = 10;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._EmergencyBook_StickyNoteComponent1_c()];
                     if(!_loc3_)
                     {
                        §§goto(addr0074);
                     }
                  }
               }
               §§goto(addr0080);
            }
            addr0074:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0080:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _EmergencyBook_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.width = 188;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.bottom = 26;
               if(_loc3_)
               {
                  _loc1_.height = 60;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = -4;
                     if(!_loc2_)
                     {
                        §§goto(addr0074);
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0095);
            }
            §§goto(addr0089);
         }
         addr0074:
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyBook_Array8_c);
         if(_loc3_)
         {
            addr0089:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0095:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Array8_c() : Array
      {
         return [this._EmergencyBook_EmergencyProggresTimerComponent1_i()];
      }
      
      private function _EmergencyBook_EmergencyProggresTimerComponent1_i() : EmergencyProggresTimerComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:EmergencyProggresTimerComponent = new EmergencyProggresTimerComponent();
         if(!_loc2_)
         {
            _loc1_.width = 150;
            if(!_loc2_)
            {
               _loc1_.top = -12;
               if(_loc3_)
               {
                  addr0039:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.revertProgress = true;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr0061);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0061);
               }
               §§goto(addr008d);
            }
            addr0061:
            _loc1_.id = "emergencyTimer";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008d:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0096:
                        this.emergencyTimer = _loc1_;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00a8:
                           BindingManager.executeBindings(this,"emergencyTimer",this.emergencyTimer);
                        }
                     }
                     §§goto(addr00b5);
                  }
               }
               §§goto(addr0096);
            }
            addr00b5:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _EmergencyBook_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr003c:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.top = -74;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "sideContainer";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr009f:
                                    this.sideContainer = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00a9:
                                       BindingManager.executeBindings(this,"sideContainer",this.sideContainer);
                                    }
                                 }
                                 §§goto(addr00b6);
                              }
                           }
                        }
                        §§goto(addr009f);
                     }
                     addr00b6:
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00a9);
            }
         }
         §§goto(addr003c);
      }
      
      private function _EmergencyBook_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.imageNameLeft = "button_icon_arrow_right";
            if(!_loc3_)
            {
               _loc1_.libNameLeft = "gui_popups_emergencyBook";
               if(_loc2_)
               {
                  _loc1_.bottom = 0;
                  if(!_loc3_)
                  {
                     _loc1_.left = 8;
                     if(!_loc3_)
                     {
                        _loc1_.width = 185;
                        if(_loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(!_loc3_)
                           {
                              _loc1_.visible = false;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0088:
                                 _loc1_.addEventListener("click",this.__nextButton_click);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    _loc1_.id = "nextButton";
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00b4:
                                       if(!_loc1_.document)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr00cb:
                                             _loc1_.document = this;
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr00dc);
                                             }
                                             §§goto(addr00e6);
                                          }
                                       }
                                       addr00dc:
                                       this.nextButton = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00e6:
                                          BindingManager.executeBindings(this,"nextButton",this.nextButton);
                                       }
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00e6);
                  }
               }
               §§goto(addr0088);
            }
            addr00f3:
            return _loc1_;
         }
         §§goto(addr00b4);
      }
      
      public function __nextButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleNextClick();
         }
      }
      
      private function _EmergencyBook_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.bottom = 0;
            if(!_loc3_)
            {
               _loc1_.left = 8;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 185;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.addEventListener("click",this.__selectButton_click);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0095:
                              _loc1_.id = "selectButton";
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a8:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00c8:
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          addr00d1:
                                          this.selectButton = _loc1_;
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr00e3:
                                             BindingManager.executeBindings(this,"selectButton",this.selectButton);
                                          }
                                       }
                                    }
                                    §§goto(addr00f0);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00c8);
                           }
                        }
                        §§goto(addr00d1);
                     }
                     addr00f0:
                     return _loc1_;
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00d1);
            }
            §§goto(addr00e3);
         }
         §§goto(addr00a8);
      }
      
      public function __selectButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleSelectClick();
         }
      }
      
      private function _EmergencyBook_MultistateButton3_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.bottom = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = 8;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.width = 185;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.styleName = "confirm";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc3_)
                        {
                           addr008d:
                           _loc1_.visible = false;
                           if(_loc3_)
                           {
                              _loc1_.imageNameLeft = "button_icon_emergency";
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 _loc1_.libNameLeft = "gui_popups_paperPopup";
                                 if(_loc3_)
                                 {
                                    _loc1_.addEventListener("click",this.__startButton_click);
                                    if(_loc3_)
                                    {
                                       _loc1_.id = "startButton";
                                       if(!_loc2_)
                                       {
                                          if(!_loc1_.document)
                                          {
                                             if(!_loc2_)
                                             {
                                                _loc1_.document = this;
                                                if(_loc3_)
                                                {
                                                   addr00eb:
                                                   this.startButton = _loc1_;
                                                   if(!_loc2_)
                                                   {
                                                      addr00f5:
                                                      BindingManager.executeBindings(this,"startButton",this.startButton);
                                                   }
                                                   §§goto(addr0102);
                                                }
                                                §§goto(addr00f5);
                                             }
                                             addr0102:
                                             return _loc1_;
                                          }
                                       }
                                       §§goto(addr00eb);
                                    }
                                 }
                                 §§goto(addr00f5);
                              }
                           }
                           §§goto(addr00eb);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00f5);
               }
               §§goto(addr00a3);
            }
            §§goto(addr008d);
         }
         §§goto(addr00eb);
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleStartClick();
         }
      }
      
      private function _EmergencyBook_Group6_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.left = -23;
            if(_loc3_)
            {
               _loc1_.top = -10;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._EmergencyBook_BriskImageDynaLib2_i(),this._EmergencyBook_BriskImageDynaLib3_i(),this._EmergencyBook_BriskImageDynaLib4_c()];
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "imageGroup";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a9:
                                 this.imageGroup = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00bb:
                                    BindingManager.executeBindings(this,"imageGroup",this.imageGroup);
                                 }
                              }
                           }
                           §§goto(addr00c8);
                        }
                     }
                  }
                  §§goto(addr00a9);
               }
            }
            §§goto(addr00bb);
         }
         addr00c8:
         return _loc1_;
      }
      
      private function _EmergencyBook_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.scaleX = 1;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.scaleY = 1;
               if(!_loc2_)
               {
                  addr0047:
                  _loc1_.top = 26;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.left = 10;
                     if(!_loc2_)
                     {
                        _loc1_.id = "emergencyImageTop";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00aa:
                                    this.emergencyImageTop = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"emergencyImageTop",this.emergencyImageTop);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00b4);
                              }
                              addr00c1:
                              return _loc1_;
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a1);
                     }
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00aa);
            }
            §§goto(addr0047);
         }
         §§goto(addr00aa);
      }
      
      private function _EmergencyBook_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "buildingImage";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007c:
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr008d:
                              this.buildingImage = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"buildingImage",this.buildingImage);
                              }
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr008d);
                  }
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0097);
      }
      
      private function _EmergencyBook_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0085);
         }
         addr002b:
         _loc1_.left = 8;
         if(_loc3_ || _loc3_)
         {
            _loc1_.top = 26;
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "paperclip_quest";
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0071);
               }
               §§goto(addr0085);
            }
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr0085:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.right = -5;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0030:
               _loc1_.top = 16;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.height = 83;
                  if(_loc2_)
                  {
                     _loc1_.width = 638;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._EmergencyBook_BriskImageDynaLib5_c(),this._EmergencyBook_HGroup3_c()];
                        addr0064:
                        if(!(_loc3_ && _loc2_))
                        {
                           addr008f:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0064);
               }
               §§goto(addr008f);
            }
            §§goto(addr00a3);
         }
         §§goto(addr0030);
      }
      
      private function _EmergencyBook_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "bubble_left";
               if(!(_loc3_ && _loc3_))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _EmergencyBook_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  addr004f:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        addr007f:
                        _loc1_.mxmlContent = [this._EmergencyBook_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00a3);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _EmergencyBook_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.maxHeight = 83;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 85;
               if(!_loc2_)
               {
                  addr0050:
                  _loc1_.styleName = "flavorText";
                  if(_loc3_)
                  {
                     _loc1_.typeWriterEffect = false;
                     if(_loc3_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr009d);
               }
               addr0066:
               _loc1_.id = "bubbleText";
               if(!_loc2_)
               {
                  addr007e:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0093:
                           this.bubbleText = _loc1_;
                           if(_loc3_)
                           {
                              addr009d:
                              BindingManager.executeBindings(this,"bubbleText",this.bubbleText);
                           }
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0093);
               }
               addr00aa:
               return _loc1_;
            }
         }
         §§goto(addr0050);
      }
      
      public function ___EmergencyBook_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bubbleText() : LocaLabel
      {
         return this._163334105bubbleText;
      }
      
      public function set bubbleText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._163334105bubbleText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._163334105bubbleText = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingImage() : BriskImageDynaLib
      {
         return this._400476409buildingImage;
      }
      
      public function set buildingImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._400476409buildingImage;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._400476409buildingImage = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingImage",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentLeft() : HGroup
      {
         return this._389389280contentLeft;
      }
      
      public function set contentLeft(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._389389280contentLeft;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._389389280contentLeft = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentLeft",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyImageTop() : BriskImageDynaLib
      {
         return this._1038378667emergencyImageTop;
      }
      
      public function set emergencyImageTop(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1038378667emergencyImageTop;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1038378667emergencyImageTop = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr007b);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr007b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyImageTop",_loc2_,param1));
                  }
               }
               §§goto(addr008a);
            }
            addr008a:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyTimer() : EmergencyProggresTimerComponent
      {
         return this._1260772300emergencyTimer;
      }
      
      public function set emergencyTimer(param1:EmergencyProggresTimerComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1260772300emergencyTimer;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1260772300emergencyTimer = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyTimer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get imageGroup() : Group
      {
         return this._1464992284imageGroup;
      }
      
      public function set imageGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1464992284imageGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1464992284imageGroup = param1;
                  addr0040:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get nextButton() : MultistateButton
      {
         return this._1749722107nextButton;
      }
      
      public function set nextButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1749722107nextButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1749722107nextButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get selectButton() : MultistateButton
      {
         return this._1555143502selectButton;
      }
      
      public function set selectButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1555143502selectButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1555143502selectButton = param1;
                  addr0039:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
            addr0077:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get sideContainer() : Group
      {
         return this._905683178sideContainer;
      }
      
      public function set sideContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._905683178sideContainer;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0049:
                  this._905683178sideContainer = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0080);
            }
            addr008f:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1943111220startButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1943111220startButton = param1;
                  addr0040:
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get successBarComponent() : EmergencySuccessBarComponent
      {
         return this._159927757successBarComponent;
      }
      
      public function set successBarComponent(param1:EmergencySuccessBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._159927757successBarComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._159927757successBarComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"successBarComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
      }
   }
}

