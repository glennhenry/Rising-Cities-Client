package net.bigpoint.cityrama.view.storageBook.ui.components
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
   import spark.components.Group;
   import spark.components.Image;
   import spark.components.supportClasses.ItemRenderer;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   
   use namespace mx_internal;
   
   public class StorageCategoryItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _2008488570ImageContainer:Group;
      
      public var _StorageCategoryItemRenderer_Animate1:Animate;
      
      public var _StorageCategoryItemRenderer_Animate2:Animate;
      
      public var _StorageCategoryItemRenderer_Animate3:Animate;
      
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
      
      public function StorageCategoryItemRenderer()
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
         if(!(_loc4_ && _loc1_))
         {
            §§push(null);
            if(_loc3_ || _loc2_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && _loc2_))
                     {
                        addr0062:
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 addr008d:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(_loc3_ || _loc2_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00c2:
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._StorageCategoryItemRenderer_bindingsSetup();
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr0114:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr0126:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr0143:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_storageBook_ui_components_StorageCategoryItemRendererWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0156:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           addr0166:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              addr0185:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return StorageCategoryItemRenderer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 addr01a2:
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0204:
                                                                                       this.autoDrawBackground = false;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr020e:
                                                                                          this.left = 10;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             this.postLayoutTransformOffsets = this._StorageCategoryItemRenderer_TransformOffsets1_i();
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                this.transitions = [this._StorageCategoryItemRenderer_Transition1_c(),this._StorageCategoryItemRenderer_Transition2_c(),this._StorageCategoryItemRenderer_Transition3_c()];
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr024f:
                                                                                                   this.mxmlContent = [this._StorageCategoryItemRenderer_Group1_i()];
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0260:
                                                                                                      this.currentState = "normal";
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr026d:
                                                                                                         this.addEventListener("creationComplete",this.___StorageCategoryItemRenderer_ItemRenderer1_creationComplete);
                                                                                                         if(_loc3_ || _loc1_)
                                                                                                         {
                                                                                                            addr0286:
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
                                                                                                            if(_loc3_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0345:
                                                                                                               i = 0;
                                                                                                               addr0343:
                                                                                                            }
                                                                                                         }
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
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               Binding(bindings[i]).execute();
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     var _temp_30:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_30;
                                                                                                                     if(!(_loc4_ && _loc1_))
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
                                                                                                   addr03ba:
                                                                                                }
                                                                                                §§goto(addr0343);
                                                                                             }
                                                                                             §§goto(addr026d);
                                                                                          }
                                                                                          §§goto(addr024f);
                                                                                       }
                                                                                       §§goto(addr0286);
                                                                                    }
                                                                                    §§goto(addr020e);
                                                                                 }
                                                                                 §§goto(addr0286);
                                                                              }
                                                                              §§goto(addr0260);
                                                                           }
                                                                           §§goto(addr01a2);
                                                                        }
                                                                        §§goto(addr0345);
                                                                     }
                                                                     §§goto(addr03ba);
                                                                  }
                                                                  §§goto(addr0166);
                                                               }
                                                               §§goto(addr0156);
                                                            }
                                                            §§goto(addr0185);
                                                         }
                                                         §§goto(addr03ba);
                                                      }
                                                      §§goto(addr0345);
                                                   }
                                                   §§goto(addr0343);
                                                }
                                                §§goto(addr0166);
                                             }
                                             §§goto(addr0204);
                                          }
                                          §§goto(addr0114);
                                       }
                                       §§goto(addr0286);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr024f);
                              }
                              §§goto(addr0126);
                           }
                           §§goto(addr008d);
                        }
                     }
                     §§goto(addr0260);
                  }
                  §§goto(addr0143);
               }
               §§goto(addr0062);
            }
            §§goto(addr0050);
         }
         §§goto(addr0143);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && StorageCategoryItemRenderer))
         {
            StorageCategoryItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               addr0052:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0052);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            setStyle("rollOverColor",7295819);
            if(!(_loc1_ && _loc2_))
            {
               addr003f:
               setStyle("selectionColor",13670794);
            }
            return;
         }
         §§goto(addr003f);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SideMenueArchCategoryVO = null;
         if(!(_loc3_ && _loc3_))
         {
            super.data = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0038);
            }
            §§goto(addr003d);
         }
         addr0038:
         if(param1)
         {
            addr003d:
            _loc2_ = param1 as SideMenueArchCategoryVO;
            if(!(_loc3_ && Boolean(param1)))
            {
               this.visual.source = _loc2_.visual;
               if(_loc4_)
               {
                  this.visualActive.source = _loc2_.visualActive;
                  if(!_loc3_)
                  {
                     addr0080:
                     this.visualIcon.source = _loc2_.visualIcon;
                     if(_loc4_ || Boolean(param1))
                     {
                        this.selectionRing.source = _loc2_.selectionRing;
                        if(!_loc3_)
                        {
                           addr00b7:
                           this.ImageContainer.toolTip = _loc2_.tooltip;
                           if(_loc4_ || _loc3_)
                           {
                              addr00cf:
                              this.enabled = _loc2_.enable;
                           }
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr0080);
            }
         }
         addr00d7:
      }
      
      private function _StorageCategoryItemRenderer_TransformOffsets1_i() : TransformOffsets
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TransformOffsets = new TransformOffsets();
         if(_loc3_ || Boolean(_loc1_))
         {
            this.offsets = _loc1_;
            if(_loc3_)
            {
               addr0040:
               BindingManager.executeBindings(this,"offsets",this.offsets);
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _StorageCategoryItemRenderer_Transition1_c() : Transition
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Transition = new Transition();
         if(_loc3_)
         {
            _loc1_.fromState = "*";
            if(_loc3_)
            {
               _loc1_.toState = "hovered";
               if(!_loc2_)
               {
                  _loc1_.autoReverse = false;
                  if(!_loc2_)
                  {
                     addr0050:
                     _loc1_.effect = this._StorageCategoryItemRenderer_Animate1_i();
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0050);
            }
            addr005a:
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _StorageCategoryItemRenderer_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.duration = 200;
            if(_loc3_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._StorageCategoryItemRenderer_SimpleMotionPath1_c()];
               if(_loc3_ || Boolean(this))
               {
                  this._StorageCategoryItemRenderer_Animate1 = _loc1_;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr008c:
                     BindingManager.executeBindings(this,"_StorageCategoryItemRenderer_Animate1",this._StorageCategoryItemRenderer_Animate1);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr008c);
      }
      
      private function _StorageCategoryItemRenderer_SimpleMotionPath1_c() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(!_loc3_)
         {
            _loc1_.property = "x";
         }
         return _loc1_;
      }
      
      private function _StorageCategoryItemRenderer_Transition2_c() : Transition
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Transition = new Transition();
         if(!_loc3_)
         {
            _loc1_.fromState = "selected";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.toState = "normal";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.autoReverse = false;
                  if(!_loc3_)
                  {
                     addr006b:
                     _loc1_.effect = this._StorageCategoryItemRenderer_Animate2_i();
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr006b);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _StorageCategoryItemRenderer_Animate2_i() : Animate
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Animate = new Animate();
         if(_loc2_)
         {
            _loc1_.duration = 200;
            if(_loc2_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._StorageCategoryItemRenderer_SimpleMotionPath2_c()];
               addr002f:
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0072);
               }
               §§goto(addr0084);
            }
            addr0072:
            this._StorageCategoryItemRenderer_Animate2 = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0084:
               BindingManager.executeBindings(this,"_StorageCategoryItemRenderer_Animate2",this._StorageCategoryItemRenderer_Animate2);
            }
            return _loc1_;
         }
         §§goto(addr002f);
      }
      
      private function _StorageCategoryItemRenderer_SimpleMotionPath2_c() : SimpleMotionPath
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.property = "x";
         }
         return _loc1_;
      }
      
      private function _StorageCategoryItemRenderer_Transition3_c() : Transition
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Transition = new Transition();
         if(_loc3_)
         {
            _loc1_.fromState = "hovered";
            if(!_loc2_)
            {
               _loc1_.toState = "normal";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.autoReverse = false;
                  if(_loc3_)
                  {
                     addr0059:
                     _loc1_.effect = this._StorageCategoryItemRenderer_Animate3_i();
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0059);
            }
            addr0063:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _StorageCategoryItemRenderer_Animate3_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.duration = 200;
            if(!_loc2_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._StorageCategoryItemRenderer_SimpleMotionPath3_c()];
               if(!(_loc2_ && _loc3_))
               {
                  addr007f:
                  this._StorageCategoryItemRenderer_Animate3 = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     BindingManager.executeBindings(this,"_StorageCategoryItemRenderer_Animate3",this._StorageCategoryItemRenderer_Animate3);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _StorageCategoryItemRenderer_SimpleMotionPath3_c() : SimpleMotionPath
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.property = "x";
         }
         return _loc1_;
      }
      
      private function _StorageCategoryItemRenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._StorageCategoryItemRenderer_Image1_i(),this._StorageCategoryItemRenderer_Image2_i(),this._StorageCategoryItemRenderer_Image3_i(),this._StorageCategoryItemRenderer_Image4_i()];
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "ImageContainer";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr0098:
                           this.ImageContainer = _loc1_;
                           if(!_loc2_)
                           {
                              addr00a2:
                              BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
                           }
                        }
                        §§goto(addr00af);
                     }
                  }
               }
               §§goto(addr0098);
            }
            addr00af:
            return _loc1_;
         }
         §§goto(addr00a2);
      }
      
      private function _StorageCategoryItemRenderer_Image1_i() : Image
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Image = new Image();
         if(!_loc2_)
         {
            _loc1_.source = "";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc2_)
                  {
                     addr004c:
                     _loc1_.id = "visual";
                     if(_loc3_)
                     {
                        addr0057:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0072:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr007b:
                                 this.visual = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    BindingManager.executeBindings(this,"visual",this.visual);
                                 }
                              }
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0057);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr004c);
      }
      
      private function _StorageCategoryItemRenderer_Image2_i() : Image
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Image = new Image();
         if(!_loc3_)
         {
            _loc1_.visible = false;
            if(_loc2_ || _loc2_)
            {
               _loc1_.source = "";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     addr005b:
                     _loc1_.verticalCenter = 0;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.id = "visualActive";
                        if(!_loc3_)
                        {
                           addr0078:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr0084);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0078);
                  }
                  addr0084:
                  _loc1_.document = this;
                  if(_loc2_ || _loc2_)
                  {
                     addr00a0:
                     this.visualActive = _loc1_;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00b2:
                        BindingManager.executeBindings(this,"visualActive",this.visualActive);
                     }
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00a0);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _StorageCategoryItemRenderer_Image3_i() : Image
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Image = new Image();
         if(_loc3_ || _loc2_)
         {
            _loc1_.source = "";
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0049);
               }
               §§goto(addr0067);
            }
            addr0049:
            _loc1_.verticalCenter = 0;
            if(!(_loc2_ && _loc2_))
            {
               addr0067:
               _loc1_.id = "visualIcon";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00a3:
                           this.visualIcon = _loc1_;
                           if(!(_loc2_ && _loc2_))
                           {
                              BindingManager.executeBindings(this,"visualIcon",this.visualIcon);
                           }
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00a3);
               }
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr00a3);
      }
      
      private function _StorageCategoryItemRenderer_Image4_i() : Image
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Image = new Image();
         if(!_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.source = "";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0046:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.id = "selectionRing";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00a3);
                                 }
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr00b5);
                  }
                  addr00a3:
                  this.selectionRing = _loc1_;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr00b5:
                     BindingManager.executeBindings(this,"selectionRing",this.selectionRing);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr009a);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      public function ___StorageCategoryItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.init();
         }
      }
      
      private function _StorageCategoryItemRenderer_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_)
         {
            _loc1_[0] = new Binding(this,null,null,"_StorageCategoryItemRenderer_Animate1.target","offsets");
            if(_loc3_ || _loc2_)
            {
               §§goto(addr005b);
            }
            §§goto(addr0075);
         }
         addr005b:
         _loc1_[1] = new Binding(this,null,null,"_StorageCategoryItemRenderer_Animate2.target","offsets");
         if(!_loc2_)
         {
            addr0075:
            _loc1_[2] = new Binding(this,null,null,"_StorageCategoryItemRenderer_Animate3.target","offsets");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : Group
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2008488570ImageContainer;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0040:
                  this._2008488570ImageContainer = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005e);
            }
            addr0084:
            return;
         }
         §§goto(addr0040);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1548407232offsets = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offsets",_loc2_,param1));
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
      public function get selectionRing() : Image
      {
         return this._1039378908selectionRing;
      }
      
      public function set selectionRing(param1:Image) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1039378908selectionRing;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1039378908selectionRing = param1;
                  addr003f:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectionRing",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : Image
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:Image) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._816216256visual;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._816216256visual = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
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
         §§goto(addr0070);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1073447526visualActive = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualActive",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get visualIcon() : Image
      {
         return this._320432167visualIcon;
      }
      
      public function set visualIcon(param1:Image) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._320432167visualIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._320432167visualIcon = param1;
                  if(_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr005b);
      }
   }
}

