package net.bigpoint.cityrama.view.application.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import flex.util.ui.throbber.SimpleThrobber;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.application.ui.skins.RoundedBorderContainerSkin;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolSideMenu;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorSideMenu;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDaySideMenu;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareSideMenu;
   import net.bigpoint.cityrama.view.emergencyTV.components.EmergencyTV;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventSideMenu;
   import net.bigpoint.cityrama.view.hud.ui.components.HUDBar;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.MainMenuComponent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestSideMenu;
   import net.bigpoint.cityrama.view.settingsbar.ui.components.SettingsBarView;
   import net.bigpoint.cityrama.view.settingsbar.ui.dev.QMConsole;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   import spark.layouts.BasicLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class MainView extends SkinnableContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && MainView))
      {
         _skinParts = {"contentGroup":false};
      }
      
      private var _1435677619animationlayer:SpriteVisualElement;
      
      private var _1295031491backgroundLayer:SpriteVisualElement;
      
      private var _363462003bonusDaySideMenu:BonusDaySideMenu;
      
      private var _1829289506citySquareSideMenu:CitySquareSideMenu;
      
      private var _1252512586confirmationGroup:Group;
      
      private var _95458899debug:SpriteVisualElement;
      
      private var _1060074073dropIconsAnimation:SpriteVisualElement;
      
      private var _2113777619emergencyTV:EmergencyTV;
      
      private var _822511234featuredEventSideMenu:FeaturedEventSideMenu;
      
      private var _588300439fieldlayer:SpriteVisualElement;
      
      private var _1206437988hudBar:HUDBar;
      
      private var _15981585infoandIconLayer:Group;
      
      private var _1590589631inventoryTopBarView:Group;
      
      private var _1127858469mainMenuComponent:MainMenuComponent;
      
      private var _1470952182modalCover:Group;
      
      private var _414951403modalCoverTop:Group;
      
      private var _1625777113mouseAttachLayer:MouseAttachLayerView;
      
      private var _2071765566patrolSideMenu:PatrolSideMenu;
      
      private var _450167499popupContainer:Group;
      
      private var _2051980320popupContainerTop:Group;
      
      private var _779330213popupStackContainer:Group;
      
      private var _1566742416popupStackContainerTop:Group;
      
      private var _1605401341preloader_ui:UIComponent;
      
      private var _1225037723qmConsole:QMConsole;
      
      private var _985870572questSideInfoView:QuestSideMenu;
      
      private var _457243152rentCollectorSideView:RentCollectorSideMenu;
      
      private var _3959901settingBar:SettingsBarView;
      
      private var _155134962statsLayer:SpriteVisualElement;
      
      private var _491527052uiInfolayerView:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private const simpleThrobber:SimpleThrobber;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MainView()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§push(null);
            if(!(_loc4_ && Boolean(this)))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0046:
                     §§pop().§§slot[5] = null;
                     addr0045:
                     if(!_loc4_)
                     {
                        this.simpleThrobber = new SimpleThrobber(50,50,5);
                        if(_loc3_ || _loc1_)
                        {
                           this.mx_internal::_bindings = [];
                           if(!(_loc4_ && _loc3_))
                           {
                              addr0081:
                              this.mx_internal::_watchers = [];
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsByDestination = {};
                                 if(!_loc4_)
                                 {
                                    addr0098:
                                    this.mx_internal::_bindingsBeginWithWord = {};
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       super();
                                       if(!_loc4_)
                                       {
                                          addr00b5:
                                          mx_internal::_document = this;
                                          if(_loc3_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc3_)
                                             {
                                                addr00ce:
                                                §§pop().§§slot[1] = this._MainView_bindingsSetup();
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr00e6:
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§§slot[2] = [];
                                                      if(!_loc4_)
                                                      {
                                                         addr00f9:
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().§§slot[3] = this;
                                                            if(!_loc4_)
                                                            {
                                                               if(_watcherSetupUtil == null)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr011a:
                                                                     §§push(§§newactivation());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_application_ui_components_MainViewWatcherSetupUtil");
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr0149:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0150:
                                                                              §§pop().§§slot[5]["init"](null);
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 addr016f:
                                                                                 _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                 {
                                                                                    return target[param1];
                                                                                 },function(param1:String):*
                                                                                 {
                                                                                    return MainView[param1];
                                                                                 },bindings,watchers);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr018a:
                                                                                    mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01b0:
                                                                                       mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01d7:
                                                                                          this.layout = this._MainView_BasicLayout1_c();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MainView_Array1_c);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01fd:
                                                                                                this.addEventListener("creationComplete",this.___MainView_SkinnableContainer1_creationComplete);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr020e:
                                                                                                   this.addEventListener("resize",this.___MainView_SkinnableContainer1_resize);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0222:
                                                                                                      i = 0;
                                                                                                      addr0220:
                                                                                                   }
                                                                                                }
                                                                                                var _temp_10:*;
                                                                                                loop0:
                                                                                                do
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(§§pop() < §§pop().§§slot[1].length)
                                                                                                         {
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(var _temp_10:* = §§pop(), §§pop().§§slot[4] = _temp_10, !_loc4_);
                                                                                                
                                                                                                return;
                                                                                                addr028f:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr020e);
                                                                                       }
                                                                                       §§goto(addr0220);
                                                                                    }
                                                                                    §§goto(addr028f);
                                                                                 }
                                                                                 §§goto(addr01fd);
                                                                              }
                                                                              §§goto(addr01b0);
                                                                           }
                                                                           §§goto(addr0222);
                                                                        }
                                                                        §§goto(addr0220);
                                                                     }
                                                                     §§goto(addr0150);
                                                                  }
                                                                  §§goto(addr018a);
                                                               }
                                                               §§goto(addr016f);
                                                            }
                                                            §§goto(addr011a);
                                                         }
                                                         §§goto(addr0222);
                                                      }
                                                      §§goto(addr0149);
                                                   }
                                                   §§goto(addr0222);
                                                }
                                                §§goto(addr028f);
                                             }
                                             §§goto(addr0222);
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr01b0);
                                    }
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr016f);
                              }
                              §§goto(addr0149);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr01d7);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00f9);
            }
            §§goto(addr0046);
         }
         §§goto(addr0045);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            MainView._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         factory = param1;
         if(!(_loc4_ && _loc3_))
         {
            super.moduleFactory = factory;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
                  addr0082:
                  if(!this.styleDeclaration)
                  {
                     if(_loc3_)
                     {
                        this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                        if(_loc3_ || _loc3_)
                        {
                           addr00a8:
                           this.styleDeclaration.defaultFactory = function():void
                           {
                              this.skinClass = RoundedBorderContainerSkin;
                           };
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr00a8);
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr0082);
                  }
               }
               §§goto(addr00b2);
            }
            §§goto(addr00a8);
         }
         addr00b2:
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
      
      public function detachThrobber() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(this.preloader_ui.numChildren >= 1)
            {
               if(!_loc1_)
               {
                  addr003a:
                  this.preloader_ui.removeChild(this.simpleThrobber);
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      public function attachThrobber() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.preloader_ui.addChild(this.simpleThrobber);
            if(!(_loc2_ && _loc2_))
            {
               this.simpleThrobber.start();
            }
         }
      }
      
      private function syncStage(param1:Event) : void
      {
      }
      
      private function creationCompleteHandler() : void
      {
      }
      
      private function init() : void
      {
      }
      
      private function _MainView_BasicLayout1_c() : BasicLayout
      {
         return new BasicLayout();
      }
      
      private function _MainView_Array1_c() : Array
      {
         return [this._MainView_Rect1_c(),this._MainView_Group1_c(),this._MainView_EmergencyTV1_i(),this._MainView_SpriteVisualElement5_i(),this._MainView_UIComponent1_i(),this._MainView_SpriteVisualElement6_i(),this._MainView_Group13_i(),this._MainView_Group14_i(),this._MainView_MouseAttachLayerView1_i(),this._MainView_QMConsole1_i()];
      }
      
      private function _MainView_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(_loc3_ || _loc3_)
               {
                  addr004d:
                  _loc1_.bottom = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0097);
               }
               addr0060:
               _loc1_.right = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.fill = this._MainView_SolidColor1_c();
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0097:
                     _loc1_.initialized(this,null);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004d);
      }
      
      private function _MainView_SolidColor1_c() : SolidColor
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColor = new SolidColor();
         if(!_loc3_)
         {
            _loc1_.color = 7706950;
         }
         return _loc1_;
      }
      
      private function _MainView_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.left = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.bottom = 0;
                  if(_loc2_)
                  {
                     _loc1_.right = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._MainView_Group2_c(),this._MainView_SpriteVisualElement2_i(),this._MainView_Group3_i(),this._MainView_Group4_i(),this._MainView_VGroup1_c(),this._MainView_Group5_c(),this._MainView_SpriteVisualElement3_i(),this._MainView_SettingsBarView1_i(),this._MainView_SpriteVisualElement4_i(),this._MainView_HUDBar1_i(),this._MainView_QuestSideMenu1_i(),this._MainView_Group12_c()];
                        addr0078:
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00f3:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00f3);
            }
            §§goto(addr0078);
         }
         §§goto(addr00f3);
      }
      
      private function _MainView_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0043:
               _loc1_.left = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.bottom = 0;
                  if(!_loc2_)
                  {
                     _loc1_.right = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr007e:
                        _loc1_.mxmlContent = [this._MainView_SpriteVisualElement1_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr007e);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _MainView_SpriteVisualElement1_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.top = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.bottom = 0;
                  if(_loc2_)
                  {
                     addr006e:
                     _loc1_.right = 0;
                     if(_loc2_)
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0078);
            }
            §§goto(addr006e);
         }
         addr0078:
         _loc1_.initialized(this,"backgroundLayer");
         if(!_loc3_)
         {
            addr0086:
            this.backgroundLayer = _loc1_;
            if(!_loc3_)
            {
               addr0090:
               BindingManager.executeBindings(this,"backgroundLayer",this.backgroundLayer);
            }
         }
         return _loc1_;
      }
      
      private function _MainView_SpriteVisualElement2_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.right = 0;
                     if(_loc2_)
                     {
                        addr0085:
                        _loc1_.initialized(this,"fieldlayer");
                        if(_loc2_)
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr009d);
                     }
                     addr0093:
                     this.fieldlayer = _loc1_;
                     if(!_loc3_)
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"fieldlayer",this.fieldlayer);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr009d);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr009d);
         }
         §§goto(addr0085);
      }
      
      private function _MainView_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.left = 0;
               if(_loc3_)
               {
                  _loc1_.mouseChildren = false;
                  if(_loc3_)
                  {
                     addr003d:
                     _loc1_.mouseEnabled = false;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.mouseEnabledWhereTransparent = false;
                        if(_loc3_)
                        {
                           addr0065:
                           _loc1_.id = "infoandIconLayer";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00a3:
                                       this.infoandIconLayer = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00ad:
                                          BindingManager.executeBindings(this,"infoandIconLayer",this.infoandIconLayer);
                                       }
                                    }
                                    §§goto(addr00ba);
                                 }
                              }
                              §§goto(addr00a3);
                           }
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0065);
                  }
                  addr00ba:
                  return _loc1_;
               }
               §§goto(addr003d);
            }
            §§goto(addr00ad);
         }
         §§goto(addr003d);
      }
      
      private function _MainView_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 5;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.left = 72;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr004d:
                     _loc1_.right = 72;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.percentWidth = 100;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.id = "inventoryTopBarView";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008e:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr00b6);
                                    }
                                    §§goto(addr00c8);
                                 }
                              }
                              addr00b6:
                              this.inventoryTopBarView = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00c8:
                                 BindingManager.executeBindings(this,"inventoryTopBarView",this.inventoryTopBarView);
                              }
                           }
                           §§goto(addr00d5);
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr004d);
            }
            addr00d5:
            return _loc1_;
         }
         §§goto(addr00c8);
      }
      
      private function _MainView_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 65;
            if(!_loc3_)
            {
               _loc1_.right = 9;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.gap = 9;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._MainView_FeaturedEventSideMenu1_i(),this._MainView_BonusDaySideMenu1_i(),this._MainView_CitySquareSideMenu1_i(),this._MainView_RentCollectorSideMenu1_i(),this._MainView_PatrolSideMenu1_i()];
                     addr0053:
                     if(_loc2_)
                     {
                        addr0087:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr009b:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr009b);
                  }
                  addr009f:
                  return _loc1_;
               }
               §§goto(addr0053);
            }
            §§goto(addr0087);
         }
         §§goto(addr0053);
      }
      
      private function _MainView_FeaturedEventSideMenu1_i() : FeaturedEventSideMenu
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:FeaturedEventSideMenu = new FeaturedEventSideMenu();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.visible = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "featuredEventSideMenu";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0086:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr008f);
                           }
                           §§goto(addr00a1);
                        }
                     }
                  }
                  addr008f:
                  this.featuredEventSideMenu = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00a1:
                     BindingManager.executeBindings(this,"featuredEventSideMenu",this.featuredEventSideMenu);
                  }
                  §§goto(addr00ae);
               }
               addr00ae:
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr00a1);
      }
      
      private function _MainView_BonusDaySideMenu1_i() : BonusDaySideMenu
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BonusDaySideMenu = new BonusDaySideMenu();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.includeInLayout = true;
            if(_loc3_)
            {
               _loc1_.visible = true;
               if(_loc3_)
               {
                  _loc1_.id = "bonusDaySideMenu";
                  if(!_loc2_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0076);
                           }
                        }
                        §§goto(addr0088);
                     }
                  }
                  addr0076:
                  this.bonusDaySideMenu = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0088:
                     BindingManager.executeBindings(this,"bonusDaySideMenu",this.bonusDaySideMenu);
                  }
                  return _loc1_;
               }
               §§goto(addr0054);
            }
            §§goto(addr0088);
         }
         §§goto(addr0054);
      }
      
      private function _MainView_CitySquareSideMenu1_i() : CitySquareSideMenu
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CitySquareSideMenu = new CitySquareSideMenu();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(!_loc2_)
            {
               _loc1_.visible = false;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0048:
                  _loc1_.id = "citySquareSideMenu";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0073:
                              this.citySquareSideMenu = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0085:
                                 BindingManager.executeBindings(this,"citySquareSideMenu",this.citySquareSideMenu);
                              }
                              §§goto(addr0092);
                           }
                           §§goto(addr0085);
                        }
                        addr0092:
                        return _loc1_;
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr006a);
            }
            §§goto(addr0048);
         }
         §§goto(addr0085);
      }
      
      private function _MainView_RentCollectorSideMenu1_i() : RentCollectorSideMenu
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RentCollectorSideMenu = new RentCollectorSideMenu();
         if(_loc2_)
         {
            _loc1_.id = "rentCollectorSideView";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        addr006b:
                        this.rentCollectorSideView = _loc1_;
                        if(_loc2_)
                        {
                           addr0075:
                           BindingManager.executeBindings(this,"rentCollectorSideView",this.rentCollectorSideView);
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr006b);
            }
            §§goto(addr0075);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _MainView_PatrolSideMenu1_i() : PatrolSideMenu
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PatrolSideMenu = new PatrolSideMenu();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.includeInLayout = false;
            if(_loc2_)
            {
               _loc1_.visible = false;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0050:
                  _loc1_.id = "patrolSideMenu";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008b:
                              this.patrolSideMenu = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr009d:
                                 BindingManager.executeBindings(this,"patrolSideMenu",this.patrolSideMenu);
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr009d);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr0063);
      }
      
      private function _MainView_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_)
               {
                  _loc1_.bottom = 0;
                  if(_loc2_)
                  {
                     _loc1_.right = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._MainView_Group6_i(),this._MainView_Group7_i(),this._MainView_Group8_i(),this._MainView_Group9_i(),this._MainView_Group10_i(),this._MainView_Group11_i()];
                        §§goto(addr0061);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00a3);
               }
               addr0061:
               if(_loc2_ || _loc3_)
               {
                  addr00a3:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr00b7:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr00b7);
      }
      
      private function _MainView_Group6_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.bottom = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.right = 0;
                     if(_loc2_)
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.mxmlContent = [this._MainView_Rect2_c()];
                           if(_loc2_ || _loc3_)
                           {
                              addr008c:
                              _loc1_.id = "modalCover";
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr009f:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr00b3);
                                    }
                                 }
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00cf);
                     }
                  }
               }
               §§goto(addr009f);
            }
            addr00b3:
            _loc1_.document = this;
            if(_loc2_ || Boolean(this))
            {
               addr00cf:
               this.modalCover = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  BindingManager.executeBindings(this,"modalCover",this.modalCover);
               }
            }
            return _loc1_;
         }
         §§goto(addr008c);
      }
      
      private function _MainView_Rect2_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.left = 0;
               if(_loc2_)
               {
                  _loc1_.bottom = 0;
                  if(_loc2_)
                  {
                     _loc1_.right = 0;
                     if(_loc2_)
                     {
                        addr0069:
                        _loc1_.fill = this._MainView_SolidColor2_c();
                        if(_loc2_ || _loc2_)
                        {
                           addr0080:
                           _loc1_.initialized(this,null);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0080);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _MainView_SolidColor2_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(_loc3_ || _loc2_)
         {
            _loc1_.color = 0;
            if(!_loc2_)
            {
               addr0045:
               _loc1_.alpha = 0.6;
            }
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _MainView_Group7_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0031:
               _loc1_.left = 0;
               if(_loc2_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr00a3);
            }
            addr003b:
            _loc1_.bottom = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.right = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr008f);
               }
               addr007c:
               _loc1_.id = "popupContainer";
               if(!(_loc3_ && _loc3_))
               {
                  addr008f:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr00a3);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr00bf);
               }
               addr00a3:
               _loc1_.document = this;
               if(_loc2_ || Boolean(this))
               {
                  addr00bf:
                  this.popupContainer = _loc1_;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00d1:
                     BindingManager.executeBindings(this,"popupContainer",this.popupContainer);
                  }
               }
               §§goto(addr00de);
            }
            addr00de:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _MainView_Group8_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.bottom = 0;
                  if(!_loc3_)
                  {
                     addr0049:
                     _loc1_.right = 0;
                     if(_loc2_)
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0071:
                           _loc1_.id = "popupStackContainer";
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0084:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§goto(addr00a2);
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           addr00a2:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr00ab:
                              this.popupStackContainer = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00bd:
                                 BindingManager.executeBindings(this,"popupStackContainer",this.popupStackContainer);
                              }
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr00bd);
                  }
                  addr00ca:
                  return _loc1_;
               }
               §§goto(addr0049);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0071);
      }
      
      private function _MainView_Group9_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.left = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!_loc2_)
                  {
                     _loc1_.right = 0;
                     if(_loc3_)
                     {
                        _loc1_.visible = false;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._MainView_Rect3_c()];
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008d:
                              _loc1_.id = "modalCoverTop";
                              if(!_loc2_)
                              {
                                 addr0098:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00cc:
                                          this.modalCoverTop = _loc1_;
                                          if(!_loc2_)
                                          {
                                             BindingManager.executeBindings(this,"modalCoverTop",this.modalCoverTop);
                                          }
                                       }
                                       §§goto(addr00e3);
                                    }
                                 }
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00cc);
            }
            addr00e3:
            return _loc1_;
         }
         §§goto(addr008d);
      }
      
      private function _MainView_Rect3_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && _loc3_))
            {
               addr0034:
               _loc1_.left = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.bottom = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0094);
               }
            }
            addr005d:
            _loc1_.right = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.fill = this._MainView_SolidColor3_c();
               if(!(_loc3_ && _loc2_))
               {
                  addr0094:
                  _loc1_.initialized(this,null);
               }
            }
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _MainView_SolidColor3_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(_loc3_)
         {
            _loc1_.color = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0041:
               _loc1_.alpha = 0.6;
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _MainView_Group10_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.left = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.bottom = 0;
                  if(_loc3_)
                  {
                     _loc1_.right = 0;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr006c:
                        _loc1_.visible = false;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.id = "popupContainerTop";
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0090:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00b8:
                                       this.popupContainerTop = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00c2:
                                          BindingManager.executeBindings(this,"popupContainerTop",this.popupContainerTop);
                                       }
                                    }
                                    §§goto(addr00cf);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           addr00cf:
                           return _loc1_;
                        }
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr00af);
               }
               §§goto(addr006c);
            }
            §§goto(addr00c2);
         }
         §§goto(addr00b8);
      }
      
      private function _MainView_Group11_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0046:
                     _loc1_.right = 0;
                     if(!_loc3_)
                     {
                        _loc1_.visible = false;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr006c);
                        }
                        §§goto(addr008b);
                     }
                  }
                  addr006c:
                  _loc1_.id = "popupStackContainerTop";
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr008b:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00a8:
                              this.popupStackContainerTop = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00ba:
                                 BindingManager.executeBindings(this,"popupStackContainerTop",this.popupStackContainerTop);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr00a8);
                  }
                  addr00c7:
                  return _loc1_;
               }
               §§goto(addr00a8);
            }
            §§goto(addr00ba);
         }
         §§goto(addr0046);
      }
      
      private function _MainView_SpriteVisualElement3_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!_loc3_)
         {
            _loc1_.mouseEnabled = false;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mouseChildren = false;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0056);
               }
               §§goto(addr0094);
            }
         }
         addr0056:
         _loc1_.percentWidth = 100;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               §§goto(addr0072);
            }
            §§goto(addr00a6);
         }
         addr0072:
         _loc1_.initialized(this,"dropIconsAnimation");
         if(_loc2_ || _loc3_)
         {
            addr0094:
            this.dropIconsAnimation = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00a6:
               BindingManager.executeBindings(this,"dropIconsAnimation",this.dropIconsAnimation);
            }
         }
         return _loc1_;
      }
      
      private function _MainView_SettingsBarView1_i() : SettingsBarView
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SettingsBarView = new SettingsBarView();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.bottom = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.right = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.visible = false;
                  if(!_loc2_)
                  {
                     addr0068:
                     _loc1_.id = "settingBar";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0092:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr009b);
                              }
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00ad);
                  }
                  addr009b:
                  this.settingBar = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00ad:
                     BindingManager.executeBindings(this,"settingBar",this.settingBar);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr0068);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _MainView_SpriteVisualElement4_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc3_)
         {
            _loc1_.mouseEnabled = false;
            if(_loc3_)
            {
               _loc1_.mouseChildren = false;
               if(!_loc2_)
               {
                  _loc1_.width = 70;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.bottom = 0;
                     if(_loc3_)
                     {
                        addr0062:
                        _loc1_.right = 0;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.height = 100;
                           if(_loc3_)
                           {
                              _loc1_.initialized(this,"statsLayer");
                              if(_loc3_)
                              {
                                 addr0097:
                                 this.statsLayer = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00a9:
                                    BindingManager.executeBindings(this,"statsLayer",this.statsLayer);
                                 }
                              }
                              §§goto(addr00b6);
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0062);
            }
            §§goto(addr0097);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _MainView_HUDBar1_i() : HUDBar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HUDBar = new HUDBar();
         if(_loc2_)
         {
            _loc1_.top = 10;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.id = "hudBar";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr008f:
                              this.hudBar = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a1:
                                 BindingManager.executeBindings(this,"hudBar",this.hudBar);
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr00a1);
         }
         §§goto(addr008f);
      }
      
      private function _MainView_QuestSideMenu1_i() : QuestSideMenu
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:QuestSideMenu = new QuestSideMenu();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.top = 50;
               if(!_loc2_)
               {
                  _loc1_.left = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "questSideInfoView";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr0075);
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr00a3);
            }
            addr0075:
            _loc1_.document = this;
            if(!(_loc2_ && _loc3_))
            {
               addr0091:
               this.questSideInfoView = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"questSideInfoView",this.questSideInfoView);
               }
            }
            §§goto(addr00b0);
         }
         addr00b0:
         return _loc1_;
      }
      
      private function _MainView_Group12_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.bottom = -1;
               if(!_loc2_)
               {
                  addr005e:
                  _loc1_.mxmlContent = [this._MainView_MainMenuComponent1_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr006e);
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr005e);
         }
         addr006e:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr007a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _MainView_MainMenuComponent1_i() : MainMenuComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MainMenuComponent = new MainMenuComponent();
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               addr0037:
               _loc1_.id = "mainMenuComponent";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr006d);
                        }
                     }
                     §§goto(addr0077);
                  }
               }
            }
            addr006d:
            this.mainMenuComponent = _loc1_;
            if(_loc3_)
            {
               addr0077:
               BindingManager.executeBindings(this,"mainMenuComponent",this.mainMenuComponent);
            }
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _MainView_EmergencyTV1_i() : EmergencyTV
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:EmergencyTV = new EmergencyTV();
         if(_loc2_)
         {
            _loc1_.bottom = -4;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.left = 5;
               if(!_loc3_)
               {
                  addr0049:
                  _loc1_.id = "emergencyTV";
                  if(_loc2_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr007b);
                           }
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0072);
               }
               addr007b:
               this.emergencyTV = _loc1_;
               if(!(_loc3_ && _loc3_))
               {
                  addr008d:
                  BindingManager.executeBindings(this,"emergencyTV",this.emergencyTV);
               }
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr0049);
      }
      
      private function _MainView_SpriteVisualElement5_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mouseEnabled = false;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mouseChildren = false;
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0067);
               }
               §§goto(addr0075);
            }
            addr0067:
            _loc1_.initialized(this,"animationlayer");
            if(!_loc2_)
            {
               addr0075:
               this.animationlayer = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  BindingManager.executeBindings(this,"animationlayer",this.animationlayer);
               }
            }
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _MainView_UIComponent1_i() : UIComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UIComponent = new UIComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 50;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.width = 50;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0069:
                        _loc1_.addEventListener("initialize",this.__preloader_ui_initialize);
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.id = "preloader_ui";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b5:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00be);
                                    }
                                    §§goto(addr00d0);
                                 }
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00b5);
                        }
                        addr00be:
                        this.preloader_ui = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr00d0:
                           BindingManager.executeBindings(this,"preloader_ui",this.preloader_ui);
                        }
                        §§goto(addr00dd);
                     }
                     §§goto(addr00d0);
                  }
                  addr00dd:
                  return _loc1_;
               }
               §§goto(addr00b5);
            }
            §§goto(addr0069);
         }
         §§goto(addr00be);
      }
      
      public function __preloader_ui_initialize(param1:FlexEvent) : void
      {
      }
      
      private function _MainView_SpriteVisualElement6_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr0078:
                        _loc1_.initialized(this,"debug");
                        if(_loc3_)
                        {
                           this.debug = _loc1_;
                           if(!_loc2_)
                           {
                              addr0090:
                              BindingManager.executeBindings(this,"debug",this.debug);
                           }
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr009d);
            }
            §§goto(addr0078);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _MainView_Group13_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.mouseEnabled = true;
            if(!_loc2_)
            {
               _loc1_.mouseChildren = true;
               if(_loc3_)
               {
                  _loc1_.id = "confirmationGroup";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr0097);
                        }
                     }
                     addr0085:
                     this.confirmationGroup = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0097:
                        BindingManager.executeBindings(this,"confirmationGroup",this.confirmationGroup);
                     }
                     §§goto(addr00a4);
                  }
                  addr00a4:
                  return _loc1_;
               }
               §§goto(addr005c);
            }
            §§goto(addr0085);
         }
         §§goto(addr005c);
      }
      
      private function _MainView_Group14_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mouseEnabled = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mouseChildren = false;
               if(!_loc3_)
               {
                  _loc1_.id = "uiInfolayerView";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr006e);
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007f);
            }
         }
         addr006e:
         _loc1_.document = this;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr007f:
            this.uiInfolayerView = _loc1_;
            if(_loc2_)
            {
               addr0089:
               BindingManager.executeBindings(this,"uiInfolayerView",this.uiInfolayerView);
            }
         }
         return _loc1_;
      }
      
      private function _MainView_MouseAttachLayerView1_i() : MouseAttachLayerView
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MouseAttachLayerView = new MouseAttachLayerView();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mouseEnabled = false;
            if(_loc2_ || _loc3_)
            {
               addr003a:
               _loc1_.mouseChildren = false;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc3_)
                     {
                        _loc1_.id = "mouseAttachLayer";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00a0:
                                    this.mouseAttachLayer = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"mouseAttachLayer",this.mouseAttachLayer);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00b2);
            }
            §§goto(addr00a0);
         }
         §§goto(addr003a);
      }
      
      private function _MainView_QMConsole1_i() : QMConsole
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QMConsole = new QMConsole();
         if(!_loc3_)
         {
            _loc1_.left = 5;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.right = 5;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0046:
                  _loc1_.top = 5;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.maxHeight = 530;
                     addr0058:
                     if(!_loc3_)
                     {
                        addr0071:
                        _loc1_.percentHeight = 20;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.visible = false;
                           if(_loc2_)
                           {
                              addr008c:
                              _loc1_.id = "qmConsole";
                              if(!_loc3_)
                              {
                                 addr0097:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00a3:
                                       _loc1_.document = this;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00c0:
                                          this.qmConsole = _loc1_;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr00d2:
                                             BindingManager.executeBindings(this,"qmConsole",this.qmConsole);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr00d2);
                                    }
                                    addr00df:
                                    return _loc1_;
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0058);
            }
            §§goto(addr0046);
         }
         §§goto(addr0071);
      }
      
      public function ___MainView_SkinnableContainer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.creationCompleteHandler();
         }
      }
      
      public function ___MainView_SkinnableContainer1_resize(param1:ResizeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.syncStage(param1);
         }
      }
      
      private function _MainView_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return fieldlayer.width;
                        },null,"infoandIconLayer.width");
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc1_))
                           {
                              §§goto(addr0072);
                           }
                           §§goto(addr013f);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr0112);
                  }
                  §§goto(addr0194);
               }
               §§goto(addr018d);
            }
            §§goto(addr01a7);
         }
         addr0072:
         §§push(§§pop().§§slot[1]);
         if(_loc2_ || _loc3_)
         {
            §§push(1);
            if(_loc2_ || _loc1_)
            {
               §§pop()[§§pop()] = new Binding(this,function():Number
               {
                  return fieldlayer.height;
               },null,"infoandIconLayer.height");
               if(_loc2_ || _loc1_)
               {
                  addr00ae:
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(§§pop().§§slot[1]);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(2);
                        if(_loc2_ || _loc3_)
                        {
                           §§pop()[§§pop()] = new Binding(this,function():Number
                           {
                              return fieldlayer.width;
                           },null,"confirmationGroup.width");
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§newactivation());
                              if(_loc2_)
                              {
                                 §§push(§§pop().§§slot[1]);
                                 if(!_loc3_)
                                 {
                                    §§push(3);
                                    if(_loc2_)
                                    {
                                       addr0112:
                                       §§pop()[§§pop()] = new Binding(this,function():Number
                                       {
                                          return fieldlayer.height;
                                       },null,"confirmationGroup.height");
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§goto(addr0130);
                                       }
                                       §§goto(addr017e);
                                    }
                                    §§goto(addr0196);
                                 }
                                 §§goto(addr0194);
                              }
                              §§goto(addr013f);
                           }
                           addr0130:
                           §§push(§§newactivation());
                           if(_loc2_ || Boolean(this))
                           {
                              addr013f:
                              §§push(§§pop().§§slot[1]);
                              if(!_loc3_)
                              {
                                 §§push(4);
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0155:
                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                    {
                                       return fieldlayer.width;
                                    },null,"uiInfolayerView.width");
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       addr017e:
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§goto(addr018d);
                                       }
                                       §§goto(addr01a9);
                                    }
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr0196);
                              }
                              §§goto(addr0194);
                           }
                           addr018d:
                           §§goto(addr01ab);
                        }
                        §§goto(addr0112);
                     }
                     §§goto(addr01ab);
                  }
                  §§goto(addr013f);
               }
               §§goto(addr01a7);
            }
            §§goto(addr0155);
         }
         addr01ab:
         §§push(§§pop().§§slot[1]);
         if(_loc2_)
         {
            addr0196:
            §§pop()[5] = new Binding(this,function():Number
            {
               return fieldlayer.height;
            },null,"uiInfolayerView.height");
            addr01a9:
            addr01a7:
            §§push(result);
            addr0194:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get animationlayer() : SpriteVisualElement
      {
         return this._1435677619animationlayer;
      }
      
      public function set animationlayer(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1435677619animationlayer;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1435677619animationlayer = param1;
                  if(_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"animationlayer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundLayer() : SpriteVisualElement
      {
         return this._1295031491backgroundLayer;
      }
      
      public function set backgroundLayer(param1:SpriteVisualElement) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1295031491backgroundLayer;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._1295031491backgroundLayer = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0051);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundLayer",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
            addr0060:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get bonusDaySideMenu() : BonusDaySideMenu
      {
         return this._363462003bonusDaySideMenu;
      }
      
      public function set bonusDaySideMenu(param1:BonusDaySideMenu) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._363462003bonusDaySideMenu;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._363462003bonusDaySideMenu = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusDaySideMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get citySquareSideMenu() : CitySquareSideMenu
      {
         return this._1829289506citySquareSideMenu;
      }
      
      public function set citySquareSideMenu(param1:CitySquareSideMenu) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1829289506citySquareSideMenu;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1829289506citySquareSideMenu = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citySquareSideMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmationGroup() : Group
      {
         return this._1252512586confirmationGroup;
      }
      
      public function set confirmationGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1252512586confirmationGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1252512586confirmationGroup = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmationGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get debug() : SpriteVisualElement
      {
         return this._95458899debug;
      }
      
      public function set debug(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._95458899debug;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._95458899debug = param1;
                  if(_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"debug",_loc2_,param1));
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
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get dropIconsAnimation() : SpriteVisualElement
      {
         return this._1060074073dropIconsAnimation;
      }
      
      public function set dropIconsAnimation(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1060074073dropIconsAnimation;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1060074073dropIconsAnimation = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropIconsAnimation",_loc2_,param1));
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
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyTV() : EmergencyTV
      {
         return this._2113777619emergencyTV;
      }
      
      public function set emergencyTV(param1:EmergencyTV) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2113777619emergencyTV;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._2113777619emergencyTV = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyTV",_loc2_,param1));
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
      public function get featuredEventSideMenu() : FeaturedEventSideMenu
      {
         return this._822511234featuredEventSideMenu;
      }
      
      public function set featuredEventSideMenu(param1:FeaturedEventSideMenu) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._822511234featuredEventSideMenu;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._822511234featuredEventSideMenu = param1;
                  if(_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featuredEventSideMenu",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get fieldlayer() : SpriteVisualElement
      {
         return this._588300439fieldlayer;
      }
      
      public function set fieldlayer(param1:SpriteVisualElement) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._588300439fieldlayer;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._588300439fieldlayer = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0073);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fieldlayer",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get hudBar() : HUDBar
      {
         return this._1206437988hudBar;
      }
      
      public function set hudBar(param1:HUDBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1206437988hudBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1206437988hudBar = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hudBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get infoandIconLayer() : Group
      {
         return this._15981585infoandIconLayer;
      }
      
      public function set infoandIconLayer(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._15981585infoandIconLayer;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._15981585infoandIconLayer = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0073);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoandIconLayer",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
            addr0082:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryTopBarView() : Group
      {
         return this._1590589631inventoryTopBarView;
      }
      
      public function set inventoryTopBarView(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1590589631inventoryTopBarView;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1590589631inventoryTopBarView = param1;
                  addr003e:
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryTopBarView",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0056);
            }
            addr007c:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainMenuComponent() : MainMenuComponent
      {
         return this._1127858469mainMenuComponent;
      }
      
      public function set mainMenuComponent(param1:MainMenuComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1127858469mainMenuComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1127858469mainMenuComponent = param1;
                  addr0041:
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainMenuComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get modalCover() : Group
      {
         return this._1470952182modalCover;
      }
      
      public function set modalCover(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1470952182modalCover;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1470952182modalCover = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modalCover",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get modalCoverTop() : Group
      {
         return this._414951403modalCoverTop;
      }
      
      public function set modalCoverTop(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._414951403modalCoverTop;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._414951403modalCoverTop = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modalCoverTop",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get mouseAttachLayer() : MouseAttachLayerView
      {
         return this._1625777113mouseAttachLayer;
      }
      
      public function set mouseAttachLayer(param1:MouseAttachLayerView) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1625777113mouseAttachLayer;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1625777113mouseAttachLayer = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0072);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mouseAttachLayer",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolSideMenu() : PatrolSideMenu
      {
         return this._2071765566patrolSideMenu;
      }
      
      public function set patrolSideMenu(param1:PatrolSideMenu) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2071765566patrolSideMenu;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2071765566patrolSideMenu = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr004f);
                  }
                  §§goto(addr0066);
               }
               addr004f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolSideMenu",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get popupContainer() : Group
      {
         return this._450167499popupContainer;
      }
      
      public function set popupContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._450167499popupContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._450167499popupContainer = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get popupContainerTop() : Group
      {
         return this._2051980320popupContainerTop;
      }
      
      public function set popupContainerTop(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2051980320popupContainerTop;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2051980320popupContainerTop = param1;
                  addr0039:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupContainerTop",_loc2_,param1));
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
      public function get popupStackContainer() : Group
      {
         return this._779330213popupStackContainer;
      }
      
      public function set popupStackContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._779330213popupStackContainer;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0047:
                  this._779330213popupStackContainer = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0061:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupStackContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0061);
            }
            addr0070:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get popupStackContainerTop() : Group
      {
         return this._1566742416popupStackContainerTop;
      }
      
      public function set popupStackContainerTop(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1566742416popupStackContainerTop;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0037:
                  this._1566742416popupStackContainerTop = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupStackContainerTop",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get preloader_ui() : UIComponent
      {
         return this._1605401341preloader_ui;
      }
      
      public function set preloader_ui(param1:UIComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1605401341preloader_ui;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1605401341preloader_ui = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preloader_ui",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get qmConsole() : QMConsole
      {
         return this._1225037723qmConsole;
      }
      
      public function set qmConsole(param1:QMConsole) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1225037723qmConsole;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1225037723qmConsole = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qmConsole",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get questSideInfoView() : QuestSideMenu
      {
         return this._985870572questSideInfoView;
      }
      
      public function set questSideInfoView(param1:QuestSideMenu) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._985870572questSideInfoView;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._985870572questSideInfoView = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questSideInfoView",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rentCollectorSideView() : RentCollectorSideMenu
      {
         return this._457243152rentCollectorSideView;
      }
      
      public function set rentCollectorSideView(param1:RentCollectorSideMenu) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._457243152rentCollectorSideView;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._457243152rentCollectorSideView = param1;
                  addr0035:
                  if(_loc3_)
                  {
                     addr004b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rentCollectorSideView",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr004b);
            }
            addr0071:
            return;
         }
         §§goto(addr0035);
      }
      
      [Bindable(event="propertyChange")]
      public function get settingBar() : SettingsBarView
      {
         return this._3959901settingBar;
      }
      
      public function set settingBar(param1:SettingsBarView) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3959901settingBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3959901settingBar = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0068);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"settingBar",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
         }
         addr0077:
      }
      
      [Bindable(event="propertyChange")]
      public function get statsLayer() : SpriteVisualElement
      {
         return this._155134962statsLayer;
      }
      
      public function set statsLayer(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._155134962statsLayer;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._155134962statsLayer = param1;
                  addr003e:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsLayer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerView() : Group
      {
         return this._491527052uiInfolayerView;
      }
      
      public function set uiInfolayerView(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._491527052uiInfolayerView;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._491527052uiInfolayerView = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerView",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr005a);
            }
            addr0080:
            return;
         }
         §§goto(addr0042);
      }
   }
}

