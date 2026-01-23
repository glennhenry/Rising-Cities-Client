package net.bigpoint.cityrama.view.architectBook.ui.components
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.geom.TransformOffsets;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.states.Transition;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.Image;
   import spark.components.supportClasses.ItemRenderer;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   
   use namespace mx_internal;
   
   public class SideMenueArchCategoryItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _2008488570ImageContainer:Group;
      
      public var _SideMenueArchCategoryItemRenderer_Animate1:Animate;
      
      public var _SideMenueArchCategoryItemRenderer_Animate2:Animate;
      
      public var _SideMenueArchCategoryItemRenderer_Animate3:Animate;
      
      private var _1844889811newItem:BriskImageDynaLib;
      
      private var _1548407232offsets:TransformOffsets;
      
      private var _1039378908selectionRing:Image;
      
      private var _816216256visual:Image;
      
      private var _1073447526visualActive:Image;
      
      private var _320432167visualIcon:Image;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SideMenueArchCategoryItemRenderer()
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
         if(_loc3_ || _loc1_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr005d:
                              §§pop().§§slot[5] = null;
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc1_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_ || _loc2_)
                                          {
                                             super();
                                             if(!_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   addr00bf:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr00cf:
                                                      §§pop().§§slot[1] = this._SideMenueArchCategoryItemRenderer_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         addr00df:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  addr0113:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_components_SideMenueArchCategoryItemRendererWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr0185:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return SideMenueArchCategoryItemRenderer[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01a2:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && Boolean(this)))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                this.autoDrawBackground = false;
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0215:
                                                                                                   this.left = 10;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      this.postLayoutTransformOffsets = this._SideMenueArchCategoryItemRenderer_TransformOffsets1_i();
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         addr0238:
                                                                                                         this.transitions = [this._SideMenueArchCategoryItemRenderer_Transition1_c(),this._SideMenueArchCategoryItemRenderer_Transition2_c(),this._SideMenueArchCategoryItemRenderer_Transition3_c()];
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr0255:
                                                                                                            this.mxmlContent = [this._SideMenueArchCategoryItemRenderer_Group1_i(),this._SideMenueArchCategoryItemRenderer_BriskImageDynaLib1_i()];
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr026b:
                                                                                                               this.currentState = "normal";
                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                               {
                                                                                                                  addr0280:
                                                                                                                  this.addEventListener("creationComplete",this.___SideMenueArchCategoryItemRenderer_ItemRenderer1_creationComplete);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr0291:
                                                                                                                     this.addEventListener("click",this.___SideMenueArchCategoryItemRenderer_ItemRenderer1_click);
                                                                                                                     if(!(_loc4_ && _loc1_))
                                                                                                                     {
                                                                                                                        states = [new State({
                                                                                                                           "name":"normal",
                                                                                                                           "overrides":[]
                                                                                                                        }),new State({
                                                                                                                           "name":"hovered",
                                                                                                                           "overrides":[new SetProperty().initializeFromObject({
                                                                                                                              "target":"offsets",
                                                                                                                              "name":"x",
                                                                                                                              "value":8
                                                                                                                           })]
                                                                                                                        }),new State({
                                                                                                                           "name":"selected",
                                                                                                                           "overrides":[new SetProperty().initializeFromObject({
                                                                                                                              "target":"offsets",
                                                                                                                              "name":"x",
                                                                                                                              "value":8
                                                                                                                           }),new SetProperty().initializeFromObject({
                                                                                                                              "target":"visual",
                                                                                                                              "name":"visible",
                                                                                                                              "value":false
                                                                                                                           }),new SetProperty().initializeFromObject({
                                                                                                                              "target":"visualActive",
                                                                                                                              "name":"visible",
                                                                                                                              "value":true
                                                                                                                           }),new SetProperty().initializeFromObject({
                                                                                                                              "target":"selectionRing",
                                                                                                                              "name":"visible",
                                                                                                                              "value":true
                                                                                                                           })]
                                                                                                                        })];
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr036a:
                                                                                                                           i = 0;
                                                                                                                           addr0368:
                                                                                                                        }
                                                                                                                        var _temp_20:*;
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
                                                                                                                                    if(_loc3_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§§slot[4]);
                                                                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          §§push(uint(§§pop() + 1));
                                                                                                                                          if(_loc3_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(!(_loc4_ && _loc1_))
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
                                                                                                                        while(var _temp_20:* = §§pop(), §§pop().§§slot[4] = _temp_20, _loc3_ || Boolean(this));
                                                                                                                        
                                                                                                                        return;
                                                                                                                        addr03e6:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0368);
                                                                                                               }
                                                                                                               §§goto(addr0291);
                                                                                                            }
                                                                                                            §§goto(addr03e6);
                                                                                                         }
                                                                                                         §§goto(addr0280);
                                                                                                      }
                                                                                                      §§goto(addr03e6);
                                                                                                   }
                                                                                                   §§goto(addr0280);
                                                                                                }
                                                                                                §§goto(addr0368);
                                                                                             }
                                                                                             §§goto(addr0215);
                                                                                          }
                                                                                          §§goto(addr0255);
                                                                                       }
                                                                                       §§goto(addr0291);
                                                                                    }
                                                                                    §§goto(addr03e6);
                                                                                 }
                                                                                 §§goto(addr036a);
                                                                              }
                                                                              §§goto(addr03e6);
                                                                           }
                                                                           §§goto(addr036a);
                                                                        }
                                                                        §§goto(addr0291);
                                                                     }
                                                                     §§goto(addr0185);
                                                                  }
                                                                  §§goto(addr0368);
                                                               }
                                                               §§goto(addr036a);
                                                            }
                                                            §§goto(addr01a2);
                                                         }
                                                         §§goto(addr036a);
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr0113);
                                                }
                                                §§goto(addr0368);
                                             }
                                             §§goto(addr026b);
                                          }
                                          §§goto(addr0280);
                                       }
                                       §§goto(addr0238);
                                    }
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr0280);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr0368);
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr0185);
            }
            §§goto(addr005d);
         }
         §§goto(addr00cf);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            SideMenueArchCategoryItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
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
      
      private function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            setStyle("rollOverColor",7295819);
            if(!_loc2_)
            {
               addr0024:
               setStyle("selectionColor",13670794);
            }
            return;
         }
         §§goto(addr0024);
      }
      
      private function checkResetToIndex(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(this.currentState == "selected")
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr0042:
                  dispatchEvent(new Event("CloseDetailView_Event",true,true));
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:SideMenueArchCategoryVO = null;
         if(_loc4_)
         {
            super.data = param1;
            if(_loc4_ || Boolean(this))
            {
               §§goto(addr0032);
            }
            §§goto(addr0037);
         }
         addr0032:
         if(param1)
         {
            addr0037:
            _loc2_ = param1 as SideMenueArchCategoryVO;
            if(_loc4_)
            {
               this.newItem.visible = this.newItem.includeInLayout = _loc2_.isNew;
               if(_loc4_)
               {
                  this.visual.source = _loc2_.visual;
                  if(!_loc5_)
                  {
                     this.visualActive.source = _loc2_.visualActive;
                     if(_loc4_ || Boolean(this))
                     {
                        this.visualIcon.source = _loc2_.visualIcon;
                        if(!_loc5_)
                        {
                           addr00a8:
                           this.selectionRing.source = _loc2_.selectionRing;
                           if(_loc4_)
                           {
                              addr00b9:
                              this.ImageContainer.toolTip = _loc2_.tooltip;
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 addr00dd:
                                 this.visible = this.includeInLayout = _loc2_.visible;
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    addr00f9:
                                    this.enabled = _loc2_.enable;
                                 }
                                 §§goto(addr0101);
                              }
                           }
                           §§goto(addr00f9);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00f9);
               }
               §§goto(addr0101);
            }
            §§goto(addr00dd);
         }
         addr0101:
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            super.stateChanged(param1,param2,param3);
            if(!(_loc4_ && Boolean(this)))
            {
               addr0039:
               if(param1 == "selected")
               {
                  if(_loc5_ || param3)
                  {
                     §§push(this.newItem);
                     if(_loc5_ || Boolean(param1))
                     {
                        if(§§pop().visible)
                        {
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              §§push(this.newItem);
                              if(_loc5_ || Boolean(this))
                              {
                                 addr009e:
                                 §§push(false);
                                 if(_loc5_)
                                 {
                                    §§pop().visible = §§pop();
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr00ba:
                                       this.newItem.includeInLayout = false;
                                       addr00b9:
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00b9);
                           }
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr009e);
                  }
               }
            }
            addr00bc:
            return;
         }
         §§goto(addr0039);
      }
      
      private function _SideMenueArchCategoryItemRenderer_TransformOffsets1_i() : TransformOffsets
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TransformOffsets = new TransformOffsets();
         if(_loc2_)
         {
            this.offsets = _loc1_;
            if(_loc2_ || _loc2_)
            {
               BindingManager.executeBindings(this,"offsets",this.offsets);
            }
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Transition1_c() : Transition
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Transition = new Transition();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.fromState = "*";
            if(_loc3_)
            {
               §§goto(addr004c);
            }
            §§goto(addr0060);
         }
         addr004c:
         _loc1_.toState = "hovered";
         if(_loc3_ || _loc2_)
         {
            addr0060:
            _loc1_.autoReverse = false;
            if(_loc3_)
            {
               _loc1_.effect = this._SideMenueArchCategoryItemRenderer_Animate1_i();
            }
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.duration = 200;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§push(_loc1_);
               var _temp_4:* = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath1_c()];
               §§pop().motionPaths = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath1_c()];
               if(!_loc2_)
               {
                  this._SideMenueArchCategoryItemRenderer_Animate1 = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"_SideMenueArchCategoryItemRenderer_Animate1",this._SideMenueArchCategoryItemRenderer_Animate1);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr008d);
            }
         }
         addr009a:
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_SimpleMotionPath1_c() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_)
         {
            _loc1_.property = "x";
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Transition2_c() : Transition
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Transition = new Transition();
         if(!_loc3_)
         {
            _loc1_.fromState = "selected";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.toState = "normal";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.autoReverse = false;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0075:
                     _loc1_.effect = this._SideMenueArchCategoryItemRenderer_Animate2_i();
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0075);
      }
      
      private function _SideMenueArchCategoryItemRenderer_Animate2_i() : Animate
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Animate = new Animate();
         if(!_loc3_)
         {
            _loc1_.duration = 200;
            if(_loc2_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath2_c()];
               addr002f:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  this._SideMenueArchCategoryItemRenderer_Animate2 = _loc1_;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0089:
                     BindingManager.executeBindings(this,"_SideMenueArchCategoryItemRenderer_Animate2",this._SideMenueArchCategoryItemRenderer_Animate2);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0089);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr002f);
      }
      
      private function _SideMenueArchCategoryItemRenderer_SimpleMotionPath2_c() : SimpleMotionPath
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.property = "x";
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Transition3_c() : Transition
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Transition = new Transition();
         if(!_loc2_)
         {
            _loc1_.fromState = "hovered";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.toState = "normal";
               if(!_loc2_)
               {
                  addr004f:
                  _loc1_.autoReverse = false;
                  if(!_loc2_)
                  {
                     _loc1_.effect = this._SideMenueArchCategoryItemRenderer_Animate3_i();
                  }
               }
               §§goto(addr0063);
            }
            §§goto(addr004f);
         }
         addr0063:
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Animate3_i() : Animate
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Animate = new Animate();
         if(!_loc3_)
         {
            _loc1_.duration = 200;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0044);
            }
            §§goto(addr007c);
         }
         addr0044:
         §§push(_loc1_);
         var _temp_2:* = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath3_c()];
         §§pop().motionPaths = new <MotionPath>[this._SideMenueArchCategoryItemRenderer_SimpleMotionPath3_c()];
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr007c:
            this._SideMenueArchCategoryItemRenderer_Animate3 = _loc1_;
            if(!_loc3_)
            {
               BindingManager.executeBindings(this,"_SideMenueArchCategoryItemRenderer_Animate3",this._SideMenueArchCategoryItemRenderer_Animate3);
            }
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_SimpleMotionPath3_c() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_)
         {
            _loc1_.property = "x";
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._SideMenueArchCategoryItemRenderer_Image1_i(),this._SideMenueArchCategoryItemRenderer_Image2_i(),this._SideMenueArchCategoryItemRenderer_Image3_i(),this._SideMenueArchCategoryItemRenderer_Image4_i()];
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "ImageContainer";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0076:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0094:
                           this.ImageContainer = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00a6:
                              BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
                           }
                        }
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0094);
               }
               addr00b3:
               return _loc1_;
            }
            §§goto(addr0076);
         }
         §§goto(addr00a6);
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image1_i() : Image
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Image = new Image();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.source = "";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  addr004e:
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0063);
            }
            §§goto(addr004e);
         }
         addr0058:
         _loc1_.id = "visual";
         if(_loc3_)
         {
            addr0063:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr008c);
                  }
               }
               §§goto(addr009e);
            }
            addr008c:
            this.visual = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr009e:
               BindingManager.executeBindings(this,"visual",this.visual);
            }
            §§goto(addr00ab);
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image2_i() : Image
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Image = new Image();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.visible = false;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.source = "";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr005e);
               }
               §§goto(addr0068);
            }
            addr005e:
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               addr0068:
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "visualActive";
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0085);
                  }
                  §§goto(addr00bf);
               }
               addr0085:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr00b5);
                     }
                  }
                  §§goto(addr00bf);
               }
               addr00b5:
               this.visualActive = _loc1_;
               if(_loc3_)
               {
                  addr00bf:
                  BindingManager.executeBindings(this,"visualActive",this.visualActive);
               }
               §§goto(addr00cc);
            }
            addr00cc:
            return _loc1_;
         }
         §§goto(addr00b5);
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image3_i() : Image
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Image = new Image();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.source = "";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "visualIcon";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr009f:
                                 this.visualIcon = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a9:
                                    BindingManager.executeBindings(this,"visualIcon",this.visualIcon);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr00a9);
                           }
                           addr00b6:
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr009f);
               }
               §§goto(addr00a9);
            }
            §§goto(addr006f);
         }
         §§goto(addr00a9);
      }
      
      private function _SideMenueArchCategoryItemRenderer_Image4_i() : Image
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Image = new Image();
         if(!_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && _loc3_))
            {
               addr0035:
               _loc1_.source = "";
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_)
                     {
                        _loc1_.id = "selectionRing";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr007f);
                              }
                           }
                           §§goto(addr009c);
                        }
                        addr007f:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr009c:
                           this.selectionRing = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr00ae:
                              BindingManager.executeBindings(this,"selectionRing",this.selectionRing);
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0035);
      }
      
      private function _SideMenueArchCategoryItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "symbol_new_small";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc2_)
                  {
                     _loc1_.top = 0;
                     if(_loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        addr0054:
                        if(_loc2_)
                        {
                           addr0067:
                           _loc1_.visible = false;
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.id = "newItem";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§goto(addr00a3);
                                    }
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr00b4);
                              }
                              addr00a3:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr00b4:
                                 this.newItem = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00be:
                                    BindingManager.executeBindings(this,"newItem",this.newItem);
                                 }
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0067);
            }
            §§goto(addr0054);
         }
         addr00cb:
         return _loc1_;
      }
      
      public function ___SideMenueArchCategoryItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.init();
         }
      }
      
      public function ___SideMenueArchCategoryItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.checkResetToIndex(param1);
         }
      }
      
      private function _SideMenueArchCategoryItemRenderer_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && _loc2_))
         {
            _loc1_[0] = new Binding(this,null,null,"_SideMenueArchCategoryItemRenderer_Animate1.target","offsets");
            if(_loc3_ || _loc2_)
            {
               _loc1_[1] = new Binding(this,null,null,"_SideMenueArchCategoryItemRenderer_Animate2.target","offsets");
               if(!_loc2_)
               {
                  addr0078:
                  _loc1_[2] = new Binding(this,null,null,"_SideMenueArchCategoryItemRenderer_Animate3.target","offsets");
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : Group
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2008488570ImageContainer;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2008488570ImageContainer = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr006a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr007a);
            }
            addr0089:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get newItem() : BriskImageDynaLib
      {
         return this._1844889811newItem;
      }
      
      public function set newItem(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844889811newItem;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1844889811newItem = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newItem",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get offsets() : TransformOffsets
      {
         return this._1548407232offsets;
      }
      
      public function set offsets(param1:TransformOffsets) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1548407232offsets;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1548407232offsets = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offsets",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get selectionRing() : Image
      {
         return this._1039378908selectionRing;
      }
      
      public function set selectionRing(param1:Image) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1039378908selectionRing;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1039378908selectionRing = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectionRing",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : Image
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:Image) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._816216256visual;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._816216256visual = param1;
                  addr0047:
                  if(_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get visualActive() : Image
      {
         return this._1073447526visualActive;
      }
      
      public function set visualActive(param1:Image) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1073447526visualActive;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1073447526visualActive = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualActive",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get visualIcon() : Image
      {
         return this._320432167visualIcon;
      }
      
      public function set visualIcon(param1:Image) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._320432167visualIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._320432167visualIcon = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0058);
      }
   }
}

