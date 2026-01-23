package net.bigpoint.cityrama.view.schoolBook.ui
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
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SpecialistSlotComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ProfessionalTraitUnlockMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const EVENT_ACCEPT:String = "EVENT_ACCEPT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         EVENT_ACCEPT = "EVENT_ACCEPT";
         if(!_loc2_)
         {
            addr0035:
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
         return;
      }
      §§goto(addr0035);
      
      public var _ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1664451042layerText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _119892632minilayerFlavor:LocaLabel;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _1276265099traitGfx:BriskImageDynaLib;
      
      private var _909898843traitText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalTraitUnlockMiniLayerVo;
      
      private var _dirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProfessionalTraitUnlockMiniLayer()
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
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr003d:
                     §§pop().§§slot[5] = null;
                     addr003c:
                     if(!_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || Boolean(this))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(_loc3_ || _loc2_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             addr00a6:
                                             §§pop().§§slot[1] = this._ProfessionalTraitUnlockMiniLayer_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr00d1:
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr00d9:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr00f9:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     addr0108:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_schoolBook_ui_ProfessionalTraitUnlockMiniLayerWatcherSetupUtil");
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                        addr0131:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0157:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ProfessionalTraitUnlockMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    addr01a3:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01ca:
                                                                                       this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProfessionalTraitUnlockMiniLayer_Array1_c);
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          addr01e7:
                                                                                          this.addEventListener("creationComplete",this.___ProfessionalTraitUnlockMiniLayer_MiniLayerWindow1_creationComplete);
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr0202:
                                                                                             i = 0;
                                                                                             addr0200:
                                                                                          }
                                                                                          var _temp_13:*;
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
                                                                                                      if(_loc4_ && _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_)
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
                                                                                          while(var _temp_13:* = §§pop(), §§pop().§§slot[4] = _temp_13, !_loc4_);
                                                                                          
                                                                                          return;
                                                                                          addr0270:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0200);
                                                                                 }
                                                                                 §§goto(addr0270);
                                                                              }
                                                                              §§goto(addr01a3);
                                                                           }
                                                                           §§goto(addr01ca);
                                                                        }
                                                                        §§goto(addr0202);
                                                                     }
                                                                     §§goto(addr01e7);
                                                                  }
                                                                  §§goto(addr0202);
                                                               }
                                                               §§goto(addr0131);
                                                            }
                                                         }
                                                         §§goto(addr0157);
                                                      }
                                                      §§goto(addr0108);
                                                   }
                                                   §§goto(addr01a3);
                                                }
                                                §§goto(addr0108);
                                             }
                                             §§goto(addr01a3);
                                          }
                                          §§goto(addr00d9);
                                       }
                                       §§goto(addr01ca);
                                    }
                                    §§goto(addr01e7);
                                 }
                                 §§goto(addr0270);
                              }
                              §§goto(addr01ca);
                           }
                           §§goto(addr00d1);
                        }
                     }
                     §§goto(addr0157);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00f9);
            }
            §§goto(addr003d);
         }
         §§goto(addr003c);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            ProfessionalTraitUnlockMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0057);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr006b);
            }
            addr0057:
            return;
         }
         addr006b:
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
      
      public function set data(param1:ProfessionalTraitUnlockMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._data = param1;
                  if(_loc3_ || _loc2_)
                  {
                     addr005b:
                     this._dirty = true;
                     if(_loc3_ || Boolean(this))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr005b);
            }
            addr0072:
            return;
         }
         §§goto(addr005b);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_loc4_)
         {
            super.commitProperties();
            if(_loc4_)
            {
               §§push(this._dirty);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           §§goto(addr0054);
                        }
                     }
                     §§goto(addr0075);
                  }
                  addr0054:
                  §§pop();
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(this._data);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0075:
                        if(§§pop())
                        {
                           if(_loc4_ || Boolean(this))
                           {
                              this._dirty = false;
                              if(_loc4_)
                              {
                                 this.professionalSlot.data = this._data;
                                 if(!_loc3_)
                                 {
                                    §§push(this._data);
                                    if(_loc4_)
                                    {
                                       if(§§pop().gender)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push("male");
                                             if(_loc3_ && Boolean(_loc1_))
                                             {
                                             }
                                             addr00d6:
                                             §§push(§§pop());
                                             if(_loc4_ || Boolean(_loc1_))
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc4_)
                                                {
                                                   §§goto(addr00ec);
                                                }
                                                §§goto(addr0240);
                                             }
                                             §§goto(addr018d);
                                          }
                                          §§goto(addr0240);
                                       }
                                       else
                                       {
                                          §§push("female");
                                       }
                                       §§goto(addr00d6);
                                    }
                                    §§goto(addr01b3);
                                 }
                                 addr00ec:
                                 §§push(this.traitText);
                                 §§push(§§findproperty(getString));
                                 §§push("rcl.education.characteristics");
                                 §§push("rcl.education.characteristics.name.capital.");
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + this._data.traitLocaleId);
                                 }
                                 §§pop().text = §§pop().getString(§§pop(),§§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§findproperty(getString));
                                    §§push("rcl.miniLayer.traitunlock");
                                    §§push("rcl.miniLayer.traitunlock.text.");
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc3_)
                                          {
                                             addr014c:
                                             §§push(§§pop() + ".");
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                §§push(this._data);
                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                {
                                                   addr0172:
                                                   addr0171:
                                                   §§push(§§pop() + §§pop().traitLocaleId);
                                                   §§push(this._data);
                                                }
                                                §§push(§§pop().getString(§§pop(),§§pop(),[§§pop().name,this._data.amount]));
                                                if(_loc4_)
                                                {
                                                   addr018d:
                                                   _loc2_ = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§goto(addr019c);
                                                   }
                                                   §§goto(addr026f);
                                                }
                                                addr019c:
                                                §§goto(addr019b);
                                             }
                                          }
                                          §§goto(addr0172);
                                       }
                                       §§goto(addr0171);
                                    }
                                    §§goto(addr014c);
                                 }
                                 §§goto(addr019b);
                              }
                              §§goto(addr0240);
                           }
                           addr019b:
                           if(_loc2_.indexOf("%") != -1)
                           {
                              if(_loc4_)
                              {
                                 addr01b3:
                                 §§push(this._data);
                                 §§push(this._data.amount);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() * 100);
                                 }
                                 §§pop().amount = §§pop();
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    §§goto(addr01db);
                                 }
                              }
                              §§goto(addr0240);
                           }
                           addr01db:
                           §§push(this.layerText);
                           §§push(§§findproperty(getString));
                           §§push("rcl.miniLayer.traitunlock");
                           §§push("rcl.miniLayer.traitunlock.text.");
                           if(_loc4_)
                           {
                              §§push(_loc1_);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + ".");
                                    if(_loc4_)
                                    {
                                       §§goto(addr020e);
                                    }
                                    §§goto(addr021c);
                                 }
                                 §§goto(addr020e);
                              }
                              §§goto(addr021b);
                           }
                           addr020e:
                           §§push(this._data);
                           if(_loc4_)
                           {
                              addr021c:
                              addr021b:
                              §§push(§§pop() + §§pop().traitLocaleId);
                              §§push(this._data);
                           }
                           §§pop().text = §§pop().getString(§§pop(),§§pop(),[§§pop().name,this._data.amount]);
                           if(_loc4_ || Boolean(this))
                           {
                              this.minilayerFlavor.text = getString("rcl.miniLayer.traitunlock","rcl.miniLayer.traitunlock.flavour");
                              addr0240:
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 addr026f:
                                 §§push(this.traitGfx);
                                 §§push("trait_");
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + this._data.traitGfxId);
                                 }
                                 §§pop().dynaBmpSourceName = §§pop();
                              }
                           }
                        }
                        §§goto(addr0286);
                     }
                     §§goto(addr01b3);
                  }
                  addr0286:
                  return;
               }
               §§goto(addr0075);
            }
            §§goto(addr019b);
         }
         §§goto(addr026f);
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.title = getString("rcl.miniLayer.traitunlock","rcl.miniLayer.traitunlock.title.capital");
            if(_loc3_)
            {
               this.acceptButton.label = getString("rcl.miniLayer.traitunlock","rcl.miniLayer.traitunlock.button.accept");
            }
         }
      }
      
      private function onAcceptClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(new Event(EVENT_ACCEPT));
         }
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_Array1_c() : Array
      {
         return [this._ProfessionalTraitUnlockMiniLayer_VGroup1_i(),this._ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib4_c()];
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        addr0060:
                        _loc1_.paddingTop = -20;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr007d);
                        }
                        §§goto(addr0107);
                     }
                     §§goto(addr00f5);
                  }
                  addr007d:
                  _loc1_.gap = -5;
                  if(!_loc3_)
                  {
                     addr0087:
                     _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_HGroup1_c(),this._ProfessionalTraitUnlockMiniLayer_HGroup2_c(),this._ProfessionalTraitUnlockMiniLayer_Group4_c(),this._ProfessionalTraitUnlockMiniLayer_HGroup4_c()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "mainGroup";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00f5);
                                 }
                                 §§goto(addr0107);
                              }
                           }
                           addr00f5:
                           this.mainGroup = _loc1_;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0107:
                              BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                           }
                        }
                        §§goto(addr0114);
                     }
                     §§goto(addr0107);
                  }
                  addr0114:
                  return _loc1_;
               }
               §§goto(addr00f5);
            }
            §§goto(addr0087);
         }
         §§goto(addr0060);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 40;
               if(_loc3_)
               {
                  addr0049:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr008f);
               }
               addr0054:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_LocaLabel1_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr008f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008f);
               }
               addr0093:
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 80;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "minilayerFlavor";
                     if(_loc2_ || _loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0096:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a7:
                                 this.minilayerFlavor = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"minilayerFlavor",this.minilayerFlavor);
                                 }
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00a7);
                     }
                     addr00be:
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00b1);
            }
         }
         §§goto(addr0075);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0029:
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0060:
                     _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_Group1_c(),this._ProfessionalTraitUnlockMiniLayer_Group2_c()];
                     if(_loc2_)
                     {
                        addr0076:
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
               §§goto(addr0060);
            }
            §§goto(addr0076);
         }
         §§goto(addr0029);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_SpecialistSlotComponent1_i(),this._ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib1_c()];
            if(_loc2_ || _loc3_)
            {
               addr005b:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.id = "professionalSlot";
               if(_loc2_ || Boolean(this))
               {
                  addr004b:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0075:
                           this.professionalSlot = _loc1_;
                           if(_loc2_)
                           {
                              addr007f:
                              BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr007f);
                     }
                     addr008c:
                     return _loc1_;
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr007f);
         }
         §§goto(addr004b);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 80;
                  addr0052:
                  if(!_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0072);
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0052);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_Group3_c(),this._ProfessionalTraitUnlockMiniLayer_VGroup2_c()];
            if(_loc2_ || Boolean(_loc1_))
            {
               addr005b:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2_i(),this._ProfessionalTraitUnlockMiniLayer_BriskMCDynaLib1_c(),this._ProfessionalTraitUnlockMiniLayer_BriskMCDynaLib2_c()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0054:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0054);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "_ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0052:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr006f);
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr006f);
            }
            §§goto(addr0052);
         }
         addr006f:
         this._ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2 = _loc1_;
         if(_loc2_ || Boolean(this))
         {
            addr0082:
            BindingManager.executeBindings(this,"_ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2",this._ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2);
         }
         return _loc1_;
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.width = 20;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0069:
                     _loc1_.height = 106;
                     if(_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0092:
                           _loc1_.left = -4;
                           if(!_loc2_)
                           {
                              §§goto(addr009c);
                           }
                           §§goto(addr00a8);
                        }
                     }
                     addr009c:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00a8:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr0092);
               }
               addr00ac:
               return _loc1_;
            }
         }
         §§goto(addr0069);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 20;
                  if(_loc3_)
                  {
                     addr0066:
                     _loc1_.height = 106;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.verticalCenter = 0;
                        if(!_loc2_)
                        {
                           _loc1_.right = -2;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00a1:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b5:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00b9);
            }
            §§goto(addr0066);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.height = 140;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc2_)
                        {
                           _loc1_.paddingTop = 10;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr0083);
                           }
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr0096);
                  }
                  addr0083:
                  _loc1_.paddingBottom = 10;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0096:
                     _loc1_.gap = 10;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.paddingLeft = 10;
                        if(_loc2_)
                        {
                           _loc1_.paddingRight = 10;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00d4:
                              _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_LocaLabel2_i(),this._ProfessionalTraitUnlockMiniLayer_HGroup3_c()];
                              if(!_loc3_)
                              {
                                 addr00ea:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00f6:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00fa);
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00fa);
               }
               §§goto(addr0096);
            }
            addr00fa:
            return _loc1_;
         }
         §§goto(addr00d4);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc2_)
            {
               _loc1_.maxWidth = 300;
               if(!(_loc3_ && _loc3_))
               {
                  addr0050:
                  _loc1_.id = "layerText";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0083:
                              this.layerText = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 BindingManager.executeBindings(this,"layerText",this.layerText);
                              }
                           }
                           §§goto(addr00a2);
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr0083);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               addr0036:
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib3_i(),this._ProfessionalTraitUnlockMiniLayer_LocaLabel3_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0078);
            }
            addr007c:
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_schoolBook";
            if(!_loc3_)
            {
               _loc1_.id = "traitGfx";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0061:
                           this.traitGfx = _loc1_;
                           if(_loc2_)
                           {
                              addr006b:
                              BindingManager.executeBindings(this,"traitGfx",this.traitGfx);
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr006b);
                     }
                     addr0078:
                     return _loc1_;
                  }
                  §§goto(addr0061);
               }
               §§goto(addr006b);
            }
         }
         §§goto(addr0061);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "profLevelUpSpec";
            if(_loc2_)
            {
               _loc1_.text = "";
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0046);
               }
               §§goto(addr0068);
            }
         }
         addr0046:
         _loc1_.id = "traitText";
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0068:
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0079:
                     this.traitText = _loc1_;
                     if(_loc2_)
                     {
                        addr0083:
                        BindingManager.executeBindings(this,"traitText",this.traitText);
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0083);
            }
            §§goto(addr0079);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 13;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr004e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0052);
            }
            §§goto(addr004e);
         }
         addr0052:
         return _loc1_;
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._ProfessionalTraitUnlockMiniLayer_MultistateButton1_i()];
                  if(_loc2_)
                  {
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007f);
               }
               addr0083:
               return _loc1_;
            }
            §§goto(addr006b);
         }
         §§goto(addr007f);
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.label = "DEVText";
            if(!_loc3_)
            {
               _loc1_.width = 210;
               if(!_loc3_)
               {
                  _loc1_.addEventListener("click",this.__acceptButton_click);
                  if(_loc2_)
                  {
                     _loc1_.id = "acceptButton";
                     if(!_loc3_)
                     {
                        addr005c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr007c:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0085:
                                 this.acceptButton = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0097:
                                    BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                                 }
                                 §§goto(addr00a4);
                              }
                              §§goto(addr0097);
                           }
                           addr00a4:
                           return _loc1_;
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0097);
            }
         }
         §§goto(addr005c);
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.onAcceptClick(param1);
         }
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "icon_levelUp__large";
               if(_loc2_)
               {
                  _loc1_.top = -60;
                  addr0049:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = -18;
                     if(!_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr007d);
                  }
               }
               addr0071:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      public function ___ProfessionalTraitUnlockMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onCreationComplete(param1);
         }
      }
      
      private function _ProfessionalTraitUnlockMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr0064);
            }
            §§goto(addr0062);
         }
         addr0047:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            §§pop()[0] = new Binding(this,function():BriskDynaVo
            {
               return new BriskDynaVo("gui_popups_emergencyBook","quadrillen_levelup");
            },null,"_ProfessionalTraitUnlockMiniLayer_BriskImageDynaLib2.briskDynaVo");
            addr0064:
            addr0062:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1480909402acceptButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerText() : LocaLabel
      {
         return this._1664451042layerText;
      }
      
      public function set layerText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1664451042layerText;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1664451042layerText = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._273241018mainGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get minilayerFlavor() : LocaLabel
      {
         return this._119892632minilayerFlavor;
      }
      
      public function set minilayerFlavor(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._119892632minilayerFlavor;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._119892632minilayerFlavor = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006e);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minilayerFlavor",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalSlot() : SpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SpecialistSlotComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1795780411professionalSlot;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1795780411professionalSlot = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get traitGfx() : BriskImageDynaLib
      {
         return this._1276265099traitGfx;
      }
      
      public function set traitGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1276265099traitGfx;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1276265099traitGfx = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traitGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get traitText() : LocaLabel
      {
         return this._909898843traitText;
      }
      
      public function set traitText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._909898843traitText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._909898843traitText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traitText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

