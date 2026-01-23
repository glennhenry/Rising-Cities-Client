package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class FieldInfoLayerMasteryComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1131509414progressBar:SlimProgressBarComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var _2125013837starGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _masteryLevel:int;
      
      private var _masteryProgress:Number;
      
      private var _dataDirty:Boolean;
      
      private var _masteryStars:Vector.<BriskImageDynaLib>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FieldInfoLayerMasteryComponent()
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
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_ || Boolean(this))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     if(!_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || _loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    super();
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       addr00a1:
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._FieldInfoLayerMasteryComponent_bindingsSetup();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr00d3:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   addr00da:
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc4_ && _loc1_))
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
                                                                  addr010d:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_FieldInfoLayerMasteryComponentWatcherSetupUtil");
                                                                     addr0115:
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        addr013e:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr0146:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr015c:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return FieldInfoLayerMasteryComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc4_ && Boolean(this)))
                                                                              {
                                                                                 addr0180:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    addr01ae:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01d5:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01df:
                                                                                          this.mxmlContent = [this._FieldInfoLayerMasteryComponent_VGroup1_c()];
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr01f9:
                                                                                             i = 0;
                                                                                             addr01f7:
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
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc3_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
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
                                                                                          addr0262:
                                                                                       }
                                                                                       §§goto(addr01f7);
                                                                                    }
                                                                                    §§goto(addr0262);
                                                                                 }
                                                                                 §§goto(addr01f7);
                                                                              }
                                                                              §§goto(addr01d5);
                                                                           }
                                                                           §§goto(addr0180);
                                                                        }
                                                                        §§goto(addr01f9);
                                                                     }
                                                                     §§goto(addr01d5);
                                                                  }
                                                                  §§goto(addr0146);
                                                               }
                                                               §§goto(addr0180);
                                                            }
                                                            §§goto(addr015c);
                                                         }
                                                         §§goto(addr01ae);
                                                      }
                                                      §§goto(addr0146);
                                                   }
                                                   §§goto(addr010d);
                                                }
                                                §§goto(addr01f9);
                                             }
                                             §§goto(addr01ae);
                                          }
                                          §§goto(addr01f9);
                                       }
                                       §§goto(addr013e);
                                    }
                                    §§goto(addr015c);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr01df);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr01f7);
                     }
                     §§goto(addr0180);
                  }
                  §§goto(addr0115);
               }
               §§goto(addr010d);
            }
            §§goto(addr0048);
         }
         §§goto(addr00da);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            FieldInfoLayerMasteryComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               addr0034:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0034);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      public function setData(param1:int, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(param1 == this._masteryLevel);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_ || _loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0066);
            }
            addr0067:
            §§push(param2 == this._masteryProgress);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0066:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  addr0071:
                  this._masteryLevel = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr008f:
                     this._masteryProgress = param2;
                     if(!_loc3_)
                     {
                        addr0099:
                        this._dataDirty = true;
                        if(_loc4_ || Boolean(param2))
                        {
                           invalidateProperties();
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0099);
               }
            }
            addr00b1:
            return;
         }
         §§goto(addr0071);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:BriskImageDynaLib = null;
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            super.commitProperties();
            if(_loc5_)
            {
               if(this._dataDirty)
               {
                  if(_loc5_)
                  {
                     this._dataDirty = false;
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        addr0057:
                        this.progressBar.progress = this._masteryProgress;
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              _loc1_ = §§pop();
                              addr0086:
                              §§push(0);
                           }
                           var _loc3_:* = §§pop();
                           for each(_loc2_ in this.masteryStars)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc1_ < this._masteryLevel)
                                 {
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       _loc2_.dynaBmpSourceName = "mastery_star_blue";
                                       if(_loc5_ || _loc3_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc2_.dynaBmpSourceName = "mastery_star_grey";
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              _loc1_++;
                           }
                           §§goto(addr0100);
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               addr0100:
               return;
            }
         }
         §§goto(addr0057);
      }
      
      private function get masteryStars() : Vector.<BriskImageDynaLib>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._masteryStars == null)
            {
               if(_loc2_ || Boolean(this))
               {
                  §§push(this);
                  §§pop()._masteryStars = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
               }
            }
         }
         return this._masteryStars;
      }
      
      private function _FieldInfoLayerMasteryComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               addr0038:
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerMasteryComponent_HGroup1_i(),this._FieldInfoLayerMasteryComponent_SlimProgressBarComponent1_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib6_i(),this._FieldInfoLayerMasteryComponent_Group2_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00a0:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr00a0);
         }
         §§goto(addr0038);
      }
      
      private function _FieldInfoLayerMasteryComponent_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._FieldInfoLayerMasteryComponent_BriskImageDynaLib1_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib2_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib3_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib4_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib5_i()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "starGroup";
               if(!(_loc3_ && _loc3_))
               {
                  addr006f:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0098);
               }
            }
            addr008f:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0098:
               this.starGroup = _loc1_;
               if(!(_loc3_ && _loc3_))
               {
                  addr00aa:
                  BindingManager.executeBindings(this,"starGroup",this.starGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "masteryStar0";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0077:
                           this.masteryStar0 = _loc1_;
                           if(!_loc3_)
                           {
                              addr0081:
                              BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr008e);
            }
            §§goto(addr0081);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.id = "masteryStar1";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0072:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr007b);
                        }
                     }
                     §§goto(addr008d);
                  }
                  addr007b:
                  this.masteryStar1 = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
                  }
                  §§goto(addr009a);
               }
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.id = "masteryStar2";
               if(_loc3_)
               {
                  §§goto(addr0040);
               }
               §§goto(addr007a);
            }
            §§goto(addr004c);
         }
         addr0040:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr004c:
               _loc1_.document = this;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0068);
               }
            }
            §§goto(addr007a);
         }
         addr0068:
         this.masteryStar2 = _loc1_;
         if(_loc3_ || _loc3_)
         {
            addr007a:
            BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.id = "masteryStar3";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0068:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0071);
                        }
                     }
                     §§goto(addr0083);
                  }
                  addr0071:
                  this.masteryStar3 = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0083:
                     BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
                  }
                  return _loc1_;
               }
               §§goto(addr0083);
            }
         }
         §§goto(addr0068);
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "masteryStar4";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0073:
                           this.masteryStar4 = _loc1_;
                           if(_loc3_)
                           {
                              addr007d:
                              BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
                           }
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr008a);
            }
            §§goto(addr007d);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "progressBar";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr008d);
                  }
               }
               addr007b:
               this.progressBar = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr008d:
                  BindingManager.executeBindings(this,"progressBar",this.progressBar);
               }
               §§goto(addr009a);
            }
         }
         addr009a:
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               addr002a:
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!_loc3_)
               {
                  addr0043:
                  _loc1_.id = "splitter";
                  if(_loc2_)
                  {
                     addr004e:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0079:
                              this.splitter = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0083:
                                 BindingManager.executeBindings(this,"splitter",this.splitter);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr004e);
            }
            §§goto(addr0043);
         }
         §§goto(addr002a);
      }
      
      private function _FieldInfoLayerMasteryComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.height = 1;
            if(!(_loc3_ && _loc3_))
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
      
      private function _FieldInfoLayerMasteryComponent_bindingsSetup() : Array
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
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§pop()[0] = new Binding(this,function():Number
                     {
                        return starGroup.width;
                     },null,"progressBar.width");
                     addr0071:
                     addr006f:
                     return result;
                  }
               }
               §§goto(addr0071);
            }
            §§goto(addr006f);
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85291001masteryStar0;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0048:
                  this._85291001masteryStar0 = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85291000masteryStar1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._85291000masteryStar1 = param1;
                  if(!_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0059);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85290999masteryStar2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._85290999masteryStar2 = param1;
                  if(!_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004d);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85290998masteryStar3;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._85290998masteryStar3 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005c);
            }
            addr0083:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85290997masteryStar4;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._85290997masteryStar4 = param1;
                  addr0036:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : SlimProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:SlimProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1131509414progressBar = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get splitter() : BriskImageDynaLib
      {
         return this._1926588729splitter;
      }
      
      public function set splitter(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926588729splitter;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1926588729splitter = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr0079);
               }
               addr006a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get starGroup() : HGroup
      {
         return this._2125013837starGroup;
      }
      
      public function set starGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2125013837starGroup;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2125013837starGroup = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr0066);
      }
   }
}

