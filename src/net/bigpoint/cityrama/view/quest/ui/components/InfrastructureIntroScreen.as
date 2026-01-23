package net.bigpoint.cityrama.view.quest.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class InfrastructureIntroScreen extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _97921but:MultistateButton;
      
      private var _1790120620characterName:LocaLabel;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _871500217introText:LocaLabel;
      
      private var _966525464mainflavour:LocaLabel;
      
      private var _683548987mainflavourHeader:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _creationIsDirty:Boolean = false;
      
      public function InfrastructureIntroScreen()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  addr0041:
                  this.showBackButton = false;
                  if(!_loc2_)
                  {
                     addr0055:
                     this.styleName = "infrastructureintro";
                     if(_loc1_ || _loc1_)
                     {
                        this.mxmlContentFactory = new DeferredInstanceFromFunction(this._InfrastructureIntroScreen_Array1_c);
                        if(_loc1_)
                        {
                           addr007e:
                           this.addEventListener("creationComplete",this.___InfrastructureIntroScreen_PaperPopupWindow1_creationComplete);
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007e);
               }
               addr008a:
               return;
            }
            §§goto(addr0041);
         }
         §§goto(addr0055);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0039);
                  }
               }
               §§goto(addr0047);
            }
            addr0039:
            return;
         }
         addr0047:
         this.__moduleFactoryInitialized = true;
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
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._creationIsDirty = true;
            if(!_loc2_)
            {
               addr0027:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc1_ && _loc1_))
            {
               if(this._creationIsDirty)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this._creationIsDirty = false;
                     if(_loc2_ || _loc1_)
                     {
                        this.title = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.title");
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr014d);
                     }
                     addr0074:
                     this.flavourText.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.flavour");
                     if(_loc2_ || _loc1_)
                     {
                        addr009d:
                        this.mainflavourHeader.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.maintextHeader");
                        if(_loc2_ || Boolean(this))
                        {
                           this.mainflavour.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.maintext");
                           if(_loc2_)
                           {
                              addr00d3:
                              §§push(this.but);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push(LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.button"));
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§pop().label = §§pop();
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr011d:
                                       this.but.toolTip = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.button.tooltip");
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr0136:
                                          this.introText.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.sideAdvisorInfo");
                                          if(_loc2_)
                                          {
                                             addr014d:
                                             this.characterName.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.charName");
                                          }
                                       }
                                       addr0111:
                                    }
                                    §§goto(addr015f);
                                 }
                                 §§goto(addr011d);
                              }
                              §§goto(addr0111);
                           }
                           §§goto(addr015f);
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr015f);
                  }
                  §§goto(addr00d3);
               }
               addr015f:
               return;
            }
            §§goto(addr009d);
         }
         §§goto(addr0136);
      }
      
      private function _InfrastructureIntroScreen_Array1_c() : Array
      {
         return [this._InfrastructureIntroScreen_Group1_c(),this._InfrastructureIntroScreen_Group4_c(),this._InfrastructureIntroScreen_Group5_c(),this._InfrastructureIntroScreen_Group7_c(),this._InfrastructureIntroScreen_MultistateButton1_i()];
      }
      
      private function _InfrastructureIntroScreen_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.right = 5;
            if(_loc3_)
            {
               _loc1_.width = 520;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 70;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006a:
                     _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib1_c(),this._InfrastructureIntroScreen_HGroup1_c()];
                     if(_loc3_ || Boolean(this))
                     {
                        addr0088:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0094:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr006a);
            }
            §§goto(addr0088);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc2_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr006b);
            }
            addr0057:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr006b:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _InfrastructureIntroScreen_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = 40;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 2;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._InfrastructureIntroScreen_VGroup1_c(),this._InfrastructureIntroScreen_Group3_c()];
                     addr0057:
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0095:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0095);
               }
            }
         }
         §§goto(addr0057);
      }
      
      private function _InfrastructureIntroScreen_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.width = 260;
               addr0029:
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._InfrastructureIntroScreen_Group2_c(),this._InfrastructureIntroScreen_LocaLabel2_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0071:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0071);
            }
            §§goto(addr007d);
         }
         §§goto(addr0029);
      }
      
      private function _InfrastructureIntroScreen_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 250;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._InfrastructureIntroScreen_Rect1_c(),this._InfrastructureIntroScreen_LocaLabel1_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     addr007a:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr008e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr008e);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr008e);
         }
         §§goto(addr007a);
      }
      
      private function _InfrastructureIntroScreen_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.left = 5;
            if(_loc2_)
            {
               _loc1_.right = 5;
               if(_loc2_)
               {
                  _loc1_.bottomLeftRadiusX = 10;
                  if(!_loc3_)
                  {
                     _loc1_.bottomLeftRadiusY = 30;
                     if(!_loc3_)
                     {
                        addr004a:
                        _loc1_.bottomRightRadiusX = 10;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr005d:
                           _loc1_.bottomRightRadiusY = 30;
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.topLeftRadiusX = 10;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0092:
                                 _loc1_.topLeftRadiusY = 30;
                                 if(_loc2_)
                                 {
                                    _loc1_.topRightRadiusX = 10;
                                    if(!_loc3_)
                                    {
                                       _loc1_.topRightRadiusY = 30;
                                       if(!_loc3_)
                                       {
                                          addr00b3:
                                          _loc1_.height = 25;
                                          if(!_loc3_)
                                          {
                                             _loc1_.maxHeight = 25;
                                             if(!_loc3_)
                                             {
                                                §§goto(addr00d5);
                                             }
                                             §§goto(addr00e4);
                                          }
                                          addr00d5:
                                          _loc1_.fill = this._InfrastructureIntroScreen_RadialGradient1_c();
                                          if(_loc2_)
                                          {
                                             addr00e4:
                                             _loc1_.filters = [this._InfrastructureIntroScreen_DropShadowFilter1_c()];
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00fd:
                                                _loc1_.initialized(this,null);
                                             }
                                          }
                                          §§goto(addr0104);
                                       }
                                    }
                                    §§goto(addr0104);
                                 }
                                 §§goto(addr00d5);
                              }
                              addr0104:
                              return _loc1_;
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr004a);
               }
               §§goto(addr00d5);
            }
            §§goto(addr0092);
         }
         §§goto(addr00fd);
      }
      
      private function _InfrastructureIntroScreen_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.entries = [this._InfrastructureIntroScreen_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_)
         {
            _loc1_.color = 165328;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0040);
            }
            §§goto(addr0053);
         }
         addr0040:
         _loc1_.ratio = 0.5;
         if(_loc2_ || Boolean(this))
         {
            addr0053:
            _loc1_.alpha = 0.45;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.distance = 0;
            if(_loc2_)
            {
               _loc1_.blurX = 3;
               if(!_loc3_)
               {
                  addr005a:
                  _loc1_.blurY = 3;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr006d:
                     _loc1_.color = 165328;
                     if(!_loc3_)
                     {
                        addr0078:
                        _loc1_.alpha = 0.45;
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0078);
               }
               addr007e:
               return _loc1_;
            }
            §§goto(addr006d);
         }
         §§goto(addr005a);
      }
      
      private function _InfrastructureIntroScreen_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 4;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr0033);
               }
               §§goto(addr007a);
            }
            addr0033:
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr003d:
               _loc1_.styleName = "infrastructureFeatureScreenHeader";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.text = "dev";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "mainflavourHeader";
                     if(!_loc3_)
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a5:
                                 this.mainflavourHeader = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b7:
                                    BindingManager.executeBindings(this,"mainflavourHeader",this.mainflavourHeader);
                                 }
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr00b7);
                        }
                     }
                  }
                  §§goto(addr00a5);
               }
            }
            addr00c4:
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _InfrastructureIntroScreen_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.verticalCenter = -2;
            if(_loc3_)
            {
               addr002c:
               _loc1_.percentWidth = 80;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.styleName = "mainflavourIfiScreen";
                  if(_loc3_ || _loc3_)
                  {
                     addr005d:
                     _loc1_.text = "dev";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "mainflavour";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a2:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b3:
                                    this.mainflavour = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"mainflavour",this.mainflavour);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00bd);
                              }
                              addr00ca:
                              return _loc1_;
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00bd);
                     }
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0083);
            }
            §§goto(addr005d);
         }
         §§goto(addr002c);
      }
      
      private function _InfrastructureIntroScreen_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib2_c(),this._InfrastructureIntroScreen_BriskImageDynaLib3_c(),this._InfrastructureIntroScreen_BriskImageDynaLib4_c()];
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr008b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr008b);
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0053);
            }
            §§goto(addr0075);
         }
         addr0053:
         _loc1_.dynaBmpSourceName = "iquest_firepic";
         if(_loc3_)
         {
            _loc1_.right = 17;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0075:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr0075);
         }
         addr0079:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               addr0029:
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc2_)
               {
                  addr003f:
                  _loc1_.top = -8;
                  if(!_loc3_)
                  {
                     _loc1_.width = 130;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0066:
                        _loc1_.horizontalCenter = -1;
                        if(_loc2_)
                        {
                           addr0070:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0084:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0088);
                        }
                        §§goto(addr0084);
                     }
                     addr0088:
                     return _loc1_;
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0070);
            }
            §§goto(addr003f);
         }
         §§goto(addr0029);
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc3_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0085);
            }
            §§goto(addr0099);
         }
         addr0051:
         _loc1_.bottom = -5;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 130;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = -1;
               if(_loc3_)
               {
                  addr0085:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0099:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0099);
            }
         }
         addr009d:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 90;
            if(!_loc2_)
            {
               _loc1_.left = 20;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib5_i(),this._InfrastructureIntroScreen_LocaLabel3_i()];
                  if(!_loc2_)
                  {
                     addr0062:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0062);
            }
         }
         §§goto(addr0076);
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "iquest_sarika";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.top = 10;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = -1;
                     if(_loc3_)
                     {
                        addr0078:
                        _loc1_.id = "polaroidImage";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00ab:
                                    this.polaroidImage = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                                    }
                                 }
                              }
                              §§goto(addr00ca);
                           }
                        }
                        §§goto(addr00ab);
                     }
                     addr00ca:
                     return _loc1_;
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr0078);
            }
            §§goto(addr00bd);
         }
         §§goto(addr0078);
      }
      
      private function _InfrastructureIntroScreen_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 185;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.bottom = 13;
               if(!_loc2_)
               {
                  addr0048:
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_)
                  {
                     _loc1_.styleName = "featureBubbleText";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.text = "dev";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0085:
                           _loc1_.id = "characterName";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00a4:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00c2:
                                       this.characterName = _loc1_;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00d4:
                                          BindingManager.executeBindings(this,"characterName",this.characterName);
                                       }
                                       §§goto(addr00e1);
                                    }
                                    §§goto(addr00d4);
                                 }
                                 addr00e1:
                                 return _loc1_;
                              }
                           }
                        }
                        §§goto(addr00c2);
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr00a4);
            }
         }
         §§goto(addr0048);
      }
      
      private function _InfrastructureIntroScreen_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 250;
            if(_loc2_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0061);
         }
         addr002b:
         _loc1_.left = 205;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 140;
            if(_loc2_)
            {
               addr0061:
               _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib6_c(),this._InfrastructureIntroScreen_BriskImageDynaLib7_c(),this._InfrastructureIntroScreen_Group6_c(),this._InfrastructureIntroScreen_HGroup2_c()];
               if(!_loc3_)
               {
                  addr0083:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0083);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bubble_small";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.bottom = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.left = 0;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0085);
            }
            §§goto(addr0081);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               addr003c:
               _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr006d:
                     _loc1_.left = 20;
                     if(_loc2_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0083);
                  }
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0083:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr003c);
      }
      
      private function _InfrastructureIntroScreen_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = 40;
            if(_loc3_)
            {
               _loc1_.right = 16;
               if(!_loc2_)
               {
                  addr0041:
                  _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib8_c()];
                  if(_loc3_)
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr005d);
               }
               addr0051:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr005d:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0041);
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "iquest_bell";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0068:
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0088);
               }
               addr008c:
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0068);
      }
      
      private function _InfrastructureIntroScreen_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.top = 30;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 60;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 180;
                  if(!_loc3_)
                  {
                     _loc1_.height = 94;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0080:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._InfrastructureIntroScreen_LocaLabel4_i()];
                              if(!_loc3_)
                              {
                                 addr00a8:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00bc:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr00bc);
            }
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "welcomeIntroText";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "introText";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr00a0);
            }
            addr0085:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr008e:
               this.introText = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr00a0:
                  BindingManager.executeBindings(this,"introText",this.introText);
               }
            }
            §§goto(addr00ad);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.top = 18;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib9_c(),this._InfrastructureIntroScreen_HGroup3_c()];
               if(!(_loc2_ && _loc2_))
               {
                  addr0070:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0070);
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "bubble-top";
               §§goto(addr0045);
            }
            §§goto(addr0079);
         }
         addr0045:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0079:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 700;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0066:
                     _loc1_.top = 8;
                     if(!_loc3_)
                     {
                        addr0070:
                        _loc1_.height = 62;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.horizontalCenter = 0;
                           if(_loc2_)
                           {
                              addr0099:
                              _loc1_.mxmlContent = [this._InfrastructureIntroScreen_LocaLabel5_i()];
                              if(_loc2_)
                              {
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr0099);
                     }
                     addr00a9:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr00bd:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr0070);
               }
            }
            addr00c1:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _InfrastructureIntroScreen_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(_loc3_ || _loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr008a:
                                 this.flavourText = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0094:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0094);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr0075);
      }
      
      private function _InfrastructureIntroScreen_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.bottom = 15;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.right = 5;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 184;
                  if(_loc2_)
                  {
                     _loc1_.label = "Button";
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.id = "but";
                        if(_loc2_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr007d:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr0099:
                                    this.but = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00ab:
                                       BindingManager.executeBindings(this,"but",this.but);
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00ab);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0066);
            }
            §§goto(addr00ab);
         }
         addr00b8:
         return _loc1_;
      }
      
      public function ___InfrastructureIntroScreen_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get but() : MultistateButton
      {
         return this._97921but;
      }
      
      public function set but(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._97921but;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._97921but = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"but",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get characterName() : LocaLabel
      {
         return this._1790120620characterName;
      }
      
      public function set characterName(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1790120620characterName;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1790120620characterName = param1;
                  addr0042:
                  if(_loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterName",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0042);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._800887486flavourText = param1;
                  addr0047:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get introText() : LocaLabel
      {
         return this._871500217introText;
      }
      
      public function set introText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._871500217introText;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._871500217introText = param1;
                  addr0040:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005e);
            }
            addr007c:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainflavour() : LocaLabel
      {
         return this._966525464mainflavour;
      }
      
      public function set mainflavour(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._966525464mainflavour;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._966525464mainflavour = param1;
                  addr0046:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainflavour",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainflavourHeader() : LocaLabel
      {
         return this._683548987mainflavourHeader;
      }
      
      public function set mainflavourHeader(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._683548987mainflavourHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._683548987mainflavourHeader = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainflavourHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
         }
         addr007b:
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._2112922897polaroidImage = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

