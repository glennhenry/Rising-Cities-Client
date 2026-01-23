package net.bigpoint.cityrama.view.assistants.ui.components
{
   import com.greensock.TweenMax;
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
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.view.assistants.ui.skins.RentCollectorOffersSkin;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.skins.TabbedPaperPopupSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class RentCollectorLayer extends PaperPopupWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
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
      
      public var _RentCollectorLayer_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1161933810headerGroup:Group;
      
      private var _750244439packList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RentCollectorLayer()
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
            if(_loc3_ || _loc2_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && _loc1_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    addr0090:
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr00b2:
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00c1:
                                             §§pop().§§slot[1] = this._RentCollectorLayer_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   addr00d9:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr010b:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_assistants_ui_components_RentCollectorLayerWatcherSetupUtil");
                                                                     if(!(_loc4_ && Boolean(this)))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr0136:
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0157:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return RentCollectorLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 addr017c:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr01aa:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01d1:
                                                                                       this.showBackButton = false;
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          addr01e3:
                                                                                          this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RentCollectorLayer_Array1_c);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr0201:
                                                                                             this.addEventListener("initialize",this.___RentCollectorLayer_PaperPopupWindow1_initialize);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr021a:
                                                                                                this.addEventListener("creationComplete",this.___RentCollectorLayer_PaperPopupWindow1_creationComplete);
                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                {
                                                                                                   addr0236:
                                                                                                   i = 0;
                                                                                                   addr0234:
                                                                                                }
                                                                                             }
                                                                                             loop0:
                                                                                             while(true)
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
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         Binding(bindings[i]).execute();
                                                                                                         if(!(_loc3_ || _loc2_))
                                                                                                         {
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               var _temp_22:* = §§pop();
                                                                                                               §§pop().§§slot[4] = _temp_22;
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             return;
                                                                                             addr02a2:
                                                                                          }
                                                                                          §§goto(addr0234);
                                                                                       }
                                                                                       §§goto(addr021a);
                                                                                    }
                                                                                    §§goto(addr0234);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01d1);
                                                                           }
                                                                           §§goto(addr0201);
                                                                        }
                                                                        §§goto(addr0236);
                                                                     }
                                                                     §§goto(addr017c);
                                                                  }
                                                                  §§goto(addr0236);
                                                               }
                                                               §§goto(addr021a);
                                                            }
                                                            §§goto(addr0157);
                                                         }
                                                         §§goto(addr02a2);
                                                      }
                                                      §§goto(addr0136);
                                                   }
                                                   §§goto(addr0157);
                                                }
                                                §§goto(addr0236);
                                             }
                                             §§goto(addr01e3);
                                          }
                                          §§goto(addr010b);
                                       }
                                       §§goto(addr02a2);
                                    }
                                    §§goto(addr021a);
                                 }
                                 §§goto(addr01e3);
                              }
                              §§goto(addr0090);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr0157);
                     }
                     §§goto(addr01d1);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr01aa);
            }
            §§goto(addr0050);
         }
         §§goto(addr00c1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            RentCollectorLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         factory = param1;
         if(_loc4_)
         {
            super.moduleFactory = factory;
            if(!_loc3_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0071);
         }
         addr0030:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc4_)
            {
               return;
            }
            addr0071:
            if(!this.styleDeclaration)
            {
               if(_loc4_ || _loc2_)
               {
                  this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                  if(!_loc3_)
                  {
                     addr0098:
                     this.styleDeclaration.defaultFactory = function():void
                     {
                        this.skinClass = TabbedPaperPopupSkin;
                     };
                  }
                  §§goto(addr00a3);
               }
            }
            §§goto(addr0098);
         }
         else
         {
            this.__moduleFactoryInitialized = true;
            if(!_loc3_)
            {
               §§goto(addr0071);
            }
         }
         addr00a3:
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
      
      private function addTab(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            TweenMax.to(this,1,{"glowFilter":{
               "color":14140033,
               "alpha":1,
               "blurX":32,
               "blurY":32,
               "strength":1.8
            }});
         }
         var _loc2_:TabsVo = new TabsVo();
         if(_loc3_ || Boolean(this))
         {
            _loc2_.styleName = "currency";
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               _loc2_.tabLabel = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
               if(_loc3_ || Boolean(param1))
               {
                  addr00a4:
                  _loc2_.enabled = true;
                  if(!_loc4_)
                  {
                     §§goto(addr00af);
                  }
               }
               §§goto(addr00c2);
            }
            addr00af:
            _loc2_.hasNews = false;
            if(!(_loc4_ && _loc3_))
            {
               addr00c2:
               this.tabData = new ArrayCollection([_loc2_]);
            }
            return;
         }
         §§goto(addr00a4);
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.header.text = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
            if(_loc3_ || Boolean(this))
            {
               this.flavourText.text = LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.flavour");
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(Boolean(this._data));
               if(_loc1_ || Boolean(this))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           addr0077:
                           §§push(this._isDirty);
                           if(_loc1_ || _loc2_)
                           {
                              addr0076:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this._isDirty = false;
                                 if(_loc1_)
                                 {
                                    addr008a:
                                    this.packList.dataProvider = this._data;
                                 }
                                 §§goto(addr0095);
                              }
                              §§goto(addr008a);
                           }
                        }
                        addr0095:
                        return;
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0077);
            }
         }
         §§goto(addr008a);
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(RandomUtilities.isUnEqual(this._data,param1))
            {
               if(!_loc2_)
               {
                  addr0042:
                  this._data = param1;
                  if(!_loc2_)
                  {
                     this._isDirty = true;
                     if(_loc3_ || _loc3_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      private function _RentCollectorLayer_Array1_c() : Array
      {
         return [this._RentCollectorLayer_VGroup1_c()];
      }
      
      private function _RentCollectorLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     addr0062:
                     _loc1_.verticalAlign = "top";
                     if(_loc2_)
                     {
                        _loc1_.top = -18;
                        if(_loc2_)
                        {
                           addr0076:
                           _loc1_.gap = 0;
                           if(!_loc3_)
                           {
                              _loc1_.left = -6;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.right = -3;
                                 if(!_loc3_)
                                 {
                                    _loc1_.mxmlContent = [this._RentCollectorLayer_Group1_i(),this._RentCollectorLayer_HGroup2_c(),this._RentCollectorLayer_Group2_c(),this._RentCollectorLayer_List1_i()];
                                    if(!_loc3_)
                                    {
                                       addr00cb:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc2_)
                                          {
                                             addr00d7:
                                             _loc1_.document = this;
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00d7);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0062);
            }
            §§goto(addr00cb);
         }
         §§goto(addr0076);
      }
      
      private function _RentCollectorLayer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._RentCollectorLayer_BlueBarComponent1_c(),this._RentCollectorLayer_HGroup1_c(),this._RentCollectorLayer_BriskImageDynaLib1_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "headerGroup";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0082:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00be);
                  }
               }
               addr00ac:
               this.headerGroup = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr00be:
                  BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
               }
               return _loc1_;
            }
            §§goto(addr00be);
         }
         §§goto(addr0082);
      }
      
      private function _RentCollectorLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 80;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 32;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0089);
            }
            §§goto(addr0085);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _RentCollectorLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 80;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 32;
               if(!_loc2_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0084);
         }
         addr004a:
         _loc1_.horizontalCenter = 0;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0084:
                  _loc1_.mxmlContent = [this._RentCollectorLayer_LocaLabel1_i()];
                  if(!_loc2_)
                  {
                     addr0094:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00a0:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a4);
               }
            }
            §§goto(addr0094);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _RentCollectorLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "StatusBarStyle";
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalCenter = -2;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.id = "header";
                     if(!_loc3_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0088);
                              }
                           }
                           §§goto(addr009a);
                        }
                        addr0088:
                        this.header = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"header",this.header);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0067);
            }
            §§goto(addr0088);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _RentCollectorLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.top = -8;
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_rentCollector";
               if(_loc3_)
               {
                  addr0034:
                  _loc1_.dynaBmpSourceName = "collector_active_icon";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.measuredHeight = 32;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "_RentCollectorLayer_BriskImageDynaLib1";
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr007a);
            }
            §§goto(addr0034);
         }
         addr007a:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr009a:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  §§goto(addr00a3);
               }
               §§goto(addr00ae);
            }
         }
         addr00a3:
         this._RentCollectorLayer_BriskImageDynaLib1 = _loc1_;
         if(_loc3_)
         {
            addr00ae:
            BindingManager.executeBindings(this,"_RentCollectorLayer_BriskImageDynaLib1",this._RentCollectorLayer_BriskImageDynaLib1);
         }
         return _loc1_;
      }
      
      private function _RentCollectorLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 82;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 36;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._RentCollectorLayer_LocaLabel2_i()];
                        if(_loc3_ || _loc2_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr009e);
               }
            }
            §§goto(addr0086);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _RentCollectorLayer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "twelveFlavourText";
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0080:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0089:
                                 this.flavourText = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0093:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr0093);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr0093);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _RentCollectorLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 2;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.itemRenderer = this._RentCollectorLayer_ClassFactory1_c();
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr00a2);
               }
               addr0060:
               _loc1_.setStyle("skinClass",RentCollectorOffersSkin);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "packList";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00a2:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr00b3);
                           }
                        }
                        §§goto(addr00bd);
                     }
                  }
                  addr00b3:
                  this.packList = _loc1_;
                  if(!_loc2_)
                  {
                     addr00bd:
                     BindingManager.executeBindings(this,"packList",this.packList);
                  }
                  §§goto(addr00ca);
               }
               addr00ca:
               return _loc1_;
            }
            §§goto(addr00b3);
         }
         §§goto(addr00bd);
      }
      
      private function _RentCollectorLayer_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.generator = RentCollectorOffersItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___RentCollectorLayer_PaperPopupWindow1_initialize(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.addTab(param1);
         }
      }
      
      public function ___RentCollectorLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _RentCollectorLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr005b);
               }
               §§goto(addr0080);
            }
            §§goto(addr007e);
         }
         addr005b:
         §§push(§§pop().§§slot[1]);
         if(!(_loc2_ && _loc2_))
         {
            §§pop()[0] = new Binding(this,function():Number
            {
               return header.x;
            },null,"_RentCollectorLayer_BriskImageDynaLib1.x");
            addr0080:
            addr007e:
            return result;
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  addr0039:
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1221270899header = param1;
                  addr003e:
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006b);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerGroup() : Group
      {
         return this._1161933810headerGroup;
      }
      
      public function set headerGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1161933810headerGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004d:
                  this._1161933810headerGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get packList() : List
      {
         return this._750244439packList;
      }
      
      public function set packList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._750244439packList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._750244439packList = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packList",_loc2_,param1));
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
         §§goto(addr0071);
      }
   }
}

