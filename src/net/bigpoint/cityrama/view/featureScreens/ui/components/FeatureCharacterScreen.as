package net.bigpoint.cityrama.view.featureScreens.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class FeatureCharacterScreen extends PaperPopupWindow
   {
      
      public static const INTRO_BUTTON_CLICKED:String = "INTRO_BUTTON_CLICKED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         INTRO_BUTTON_CLICKED = "INTRO_BUTTON_CLICKED";
         if(!_loc1_)
         {
            addr002e:
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
      §§goto(addr002e);
      
      private var _1443225712characterGfx:BriskImageDynaLib;
      
      private var _1790120620characterName:LocaLabel;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _320321758gfxLeft_storyScreen:BriskImageDynaLib;
      
      private var _794730917gfxRight_storyScreen:BriskImageDynaLib;
      
      private var _990699913introductionScreenComponent:HGroup;
      
      private var _1984686051layerButton:MultistateButton;
      
      private var _407411515mainGfx_introductionScreen:BriskImageDynaLib;
      
      private var _1439580930mainGfx_storyScreen:BriskImageDynaLib;
      
      private var _304398368mainLayerHeader_introductionScreen:LocaLabel;
      
      private var _1891767488mainLayerText_introductionScreen:LocaLabel;
      
      private var _724451559mainLayerText_storyScreen:LocaLabel;
      
      private var _1746842564storyScreenComponent:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FeatureCharacterScreenVo;
      
      private var _isDirty:Boolean = false;
      
      public function FeatureCharacterScreen()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               addr0037:
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.showBackButton = false;
                  if(!_loc2_)
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0070);
               }
            }
            addr0065:
            this.styleName = "introduction";
            if(_loc1_)
            {
               addr0070:
               this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FeatureCharacterScreen_Array1_c);
            }
            return;
         }
         §§goto(addr0037);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0048);
            }
            §§goto(addr0064);
         }
         addr0048:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0064:
            this.__moduleFactoryInitialized = true;
         }
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
      
      public function set data(param1:FeatureCharacterScreenVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc2_)
               {
                  this._isDirty = true;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0054:
                     this._data = param1;
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0054);
            }
            addr0059:
            return;
         }
         §§goto(addr0054);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc2_ || Boolean(this))
            {
               §§push(this._isDirty);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0048);
                  }
                  §§goto(addr01a5);
               }
               addr0048:
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this._data);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(!(_loc3_ && _loc1_))
                           {
                              §§goto(addr007f);
                           }
                           §§goto(addr01a5);
                        }
                        §§goto(addr01a2);
                     }
                     §§goto(addr00b4);
                  }
               }
               addr007f:
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this._isDirty = false;
                     if(!_loc3_)
                     {
                        this.setStyle("styleName",this._data.layerStyleName);
                        if(_loc2_ || Boolean(this))
                        {
                           addr00b4:
                           this.title = this._data.title;
                           if(!_loc3_)
                           {
                              addr00c4:
                              this.flavourText.text = this._data.flavourText;
                              if(_loc2_ || _loc3_)
                              {
                                 addr00de:
                                 §§push(this.layerButton);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(this._data);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().buttonLabel);
                                       if(_loc2_)
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr0127:
                                             this.layerButton.toolTip = this._data.buttonTooltip;
                                             addr0124:
                                             addr0120:
                                             addr011c:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                this.characterName.text = this._data.characterName;
                                                if(_loc2_)
                                                {
                                                   addr0148:
                                                   this.characterGfx.briskDynaVo = this._data.characterGfx;
                                                   if(_loc2_)
                                                   {
                                                      addr015b:
                                                      this.introductionScreenComponent.includeInLayout = this.introductionScreenComponent.visible = !this._data.isStoryScreen;
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr0181:
                                                         this.storyScreenComponent.includeInLayout = this.storyScreenComponent.visible = this._data.isStoryScreen;
                                                         if(_loc2_)
                                                         {
                                                            addr019e:
                                                            addr01a5:
                                                            addr01a2:
                                                            if(this._data.isStoryScreen)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  this.mainLayerText_storyScreen.text = this._data.mainLayerText;
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     this.mainGfx_storyScreen.briskDynaVo = this._data.mainGfx;
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr01e3:
                                                                        this.gfxLeft_storyScreen.briskDynaVo = this._data.smallGfxLeft;
                                                                        if(_loc2_)
                                                                        {
                                                                           this.gfxRight_storyScreen.briskDynaVo = this._data.smallGfxRight;
                                                                           if(_loc3_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr022e:
                                                                  this.mainLayerText_introductionScreen.text = this._data.mainLayerText;
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0240:
                                                                     this.mainGfx_introductionScreen.briskDynaVo = this._data.mainGfx;
                                                                  }
                                                               }
                                                               §§goto(addr024e);
                                                            }
                                                            else
                                                            {
                                                               this.mainLayerHeader_introductionScreen.text = this._data.mainLayerTextHeader;
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr022e);
                                                               }
                                                            }
                                                            §§goto(addr0240);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr01e3);
                                                }
                                                §§goto(addr0240);
                                             }
                                             §§goto(addr015b);
                                          }
                                          §§goto(addr019e);
                                       }
                                       §§goto(addr0127);
                                    }
                                    §§goto(addr0124);
                                 }
                                 §§goto(addr0120);
                              }
                           }
                           §§goto(addr011c);
                        }
                        §§goto(addr0148);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr019e);
               }
               addr024e:
               return;
            }
            §§goto(addr0181);
         }
         §§goto(addr00de);
      }
      
      private function handleButtonClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            dispatchEvent(new Event(INTRO_BUTTON_CLICKED,true));
            if(_loc1_)
            {
               addr003a:
               this.layerButton.enabled = false;
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function _FeatureCharacterScreen_Array1_c() : Array
      {
         return [this._FeatureCharacterScreen_Group1_c(),this._FeatureCharacterScreen_Group5_c(),this._FeatureCharacterScreen_Group6_c(),this._FeatureCharacterScreen_MultistateButton1_i()];
      }
      
      private function _FeatureCharacterScreen_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.right = 5;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.width = 520;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0058);
               }
               §§goto(addr009b);
            }
            §§goto(addr006a);
         }
         addr0058:
         _loc1_.top = 70;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib1_c(),this._FeatureCharacterScreen_HGroup1_i(),this._FeatureCharacterScreen_HGroup3_i()];
            addr006a:
            if(!(_loc3_ && _loc2_))
            {
               addr009b:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr00a7:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00ab);
            }
            §§goto(addr00a7);
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0057:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005b);
               }
            }
            §§goto(addr0057);
         }
         addr005b:
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.top = 40;
            if(!_loc3_)
            {
               _loc1_.right = 2;
               if(!_loc3_)
               {
                  addr003d:
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.visible = false;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0076:
                           _loc1_.mxmlContent = [this._FeatureCharacterScreen_VGroup1_c(),this._FeatureCharacterScreen_Group3_c()];
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.id = "introductionScreenComponent";
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a7:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00c8);
                                    }
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00db);
                           }
                           §§goto(addr00a7);
                        }
                        addr00c8:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr00d1:
                           this.introductionScreenComponent = _loc1_;
                           if(!_loc3_)
                           {
                              addr00db:
                              BindingManager.executeBindings(this,"introductionScreenComponent",this.introductionScreenComponent);
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr003d);
         }
         §§goto(addr0076);
      }
      
      private function _FeatureCharacterScreen_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 260;
               if(_loc3_)
               {
                  addr0058:
                  _loc1_.mxmlContent = [this._FeatureCharacterScreen_Group2_c(),this._FeatureCharacterScreen_HGroup2_c()];
                  if(!_loc2_)
                  {
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
                  §§goto(addr007a);
               }
               addr007e:
               return _loc1_;
            }
            §§goto(addr007a);
         }
         §§goto(addr0058);
      }
      
      private function _FeatureCharacterScreen_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 250;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._FeatureCharacterScreen_Rect1_c(),this._FeatureCharacterScreen_LocaLabel1_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     addr007c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0090:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr007c);
            }
            §§goto(addr0090);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.left = 5;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.right = 5;
               if(!_loc2_)
               {
                  _loc1_.bottomLeftRadiusX = 10;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.bottomLeftRadiusY = 30;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr0102);
                  }
                  §§goto(addr00a2);
               }
               addr006d:
               _loc1_.bottomRightRadiusX = 10;
               if(!_loc2_)
               {
                  _loc1_.bottomRightRadiusY = 30;
                  if(!_loc2_)
                  {
                     _loc1_.topLeftRadiusX = 10;
                     if(_loc3_ || _loc3_)
                     {
                        addr00a2:
                        _loc1_.topLeftRadiusY = 30;
                        if(!_loc2_)
                        {
                           §§goto(addr00ad);
                        }
                        §§goto(addr00c3);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00a2);
               }
               addr00ad:
               _loc1_.topRightRadiusX = 10;
               if(_loc3_)
               {
                  addr00b8:
                  _loc1_.topRightRadiusY = 30;
                  if(_loc3_)
                  {
                     addr00c3:
                     _loc1_.height = 25;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.maxHeight = 25;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00f3:
                           _loc1_.fill = this._FeatureCharacterScreen_RadialGradient1_c();
                           if(!_loc2_)
                           {
                              addr0102:
                              _loc1_.filters = [this._FeatureCharacterScreen_DropShadowFilter1_c()];
                              if(!_loc2_)
                              {
                                 addr0113:
                                 _loc1_.initialized(this,null);
                              }
                           }
                           §§goto(addr011a);
                        }
                        §§goto(addr0113);
                     }
                     §§goto(addr011a);
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr011a);
            }
            addr011a:
            return _loc1_;
         }
         §§goto(addr0102);
      }
      
      private function _FeatureCharacterScreen_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.entries = [this._FeatureCharacterScreen_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc2_)
         {
            _loc1_.color = 165328;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.ratio = 0.5;
               if(!_loc2_)
               {
                  addr004c:
                  _loc1_.alpha = 0.45;
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _FeatureCharacterScreen_DropShadowFilter1_c() : DropShadowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc3_)
         {
            _loc1_.distance = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.blurX = 3;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.blurY = 3;
                  if(_loc3_)
                  {
                     addr006b:
                     _loc1_.color = 165328;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr007e:
                        _loc1_.alpha = 0.45;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr006b);
      }
      
      private function _FeatureCharacterScreen_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.verticalCenter = 4;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr003b:
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "infrastructureFeatureScreenHeader";
                     if(!_loc2_)
                     {
                        _loc1_.id = "mainLayerHeader_introductionScreen";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr007d:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr0099);
                                 }
                                 §§goto(addr00ab);
                              }
                           }
                        }
                     }
                  }
                  addr0099:
                  this.mainLayerHeader_introductionScreen = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00ab:
                     BindingManager.executeBindings(this,"mainLayerHeader_introductionScreen",this.mainLayerHeader_introductionScreen);
                  }
                  §§goto(addr00b8);
               }
               addr00b8:
               return _loc1_;
            }
            §§goto(addr003b);
         }
         §§goto(addr007d);
      }
      
      private function _FeatureCharacterScreen_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = -1;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentWidth = 90;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.height = 160;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._FeatureCharacterScreen_LocaLabel2_i()];
                           addr008f:
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00b2);
                           }
                           §§goto(addr00c6);
                        }
                        addr00b2:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00c6:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr008f);
               }
               addr00ca:
               return _loc1_;
            }
            §§goto(addr00b2);
         }
         §§goto(addr008f);
      }
      
      private function _FeatureCharacterScreen_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "mainflavourIfiScreen";
            if(!_loc3_)
            {
               addr002c:
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.id = "mainLayerText_introductionScreen";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006e:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0077:
                              this.mainLayerText_introductionScreen = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0089:
                                 BindingManager.executeBindings(this,"mainLayerText_introductionScreen",this.mainLayerText_introductionScreen);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr0089);
                        }
                        addr0096:
                        return _loc1_;
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0089);
            }
            §§goto(addr006e);
         }
         §§goto(addr002c);
      }
      
      private function _FeatureCharacterScreen_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr0048:
               _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib2_i(),this._FeatureCharacterScreen_BriskImageDynaLib3_c(),this._FeatureCharacterScreen_BriskImageDynaLib4_c()];
               if(_loc2_)
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
         §§goto(addr0048);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "iquest_academy";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.right = 17;
                  if(_loc3_)
                  {
                     _loc1_.id = "mainGfx_introductionScreen";
                     if(_loc3_)
                     {
                        addr005e:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr006a:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0086:
                                 this.mainGfx_introductionScreen = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr0098:
                                    BindingManager.executeBindings(this,"mainGfx_introductionScreen",this.mainGfx_introductionScreen);
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr0098);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr006a);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0086);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr007a);
            }
            addr0051:
            _loc1_.top = -8;
            if(!_loc3_)
            {
               addr005b:
               _loc1_.width = 130;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr007a:
                  _loc1_.horizontalCenter = -1;
                  if(!(_loc3_ && Boolean(this)))
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
            }
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc2_ || Boolean(this))
               {
                  addr005a:
                  _loc1_.bottom = -5;
                  if(_loc2_)
                  {
                     _loc1_.width = 130;
                     if(!_loc3_)
                     {
                        _loc1_.horizontalCenter = -1;
                        addr0070:
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr00a2);
                     }
                     addr008e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00a2:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00a2);
               }
               addr00a6:
               return _loc1_;
            }
            §§goto(addr0070);
         }
         §§goto(addr005a);
      }
      
      private function _FeatureCharacterScreen_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.top = 40;
            if(!_loc2_)
            {
               _loc1_.right = 2;
               if(!_loc2_)
               {
                  _loc1_.gap = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.includeInLayout = false;
                     if(!_loc2_)
                     {
                        addr005c:
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           §§goto(addr0065);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00c2);
                  }
                  addr0065:
                  _loc1_.mxmlContent = [this._FeatureCharacterScreen_VGroup2_c(),this._FeatureCharacterScreen_Group4_c()];
                  if(_loc3_)
                  {
                     _loc1_.id = "storyScreenComponent";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00b8:
                                 this.storyScreenComponent = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00c2:
                                    BindingManager.executeBindings(this,"storyScreenComponent",this.storyScreenComponent);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00c2);
                  }
                  addr00cf:
                  return _loc1_;
               }
               §§goto(addr00b8);
            }
            §§goto(addr005c);
         }
         §§goto(addr00c2);
      }
      
      private function _FeatureCharacterScreen_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._FeatureCharacterScreen_HGroup4_c(),this._FeatureCharacterScreen_LocaLabel3_i()];
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0066);
               }
               §§goto(addr007a);
            }
         }
         addr0066:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc2_)
            {
               addr007a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib5_i(),this._FeatureCharacterScreen_BriskImageDynaLib6_i()];
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0072:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "iquest_firedept";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "gfxLeft_storyScreen";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0084);
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr008d);
            }
            §§goto(addr009f);
         }
         addr0084:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr008d:
            this.gfxLeft_storyScreen = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr009f:
               BindingManager.executeBindings(this,"gfxLeft_storyScreen",this.gfxLeft_storyScreen);
            }
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "iquest_catshot";
               if(_loc2_)
               {
                  _loc1_.id = "gfxRight_storyScreen";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr006e);
                        }
                     }
                     §§goto(addr008b);
                  }
                  addr006e:
                  _loc1_.document = this;
                  if(_loc2_ || _loc3_)
                  {
                     addr008b:
                     this.gfxRight_storyScreen = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"gfxRight_storyScreen",this.gfxRight_storyScreen);
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr009d);
            }
            addr00aa:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _FeatureCharacterScreen_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalCenter = -2;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 240;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.styleName = "infraStoryLayerSmallFlavourText";
                  if(_loc3_ || Boolean(this))
                  {
                     addr006e:
                     _loc1_.id = "mainLayerText_storyScreen";
                     if(_loc3_ || _loc2_)
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00ad:
                                 this.mainLayerText_storyScreen = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00b7:
                                    BindingManager.executeBindings(this,"mainLayerText_storyScreen",this.mainLayerText_storyScreen);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00b7);
               }
               addr00c4:
               return _loc1_;
            }
            §§goto(addr006e);
         }
         §§goto(addr0081);
      }
      
      private function _FeatureCharacterScreen_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib7_i(),this._FeatureCharacterScreen_BriskImageDynaLib8_c(),this._FeatureCharacterScreen_BriskImageDynaLib9_c()];
               §§goto(addr0047);
            }
            §§goto(addr0077);
         }
         addr0047:
         if(!(_loc2_ && _loc2_))
         {
            addr0077:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "iquest_gradeshot";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "mainGfx_storyScreen";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0089:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0092:
                              this.mainGfx_storyScreen = _loc1_;
                              if(_loc3_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"mainGfx_storyScreen",this.mainGfx_storyScreen);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr009c);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = -8;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.width = 130;
                     if(!_loc3_)
                     {
                        _loc1_.horizontalCenter = -1;
                        if(!_loc3_)
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr00a3);
                     }
                     addr008f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00a3);
               }
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr00a3);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr005c);
            }
            addr0051:
            _loc1_.bottom = -5;
            if(!_loc2_)
            {
               addr005c:
               _loc1_.width = 130;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.horizontalCenter = -1;
                  if(!_loc2_)
                  {
                     §§goto(addr0083);
                  }
                  §§goto(addr0097);
               }
            }
            addr0083:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0097:
                  _loc1_.document = this;
               }
            }
            §§goto(addr009b);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.top = 90;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = 20;
               if(_loc3_ || Boolean(this))
               {
                  addr0065:
                  _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib10_i(),this._FeatureCharacterScreen_LocaLabel4_i()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008f:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr008f);
         }
         §§goto(addr0065);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "iquest_teacher";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 10;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr006d:
                     _loc1_.horizontalCenter = -1;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.id = "characterGfx";
                        if(!_loc3_)
                        {
                           addr008a:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00ad);
                                 }
                                 §§goto(addr00bf);
                              }
                           }
                           addr00ad:
                           this.characterGfx = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00bf:
                              BindingManager.executeBindings(this,"characterGfx",this.characterGfx);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00bf);
                  }
                  addr00cc:
                  return _loc1_;
               }
               §§goto(addr008a);
            }
            §§goto(addr006d);
         }
         §§goto(addr00bf);
      }
      
      private function _FeatureCharacterScreen_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 185;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.bottom = 13;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.styleName = "featureBubbleText";
                     if(!_loc2_)
                     {
                        addr0073:
                        _loc1_.id = "characterName";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00a7:
                                    this.characterName = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00b1:
                                       BindingManager.executeBindings(this,"characterName",this.characterName);
                                    }
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00b1);
                           }
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr0073);
               }
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr00b1);
      }
      
      private function _FeatureCharacterScreen_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.top = 18;
            if(_loc2_ || _loc3_)
            {
               addr0053:
               _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib11_c(),this._FeatureCharacterScreen_HGroup5_c()];
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007d:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0053);
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bubble-top";
               addr0037:
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0069);
            }
            addr006d:
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _FeatureCharacterScreen_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 700;
            if(_loc2_ || _loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.top = 8;
                     if(_loc2_)
                     {
                        _loc1_.height = 62;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0086:
                           _loc1_.horizontalCenter = 0;
                           if(_loc2_)
                           {
                              addr009d:
                              _loc1_.mxmlContent = [this._FeatureCharacterScreen_LocaLabel5_i()];
                              if(!_loc3_)
                              {
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00c1);
                           }
                           addr00ad:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00c1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr009d);
            }
            addr00c5:
            return _loc1_;
         }
         §§goto(addr00c1);
      }
      
      private function _FeatureCharacterScreen_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.id = "flavourText";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0090:
                                 this.flavourText = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
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
                  §§goto(addr007f);
               }
               §§goto(addr0090);
            }
            §§goto(addr009a);
         }
         §§goto(addr007f);
      }
      
      private function _FeatureCharacterScreen_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.bottom = 15;
            if(_loc3_)
            {
               _loc1_.right = 5;
               if(!_loc2_)
               {
                  _loc1_.width = 184;
                  if(_loc3_ || _loc2_)
                  {
                     addr005f:
                     _loc1_.addEventListener("click",this.__layerButton_click);
                     if(!_loc2_)
                     {
                        _loc1_.id = "layerButton";
                        if(_loc3_)
                        {
                           addr007a:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0086:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00a3);
                                 }
                                 §§goto(addr00b5);
                              }
                           }
                           addr00a3:
                           this.layerButton = _loc1_;
                           if(_loc3_ || _loc2_)
                           {
                              addr00b5:
                              BindingManager.executeBindings(this,"layerButton",this.layerButton);
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0086);
                  }
                  addr00c2:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
            §§goto(addr0086);
         }
         §§goto(addr007a);
      }
      
      public function __layerButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.handleButtonClick();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterGfx() : BriskImageDynaLib
      {
         return this._1443225712characterGfx;
      }
      
      public function set characterGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1443225712characterGfx;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1443225712characterGfx = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006e);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterGfx",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get characterName() : LocaLabel
      {
         return this._1790120620characterName;
      }
      
      public function set characterName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1790120620characterName;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1790120620characterName = param1;
                  addr0045:
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterName",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0045);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get gfxLeft_storyScreen() : BriskImageDynaLib
      {
         return this._320321758gfxLeft_storyScreen;
      }
      
      public function set gfxLeft_storyScreen(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._320321758gfxLeft_storyScreen;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._320321758gfxLeft_storyScreen = param1;
                  if(_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxLeft_storyScreen",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0052);
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get gfxRight_storyScreen() : BriskImageDynaLib
      {
         return this._794730917gfxRight_storyScreen;
      }
      
      public function set gfxRight_storyScreen(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._794730917gfxRight_storyScreen;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._794730917gfxRight_storyScreen = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxRight_storyScreen",_loc2_,param1));
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
      public function get introductionScreenComponent() : HGroup
      {
         return this._990699913introductionScreenComponent;
      }
      
      public function set introductionScreenComponent(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._990699913introductionScreenComponent;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._990699913introductionScreenComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introductionScreenComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1984686051layerButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0064);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGfx_introductionScreen() : BriskImageDynaLib
      {
         return this._407411515mainGfx_introductionScreen;
      }
      
      public function set mainGfx_introductionScreen(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._407411515mainGfx_introductionScreen;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._407411515mainGfx_introductionScreen = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGfx_introductionScreen",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0051);
            }
            addr0060:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGfx_storyScreen() : BriskImageDynaLib
      {
         return this._1439580930mainGfx_storyScreen;
      }
      
      public function set mainGfx_storyScreen(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1439580930mainGfx_storyScreen;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1439580930mainGfx_storyScreen = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGfx_storyScreen",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLayerHeader_introductionScreen() : LocaLabel
      {
         return this._304398368mainLayerHeader_introductionScreen;
      }
      
      public function set mainLayerHeader_introductionScreen(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._304398368mainLayerHeader_introductionScreen;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._304398368mainLayerHeader_introductionScreen = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006a);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLayerHeader_introductionScreen",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLayerText_introductionScreen() : LocaLabel
      {
         return this._1891767488mainLayerText_introductionScreen;
      }
      
      public function set mainLayerText_introductionScreen(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1891767488mainLayerText_introductionScreen;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1891767488mainLayerText_introductionScreen = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLayerText_introductionScreen",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLayerText_storyScreen() : LocaLabel
      {
         return this._724451559mainLayerText_storyScreen;
      }
      
      public function set mainLayerText_storyScreen(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._724451559mainLayerText_storyScreen;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._724451559mainLayerText_storyScreen = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLayerText_storyScreen",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get storyScreenComponent() : HGroup
      {
         return this._1746842564storyScreenComponent;
      }
      
      public function set storyScreenComponent(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1746842564storyScreenComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1746842564storyScreenComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storyScreenComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0052);
               }
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
   }
}

