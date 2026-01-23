package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SpecialistSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ProfessionalLevelUpMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const EVENT_ACCEPT:String = "EVENT_ACCEPT";
      
      public static const EVENT_DECLINE:String = "EVENT_DECLINE";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         EVENT_ACCEPT = "EVENT_ACCEPT";
         if(_loc1_)
         {
            addr002d:
            EVENT_DECLINE = "EVENT_DECLINE";
            if(_loc1_)
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
      §§goto(addr002d);
      
      public var _ProfessionalLevelUpMiniLayer_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1600068152declineButton:MultistateButton;
      
      private var _1664451042layerText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _119892632minilayerFlavor:LocaLabel;
      
      private var _1845183867newSpec:BriskImageDynaLib;
      
      private var _1421216316newSpecGroup:HGroup;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _2133501048specText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalLevelUpLayerVo;
      
      private var _dirty:Boolean;
      
      private const STATE_SKILLP:String = "skillpointsonly";
      
      private const STATE_SPEC:String = "canbespec";
      
      private const STATE_HERO:String = "hero";
      
      private var _layerState:String = "";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProfessionalLevelUpMiniLayer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_ || _loc1_)
         {
            §§push(null);
            if(_loc4_ || _loc1_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr004a:
                     §§pop().§§slot[5] = null;
                     if(_loc4_ || _loc2_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || _loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 addr0090:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || _loc1_)
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       addr00ac:
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          addr00c6:
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc1_)
                                          {
                                             §§pop().§§slot[1] = this._ProfessionalLevelUpMiniLayer_bindingsSetup();
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr00ed:
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   addr00f4:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            addr0126:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr013a:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ProfessionalLevelUpMiniLayerWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr014e:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr015e:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr017d:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ProfessionalLevelUpMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr019b:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr01c2:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       addr01f1:
                                                                                       this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProfessionalLevelUpMiniLayer_Array1_c);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr0207:
                                                                                          this.addEventListener("creationComplete",this.___ProfessionalLevelUpMiniLayer_MiniLayerWindow1_creationComplete);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr021b:
                                                                                             i = 0;
                                                                                             addr0219:
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
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      Binding(bindings[i]).execute();
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            var _temp_19:* = §§pop();
                                                                                                            §§pop().§§slot[4] = _temp_19;
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                          addr027a:
                                                                                       }
                                                                                       §§goto(addr0219);
                                                                                    }
                                                                                    §§goto(addr0207);
                                                                                 }
                                                                                 §§goto(addr01f1);
                                                                              }
                                                                           }
                                                                           §§goto(addr0219);
                                                                        }
                                                                        §§goto(addr021b);
                                                                     }
                                                                     §§goto(addr017d);
                                                                  }
                                                                  §§goto(addr015e);
                                                               }
                                                               §§goto(addr014e);
                                                            }
                                                            §§goto(addr017d);
                                                         }
                                                         §§goto(addr027a);
                                                      }
                                                      §§goto(addr021b);
                                                   }
                                                   §§goto(addr0126);
                                                }
                                                §§goto(addr021b);
                                             }
                                             §§goto(addr01c2);
                                          }
                                          §§goto(addr00f4);
                                       }
                                       §§goto(addr00ed);
                                    }
                                    §§goto(addr014e);
                                 }
                                 §§goto(addr01c2);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr019b);
                        }
                        §§goto(addr0207);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr013a);
               }
               §§goto(addr00ac);
            }
            §§goto(addr004a);
         }
         §§goto(addr013a);
      }
      
      private static function getString(param1:String, param2:String, param3:Array = null) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            if(param3 == null)
            {
               addr002d:
               param3 = [];
            }
            §§push(StringUtil.substitute(ResourceManager.getInstance().getString(param1,param2),param3));
            if(!_loc5_)
            {
               return §§pop();
            }
         }
         §§goto(addr002d);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ProfessionalLevelUpMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr003f);
                  }
               }
               else
               {
                  addr0045:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr003f:
            return;
         }
         §§goto(addr0045);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.title = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.title.capital");
         }
      }
      
      private function onDeclineClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event(EVENT_DECLINE));
         }
      }
      
      private function onAcceptClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            dispatchEvent(new Event(EVENT_ACCEPT));
         }
      }
      
      public function set data(param1:ProfessionalLevelUpLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
            if(_loc2_)
            {
               §§goto(addr001f);
            }
            §§goto(addr0029);
         }
         addr001f:
         this._dirty = true;
         if(_loc2_)
         {
            addr0029:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc2_:* = null;
         if(_loc5_ || Boolean(this))
         {
            super.commitProperties();
            if(_loc5_ || _loc3_)
            {
               §§push(this._dirty);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(this._data);
                              if(_loc5_)
                              {
                                 §§goto(addr007c);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr0506);
                        }
                     }
                  }
               }
               addr007c:
               if(§§pop())
               {
                  if(_loc5_ || Boolean(this))
                  {
                     this._dirty = false;
                     if(_loc5_ || Boolean(this))
                     {
                        this.professionalSlot.data = this._data;
                        if(_loc5_ || _loc3_)
                        {
                           addr00b9:
                           §§push(this._data);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              addr00cb:
                              if(§§pop().gender)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push("male");
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr00fe:
                                       _loc1_ = §§pop();
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§push(this._data);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr0120:
                                             if(§§pop().possibleSpecialisations.length == 0)
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   this._layerState = this.STATE_SKILLP;
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(this.acceptButton);
                                                      if(_loc5_)
                                                      {
                                                         §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.skillpointsok.capital"));
                                                         if(_loc5_)
                                                         {
                                                            §§pop().label = §§pop();
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§push(this.acceptButton);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.tooltip"));
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().toolTip = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.declineButton);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.declineButton);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(false);
                                                                              if(_loc5_ || Boolean(_loc1_))
                                                                              {
                                                                                 var _temp_19:* = §§pop();
                                                                                 §§push(_temp_19);
                                                                                 §§push(_temp_19);
                                                                                 if(_loc5_ || Boolean(this))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       §§pop().includeInLayout = §§pop();
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§pop().visible = §§pop();
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   var _temp_25:* = this.newSpecGroup;
                                                                                                   this.newSpecGroup.includeInLayout = _loc3_ = false;
                                                                                                   _temp_25.visible = _loc3_;
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr05e9:
                                                                                                   §§push("<FONT Face=\'Arial Black\' Size=\'14\' Color=\'#57605B\'> +");
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      addr05fb:
                                                                                                      §§push(§§pop() + this._data.skillPointGain);
                                                                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         addr0612:
                                                                                                         §§push(§§pop() + "</FONT>");
                                                                                                      }
                                                                                                      _loc2_ = §§pop();
                                                                                                      if(_loc5_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0625:
                                                                                                         §§push(this.layerText);
                                                                                                         §§push(§§findproperty(getString));
                                                                                                         §§push("rcl.miniLayer.prefessionallevelup");
                                                                                                         §§push("rcl.miniLayer.prefessionallevelup.");
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(this._layerState);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + ".text.");
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr065d);
                                                                                                                  }
                                                                                                                  §§goto(addr066d);
                                                                                                               }
                                                                                                               addr065d:
                                                                                                               §§goto(addr066e);
                                                                                                            }
                                                                                                            addr066e:
                                                                                                            §§push(_loc1_);
                                                                                                            if(_loc5_ || Boolean(_loc1_))
                                                                                                            {
                                                                                                               addr066d:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_loc2_);
                                                                                                            }
                                                                                                            §§pop().text = §§pop().getString(§§pop(),§§pop(),null);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr067c:
                                                                                                               §§push(this.minilayerFlavor);
                                                                                                               §§push(§§findproperty(getString));
                                                                                                               §§push("rcl.miniLayer.prefessionallevelup");
                                                                                                               §§push("rcl.miniLayer.prefessionallevelup.");
                                                                                                               if(!(_loc4_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(this._layerState);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + ".flavour.");
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr06d0:
                                                                                                                           addr06d1:
                                                                                                                           §§push(§§pop() + _loc1_);
                                                                                                                        }
                                                                                                                        §§pop().text = §§pop().getString(§§pop(),§§pop(),[this._data.currentLevel]);
                                                                                                                        §§goto(addr06e1);
                                                                                                                     }
                                                                                                                     §§goto(addr06d0);
                                                                                                                  }
                                                                                                                  §§goto(addr06d1);
                                                                                                               }
                                                                                                               §§goto(addr06d0);
                                                                                                            }
                                                                                                            §§goto(addr06e1);
                                                                                                         }
                                                                                                         §§goto(addr065d);
                                                                                                      }
                                                                                                      §§goto(addr067c);
                                                                                                   }
                                                                                                   §§goto(addr0612);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0383:
                                                                                                §§pop().visible = §§pop();
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this.specText);
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§findproperty(getString));
                                                                                                      §§push("rcl.professions");
                                                                                                      §§push("rcl.professions.");
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop() + this._data.possibleSpecialisations[0].gfxId);
                                                                                                      }
                                                                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§pop().text = §§pop();
                                                                                                         if(_loc4_ && Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr05d9:
                                                                                                            addr05b6:
                                                                                                            addr05b2:
                                                                                                            §§push(this.specText);
                                                                                                            §§push(§§findproperty(getString));
                                                                                                            §§push("rcl.professions");
                                                                                                            §§push("rcl.professions.");
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop() + this._data.possibleSpecialisations[0].gfxId);
                                                                                                            }
                                                                                                            §§pop().text = §§pop().getString(§§pop(),§§pop());
                                                                                                            if(_loc5_ || Boolean(this))
                                                                                                            {
                                                                                                               §§goto(addr05e9);
                                                                                                            }
                                                                                                            §§goto(addr0625);
                                                                                                         }
                                                                                                         §§goto(addr05e9);
                                                                                                      }
                                                                                                      §§goto(addr05d9);
                                                                                                   }
                                                                                                   §§goto(addr05b6);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0450:
                                                                                                   §§push(this.acceptButton);
                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr0462:
                                                                                                      §§push("confirm");
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§pop().styleName = §§pop();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr0473:
                                                                                                            §§push(this.acceptButton);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr047d:
                                                                                                               §§push("icon_check");
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  addr048e:
                                                                                                                  §§pop().imageNameLeft = §§pop();
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr049e);
                                                                                                                  }
                                                                                                                  §§goto(addr0573);
                                                                                                               }
                                                                                                               addr049e:
                                                                                                               this.acceptButton.libNameLeft = "gui_popups_miniLayer";
                                                                                                               §§goto(addr049b);
                                                                                                            }
                                                                                                            addr049b:
                                                                                                            addr0497:
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               addr04af:
                                                                                                               §§push(this.declineButton);
                                                                                                               if(_loc5_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.declinespec.capital"));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().label = §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(this.declineButton);
                                                                                                                        if(_loc5_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr04fe:
                                                                                                                           §§pop().toolTip = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.deny.tooltip");
                                                                                                                           addr04f0:
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr0506:
                                                                                                                              §§push(this.declineButton);
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr0518:
                                                                                                                                 §§push("abort");
                                                                                                                                 if(_loc5_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    §§pop().styleName = §§pop();
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr0531:
                                                                                                                                       §§push(this.declineButton);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr053b:
                                                                                                                                          §§push("icon_cancel");
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§pop().imageNameLeft = §§pop();
                                                                                                                                             if(_loc5_ || Boolean(_loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(this.declineButton);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0562);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0596);
                                                                                                                                             }
                                                                                                                                             §§goto(addr05e9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0562);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0596);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0592);
                                                                                                                                 }
                                                                                                                                 addr0562:
                                                                                                                                 §§pop().libNameLeft = "gui_popups_miniLayer";
                                                                                                                                 §§goto(addr055f);
                                                                                                                              }
                                                                                                                              §§goto(addr053b);
                                                                                                                           }
                                                                                                                           §§goto(addr0573);
                                                                                                                        }
                                                                                                                        addr055f:
                                                                                                                        if(_loc5_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           addr057b:
                                                                                                                           this.newSpec.dynaBmpSourceName = this._data.possibleSpecialisations[0].gfxId.toString();
                                                                                                                           addr0573:
                                                                                                                           addr0577:
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr059d:
                                                                                                                              §§push(this.declineButton);
                                                                                                                              this.declineButton.includeInLayout = _loc3_ = true;
                                                                                                                              addr05a2:
                                                                                                                              §§pop().visible = _loc3_;
                                                                                                                              addr05a0:
                                                                                                                              addr059f:
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§goto(addr05b2);
                                                                                                                              }
                                                                                                                              addr0596:
                                                                                                                              addr0592:
                                                                                                                              addr059c:
                                                                                                                              addr059b:
                                                                                                                              addr059a:
                                                                                                                           }
                                                                                                                           §§goto(addr0625);
                                                                                                                        }
                                                                                                                        §§goto(addr06e1);
                                                                                                                     }
                                                                                                                     §§goto(addr0506);
                                                                                                                  }
                                                                                                                  §§goto(addr04fe);
                                                                                                               }
                                                                                                               §§goto(addr04f0);
                                                                                                            }
                                                                                                            §§goto(addr06e1);
                                                                                                         }
                                                                                                         §§goto(addr0592);
                                                                                                      }
                                                                                                      §§goto(addr048e);
                                                                                                   }
                                                                                                   §§goto(addr047d);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr06e1);
                                                                                          }
                                                                                          §§goto(addr05a0);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0348:
                                                                                       §§pop().includeInLayout = §§pop();
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc4_ && Boolean(_loc1_)))
                                                                                          {
                                                                                             if(_loc5_ || Boolean(this))
                                                                                             {
                                                                                                §§goto(addr0383);
                                                                                             }
                                                                                             §§goto(addr05a2);
                                                                                          }
                                                                                          §§goto(addr05a0);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr059f);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0341:
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr0348);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr059d);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0323:
                                                                              §§push(false);
                                                                              if(!(_loc4_ && Boolean(this)))
                                                                              {
                                                                                 var _temp_52:* = §§pop();
                                                                                 §§push(_temp_52);
                                                                                 §§push(_temp_52);
                                                                                 if(_loc5_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr0341);
                                                                                 }
                                                                                 §§goto(addr059c);
                                                                              }
                                                                           }
                                                                           §§goto(addr059b);
                                                                        }
                                                                        §§goto(addr0596);
                                                                     }
                                                                     §§goto(addr0473);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr029d:
                                                                     §§pop().label = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        addr02a6:
                                                                        §§push(this.acceptButton);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.tooltip"));
                                                                           if(!(_loc4_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§pop().toolTip = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr02d4:
                                                                                 §§push(this.newSpec);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(this._data);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().dynaBmpSourceName = §§pop().possibleSpecialisations[0].gfxId.toString();
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(this.declineButton);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(this.declineButton);
                                                                                             if(_loc5_ || Boolean(this))
                                                                                             {
                                                                                                §§goto(addr0323);
                                                                                             }
                                                                                             §§goto(addr059a);
                                                                                          }
                                                                                          §§goto(addr0518);
                                                                                       }
                                                                                       §§goto(addr0473);
                                                                                    }
                                                                                    §§goto(addr057b);
                                                                                 }
                                                                                 §§goto(addr0577);
                                                                              }
                                                                              §§goto(addr067c);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0448:
                                                                              §§pop().toolTip = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr0450);
                                                                              }
                                                                           }
                                                                           §§goto(addr04af);
                                                                        }
                                                                        §§goto(addr0462);
                                                                     }
                                                                  }
                                                                  §§goto(addr05e9);
                                                               }
                                                               §§goto(addr049b);
                                                            }
                                                            §§goto(addr0531);
                                                         }
                                                         §§goto(addr029d);
                                                      }
                                                      §§goto(addr049b);
                                                   }
                                                   else
                                                   {
                                                      addr0277:
                                                      §§push(this.acceptButton);
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.herook.capital"));
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr029d);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr043a:
                                                         §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.accept.tooltip"));
                                                      }
                                                   }
                                                   §§goto(addr0448);
                                                }
                                             }
                                             else
                                             {
                                                addr0245:
                                                if(this._data.possibleSpecialisations[0].rank == ServerProfessionalConstants.HERO)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this._layerState = this.STATE_HERO;
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         §§goto(addr0277);
                                                      }
                                                      §§goto(addr0573);
                                                   }
                                                   §§goto(addr0592);
                                                }
                                                else
                                                {
                                                   this._layerState = this.STATE_SPEC;
                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(this.acceptButton);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.acceptspec.capital"));
                                                         if(_loc5_)
                                                         {
                                                            §§pop().label = §§pop();
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               §§push(this.acceptButton);
                                                               if(_loc5_ || Boolean(_loc1_))
                                                               {
                                                                  §§goto(addr043a);
                                                               }
                                                               §§goto(addr049b);
                                                            }
                                                            §§goto(addr06e1);
                                                         }
                                                         §§goto(addr0448);
                                                      }
                                                      §§goto(addr047d);
                                                   }
                                                }
                                             }
                                             §§goto(addr0497);
                                          }
                                          §§goto(addr0245);
                                       }
                                       §§goto(addr02d4);
                                    }
                                    §§goto(addr0612);
                                 }
                                 §§goto(addr05b2);
                              }
                              else
                              {
                                 §§push("female");
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00fe);
                                 }
                              }
                              §§goto(addr05fb);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr05e9);
                     }
                     §§goto(addr02a6);
                  }
                  §§goto(addr00b9);
               }
               addr06e1:
               return;
            }
            §§goto(addr05b2);
         }
         §§goto(addr0573);
      }
      
      private function _ProfessionalLevelUpMiniLayer_Array1_c() : Array
      {
         return [this._ProfessionalLevelUpMiniLayer_VGroup1_i(),this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib4_c()];
      }
      
      private function _ProfessionalLevelUpMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        _loc1_.paddingTop = -20;
                        if(_loc2_)
                        {
                           _loc1_.gap = -5;
                           if(_loc2_)
                           {
                              addr0070:
                              _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_HGroup1_c(),this._ProfessionalLevelUpMiniLayer_HGroup2_c(),this._ProfessionalLevelUpMiniLayer_Group4_c(),this._ProfessionalLevelUpMiniLayer_HGroup4_c()];
                              if(!_loc3_)
                              {
                                 addr0092:
                                 _loc1_.id = "mainGroup";
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00b5:
                                          _loc1_.document = this;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr00c6:
                                             this.mainGroup = _loc1_;
                                             if(!_loc3_)
                                             {
                                                addr00d0:
                                                BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                             }
                                          }
                                       }
                                       return _loc1_;
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr0070);
                     }
                     §§goto(addr00c6);
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr00c6);
         }
         §§goto(addr00b5);
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 40;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0069:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_LocaLabel1_i()];
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr009f);
                        }
                        §§goto(addr00ab);
                     }
                  }
                  addr009f:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr00ab:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00af);
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr0069);
      }
      
      private function _ProfessionalLevelUpMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 80;
            if(_loc3_ || _loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.id = "minilayerFlavor";
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr0090:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0099:
                                 this.minilayerFlavor = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a3:
                                    BindingManager.executeBindings(this,"minilayerFlavor",this.minilayerFlavor);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0090);
                  }
                  addr00b0:
                  return _loc1_;
               }
            }
         }
         §§goto(addr0090);
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_Group1_c(),this._ProfessionalLevelUpMiniLayer_Group2_c()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0089:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008d);
                     }
                  }
               }
               §§goto(addr0089);
            }
            addr008d:
            return _loc1_;
         }
         §§goto(addr0089);
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_SpecialistSlotComponent1_i(),this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib1_c()];
            if(!(_loc2_ && _loc3_))
            {
               addr005c:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _ProfessionalLevelUpMiniLayer_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.id = "professionalSlot";
               if(_loc3_)
               {
                  addr0043:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0073:
                           this.professionalSlot = _loc1_;
                           if(!_loc2_)
                           {
                              addr007d:
                              BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr0043);
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(_loc2_)
               {
                  _loc1_.width = 80;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0079);
                  }
               }
            }
            §§goto(addr0069);
         }
         addr0079:
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_Group3_c(),this._ProfessionalLevelUpMiniLayer_VGroup2_c()];
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0056);
            }
            §§goto(addr006a);
         }
         addr0056:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr006a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib2_i(),this._ProfessionalLevelUpMiniLayer_BriskMCDynaLib1_c(),this._ProfessionalLevelUpMiniLayer_BriskMCDynaLib2_c()];
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0076:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0076);
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.id = "_ProfessionalLevelUpMiniLayer_BriskImageDynaLib2";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr0083);
                  }
               }
            }
            addr0070:
            this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib2 = _loc1_;
            if(_loc2_ || _loc3_)
            {
               addr0083:
               BindingManager.executeBindings(this,"_ProfessionalLevelUpMiniLayer_BriskImageDynaLib2",this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib2);
            }
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               addr0032:
               if(!_loc2_)
               {
                  _loc1_.width = 20;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.height = 106;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc3_)
                        {
                           _loc1_.left = -4;
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr0092:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr0096);
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0055);
            }
            addr0096:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.width = 20;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.height = 106;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0096:
                           _loc1_.right = -2;
                           if(_loc3_)
                           {
                              addr00a0:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00ac:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00a0);
                  }
                  addr00b0:
                  return _loc1_;
               }
               §§goto(addr0096);
            }
            §§goto(addr00ac);
         }
         §§goto(addr00a0);
      }
      
      private function _ProfessionalLevelUpMiniLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.height = 140;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc3_)
                        {
                           _loc1_.paddingTop = 10;
                           if(!_loc2_)
                           {
                              addr008a:
                              _loc1_.paddingBottom = 10;
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.gap = 10;
                                 if(_loc3_)
                                 {
                                    _loc1_.paddingLeft = 10;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr00ba);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 addr00ba:
                                 _loc1_.paddingRight = 10;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00d9:
                                    _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_LocaLabel2_i(),this._ProfessionalLevelUpMiniLayer_HGroup3_i()];
                                    if(_loc3_)
                                    {
                                       if(!_loc1_.document)
                                       {
                                          if(_loc3_)
                                          {
                                             addr00fb:
                                             _loc1_.document = this;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr00ff);
                              }
                           }
                        }
                     }
                  }
                  addr00ff:
                  return _loc1_;
               }
               §§goto(addr008a);
            }
            §§goto(addr00d9);
         }
         §§goto(addr008a);
      }
      
      private function _ProfessionalLevelUpMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc3_)
            {
               _loc1_.maxWidth = 300;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "layerText";
                  if(_loc2_ || _loc3_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008e:
                              this.layerText = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"layerText",this.layerText);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a0);
                        }
                        addr00ad:
                        return _loc1_;
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0065);
            }
            §§goto(addr008e);
         }
         §§goto(addr0065);
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc3_))
            {
               addr0033:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib3_i(),this._ProfessionalLevelUpMiniLayer_LocaLabel3_i()];
                  if(!_loc2_)
                  {
                     addr005e:
                     _loc1_.id = "newSpecGroup";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0075:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0092:
                                 this.newSpecGroup = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"newSpecGroup",this.newSpecGroup);
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr0075);
            }
            §§goto(addr005e);
         }
         §§goto(addr0033);
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "1100006";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "big_badges";
               if(!_loc3_)
               {
                  _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                  §§goto(addr0040);
               }
               §§goto(addr008f);
            }
            addr0040:
            if(!_loc3_)
            {
               _loc1_.id = "newSpec";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr008f:
                           this.newSpec = _loc1_;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00a1:
                              BindingManager.executeBindings(this,"newSpec",this.newSpec);
                           }
                        }
                        §§goto(addr00ae);
                     }
                  }
                  §§goto(addr008f);
               }
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr00a1);
      }
      
      private function _ProfessionalLevelUpMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "profLevelUpSpec";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.text = "DEVText";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "specText";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr008d);
                        }
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr00a8);
            }
            addr008d:
            _loc1_.document = this;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr009e:
               this.specText = _loc1_;
               if(!_loc2_)
               {
                  addr00a8:
                  BindingManager.executeBindings(this,"specText",this.specText);
               }
            }
            return _loc1_;
         }
         §§goto(addr00a8);
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 13;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0041);
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_MultistateButton1_i(),this._ProfessionalLevelUpMiniLayer_MultistateButton2_i()];
                  if(_loc2_)
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr007c);
            }
            §§goto(addr0090);
         }
         addr007c:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0090:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.label = "DEVText";
            if(!(_loc3_ && _loc2_))
            {
               addr0033:
               _loc1_.width = 210;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.addEventListener("click",this.__acceptButton_click);
                  if(_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr009e);
               }
               addr0063:
               _loc1_.id = "acceptButton";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr009e:
                           this.acceptButton = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                           }
                        }
                        §§goto(addr00b5);
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr00b5);
            }
            addr00b5:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.onAcceptClick();
         }
      }
      
      private function _ProfessionalLevelUpMiniLayer_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.label = "DEVText";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 210;
               if(!_loc3_)
               {
                  _loc1_.addEventListener("click",this.__declineButton_click);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0065:
                     _loc1_.id = "declineButton";
                     if(_loc2_)
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0065);
            }
            addr0070:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr007c:
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0098);
                  }
                  §§goto(addr00aa);
               }
            }
            §§goto(addr0098);
         }
         addr0098:
         this.declineButton = _loc1_;
         if(_loc2_ || Boolean(this))
         {
            addr00aa:
            BindingManager.executeBindings(this,"declineButton",this.declineButton);
         }
         return _loc1_;
      }
      
      public function __declineButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onDeclineClick();
         }
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_levelUp__large";
               if(!_loc3_)
               {
                  _loc1_.top = -60;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0064:
                     _loc1_.left = -18;
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0082:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0082);
                  }
               }
               addr0086:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr0082);
      }
      
      public function ___ProfessionalLevelUpMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.onCreationComplete(param1);
         }
      }
      
      private function _ProfessionalLevelUpMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc1_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0058);
               }
               §§goto(addr007d);
            }
            §§goto(addr007b);
         }
         addr0058:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc3_))
         {
            §§pop()[0] = new Binding(this,function():BriskDynaVo
            {
               return new BriskDynaVo("gui_popups_emergencyBook","quadrillen_levelup");
            },null,"_ProfessionalLevelUpMiniLayer_BriskImageDynaLib2.briskDynaVo");
            addr007d:
            addr007b:
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1480909402acceptButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1480909402acceptButton = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006f);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get declineButton() : MultistateButton
      {
         return this._1600068152declineButton;
      }
      
      public function set declineButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1600068152declineButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1600068152declineButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"declineButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get layerText() : LocaLabel
      {
         return this._1664451042layerText;
      }
      
      public function set layerText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1664451042layerText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1664451042layerText = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerText",_loc2_,param1));
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
         §§goto(addr0067);
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
                  if(!(_loc4_ && Boolean(_loc2_)))
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
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get minilayerFlavor() : LocaLabel
      {
         return this._119892632minilayerFlavor;
      }
      
      public function set minilayerFlavor(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._119892632minilayerFlavor;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._119892632minilayerFlavor = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minilayerFlavor",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get newSpec() : BriskImageDynaLib
      {
         return this._1845183867newSpec;
      }
      
      public function set newSpec(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1845183867newSpec;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1845183867newSpec = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0063);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0063:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newSpec",_loc2_,param1));
                  }
               }
               §§goto(addr0072);
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get newSpecGroup() : HGroup
      {
         return this._1421216316newSpecGroup;
      }
      
      public function set newSpecGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1421216316newSpecGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1421216316newSpecGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newSpecGroup",_loc2_,param1));
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
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalSlot() : SpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SpecialistSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1795780411professionalSlot;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1795780411professionalSlot = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specText() : LocaLabel
      {
         return this._2133501048specText;
      }
      
      public function set specText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2133501048specText;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2133501048specText = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
   }
}

