package as3isolib.core
{
   import as3isolib.data.INode;
   import as3isolib.data.Node;
   import as3isolib.events.IsoEvent;
   import eDpLib.events.ProxyEvent;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   
   use namespace as3isolib_internal;
   
   public class IsoContainer extends Node implements IIsoContainer
   {
      
      protected var bIncludeInLayout:Boolean = true;
      
      protected var includeInLayoutChanged:Boolean = false;
      
      protected var displayListChildrenArray:Vector.<IIsoContainer>;
      
      private var bAddedToDisplayList:Boolean;
      
      private var bAddedToStage:Boolean;
      
      as3isolib_internal var bIsInvalidated:Boolean;
      
      protected var mainContainer:Sprite;
      
      public function IsoContainer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.displayListChildrenArray = new Vector.<IIsoContainer>();
            if(!(_loc1_ && _loc2_))
            {
               super();
               if(!(_loc1_ && Boolean(this)))
               {
                  addEventListener(IsoEvent.CHILD_ADDED,this.child_changeHandler);
                  if(_loc2_ || _loc1_)
                  {
                     addr0073:
                     addEventListener(IsoEvent.CHILD_REMOVED,this.child_changeHandler);
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0073);
            }
            addr0090:
            this.createChildren();
            if(!_loc1_)
            {
               addr009b:
               proxyTarget = this.mainContainer;
            }
            §§goto(addr00a5);
         }
         addr00a5:
      }
      
      public function get includeInLayout() : Boolean
      {
         return this.bIncludeInLayout;
      }
      
      public function set includeInLayout(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            if(this.bIncludeInLayout != param1)
            {
               if(!_loc3_)
               {
                  addr003b:
                  this.bIncludeInLayout = param1;
                  if(!_loc3_)
                  {
                     this.includeInLayoutChanged = true;
                  }
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function get displayListChildren() : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:IIsoContainer = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.displayListChildrenArray)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      override public function addChildAt(param1:INode, param2:uint) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:DisplayObjectContainer = null;
         if(_loc5_)
         {
            if(!(param1 is IIsoContainer))
            {
               throw new Error("parameter child does not implement IContainer.");
            }
            if(_loc5_ || Boolean(param1))
            {
               super.addChildAt(param1,param2);
               if(_loc5_ || Boolean(param2))
               {
                  if(IIsoContainer(param1).includeInLayout)
                  {
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        addr0067:
                        this.displayListChildrenArray.push(param1);
                        if(_loc5_)
                        {
                           addr0075:
                           §§push(param2);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              if(§§pop() > this.mainContainer.numChildren)
                              {
                                 if(_loc5_)
                                 {
                                    addr00a9:
                                    param2 = uint(this.mainContainer.numChildren);
                                    addr00a1:
                                    if(!_loc4_)
                                    {
                                       addr00b0:
                                       _loc3_ = IIsoContainer(param1).container.parent;
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          §§push(Boolean(_loc3_));
                                          if(_loc5_)
                                          {
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             if(_temp_7)
                                             {
                                                if(_loc5_ || Boolean(param2))
                                                {
                                                   §§goto(addr00ea);
                                                }
                                             }
                                             §§goto(addr00fe);
                                          }
                                          addr00ea:
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             addr00fe:
                                             addr00f1:
                                             §§push(_loc3_ == this.mainContainer);
                                             if(_loc5_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && Boolean(param2)))
                                                {
                                                   _loc3_.removeChild(IIsoContainer(param1).container);
                                                   if(!_loc4_)
                                                   {
                                                      addr0133:
                                                      this.mainContainer.addChildAt(IIsoContainer(param1).container,param2);
                                                   }
                                                }
                                                §§goto(addr0157);
                                             }
                                             §§goto(addr0133);
                                          }
                                          §§goto(addr0157);
                                       }
                                       §§goto(addr00f1);
                                    }
                                 }
                                 §§goto(addr0157);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr0075);
                  }
                  addr0157:
                  return;
               }
               §§goto(addr0067);
            }
            §§goto(addr00a1);
         }
         §§goto(addr00b0);
      }
      
      override public function setChildIndex(param1:INode, param2:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(!param1);
            if(_loc3_)
            {
               §§push(§§pop() is IIsoContainer);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(param2))
                     {
                        throw new Error("parameter child does not implement IContainer.");
                     }
                  }
                  §§push(param1.hasParent);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0074:
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(!_temp_4)
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§goto(addr00a0);
                              }
                              §§goto(addr00e4);
                           }
                        }
                     }
                  }
                  addr00a0:
                  §§push(param1.parent == this);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(param2))
                     {
                        throw new Error("parameter child is not found within node structure.");
                     }
                     addr00e4:
                     this.mainContainer.setChildIndex(IIsoContainer(param1).container,param2);
                  }
                  else
                  {
                     super.setChildIndex(param1,param2);
                     if(_loc3_)
                     {
                        §§goto(addr00e4);
                     }
                  }
                  §§goto(addr00f8);
               }
            }
            §§goto(addr0074);
         }
         addr00f8:
      }
      
      override public function removeChildByID(param1:String) : INode
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         var _loc2_:IIsoContainer = IIsoContainer(super.removeChildByID(param1));
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(Boolean(_loc2_));
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     §§pop();
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        addr007e:
                        §§push(_loc2_.includeInLayout);
                        if(_loc4_)
                        {
                           addr007d:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§push(int(this.displayListChildrenArray.indexOf(_loc2_)));
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 _loc3_ = §§pop();
                                 if(_loc4_)
                                 {
                                    addr00a8:
                                    addr00a7:
                                    if(_loc3_ > -1)
                                    {
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr00c9);
                                       }
                                    }
                                    §§goto(addr00da);
                                 }
                                 addr00c9:
                                 this.displayListChildrenArray.splice(_loc3_,1);
                                 if(_loc4_)
                                 {
                                    addr00da:
                                    this.mainContainer.removeChild(IIsoContainer(_loc2_).container);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr00a7);
                        }
                     }
                     addr00ed:
                     return _loc2_;
                  }
                  §§goto(addr007d);
               }
            }
            §§goto(addr007e);
         }
         §§goto(addr00a7);
      }
      
      override public function removeAllChildren() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IIsoContainer = null;
         var _loc2_:int = 0;
         var _loc3_:* = children;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               if(!_loc1_.includeInLayout)
               {
                  continue;
               }
               if(!(_loc4_ || Boolean(_loc2_)))
               {
                  continue;
               }
            }
            this.mainContainer.removeChild(_loc1_.container);
         }
         if(!_loc5_)
         {
            this.displayListChildrenArray = new Vector.<IIsoContainer>();
            if(!(_loc5_ && _loc3_))
            {
               addr00a2:
               super.removeAllChildren();
            }
            return;
         }
         §§goto(addr00a2);
      }
      
      protected function createChildren() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.mainContainer = new Sprite();
            if(!_loc1_)
            {
               addr0024:
               this.attachMainContainerEventListeners();
            }
            return;
         }
         §§goto(addr0024);
      }
      
      protected function attachMainContainerEventListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.mainContainer)
            {
               if(_loc1_ || Boolean(this))
               {
                  this.mainContainer.addEventListener(Event.ADDED,this.mainContainer_addedHandler,false,0,true);
                  if(_loc1_ || _loc1_)
                  {
                     addr0056:
                     this.mainContainer.addEventListener(Event.ADDED_TO_STAGE,this.mainContainer_addedToStageHandler,false,0,true);
                     if(!_loc2_)
                     {
                        this.mainContainer.addEventListener(Event.REMOVED,this.mainContainer_removedHandler,false,0,true);
                        if(_loc1_ || _loc1_)
                        {
                           addr009c:
                           this.mainContainer.addEventListener(Event.REMOVED_FROM_STAGE,this.mainContainer_removedFromStageHandler,false,0,true);
                        }
                        §§goto(addr00b1);
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0056);
            }
         }
         addr00b1:
      }
      
      public function get isAddedToDisplay() : Boolean
      {
         return this.bAddedToDisplayList;
      }
      
      public function get isAddedToStage() : Boolean
      {
         return this.bAddedToStage;
      }
      
      private function mainContainer_addedHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.bAddedToDisplayList = true;
         }
      }
      
      private function mainContainer_addedToStageHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.bAddedToStage = true;
         }
      }
      
      private function mainContainer_removedHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.bAddedToDisplayList = false;
         }
      }
      
      private function mainContainer_removedFromStageHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.bAddedToStage = false;
         }
      }
      
      public function get isInvalidated() : Boolean
      {
         return this.as3isolib_internal::bIsInvalidated;
      }
      
      public function render(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.preRenderLogic();
            if(!(_loc3_ && param1))
            {
               addr002a:
               this.renderLogic(param1);
               if(_loc2_)
               {
                  this.postRenderLogic();
               }
            }
            return;
         }
         §§goto(addr002a);
      }
      
      protected function preRenderLogic() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.dispatchEvent(new IsoEvent(IsoEvent.RENDER));
         }
      }
      
      protected function renderLogic(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:IIsoContainer = null;
         var _loc3_:* = 0;
         var _loc4_:IIsoContainer = null;
         if(_loc8_ || Boolean(_loc3_))
         {
            §§push(this.includeInLayoutChanged);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(!_loc7_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc8_)
                     {
                        addr0056:
                        §§pop();
                        if(_loc8_ || param1)
                        {
                           §§push(Boolean(as3isolib_internal::parentNode));
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              addr0077:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    addr0089:
                                    _loc2_ = IIsoContainer(as3isolib_internal::parentNode);
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc2_.displayListChildren);
                                       if(!(_loc7_ && Boolean(_loc2_)))
                                       {
                                          §§push(int(§§pop().indexOf(this)));
                                          if(!(_loc7_ && Boolean(_loc3_)))
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc8_)
                                             {
                                                §§push(this.bIncludeInLayout);
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_ || Boolean(_loc3_))
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(-1);
                                                            if(_loc8_ || Boolean(_loc3_))
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!(_loc7_ && Boolean(this)))
                                                                  {
                                                                     §§push(_loc2_.displayListChildren);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr0137:
                                                                        §§pop().push(this);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr0181);
                                                                        }
                                                                        §§goto(addr0191);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr016c:
                                                                        §§pop().splice(_loc3_,1);
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           addr0181:
                                                                           this.mainContainer.visible = this.bIncludeInLayout;
                                                                           if(_loc8_)
                                                                           {
                                                                              addr0191:
                                                                              this.includeInLayoutChanged = false;
                                                                           }
                                                                           §§goto(addr0196);
                                                                        }
                                                                     }
                                                                     §§goto(addr0196);
                                                                  }
                                                                  §§goto(addr0191);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr015e:
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr0168:
                                                                     §§goto(addr016c);
                                                                     §§push(_loc2_.displayListChildren);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr0181);
                                                         }
                                                         else
                                                         {
                                                            addr015c:
                                                            §§push(0);
                                                         }
                                                         §§goto(addr015e);
                                                      }
                                                      §§goto(addr0196);
                                                   }
                                                   else
                                                   {
                                                      addr0149:
                                                      if(!this.bIncludeInLayout)
                                                      {
                                                         if(_loc8_ || Boolean(this))
                                                         {
                                                            §§goto(addr015c);
                                                            §§push(_loc3_);
                                                         }
                                                         §§goto(addr0168);
                                                      }
                                                   }
                                                   §§goto(addr0181);
                                                }
                                                §§goto(addr0149);
                                             }
                                             §§goto(addr0181);
                                          }
                                          §§goto(addr015c);
                                       }
                                       §§goto(addr0137);
                                    }
                                    §§goto(addr0196);
                                 }
                                 §§goto(addr019b);
                              }
                              addr0196:
                              §§goto(addr0197);
                           }
                           addr0197:
                           if(param1)
                           {
                              addr019b:
                              for each(_loc4_ in children)
                              {
                                 if(!(_loc7_ && Boolean(_loc2_)))
                                 {
                                    this.renderChild(_loc4_);
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr0089);
                     }
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0056);
         }
         §§goto(addr019b);
      }
      
      protected function postRenderLogic() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.dispatchEvent(new IsoEvent(IsoEvent.RENDER_COMPLETE));
         }
      }
      
      protected function renderChild(param1:IIsoContainer) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            param1.render(true);
         }
      }
      
      protected function child_changeHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.as3isolib_internal::bIsInvalidated = true;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1.bubbles)
            {
               if(_loc3_)
               {
                  return proxyTarget.dispatchEvent(new ProxyEvent(this,param1));
               }
            }
         }
         return super.dispatchEvent(param1);
      }
      
      public function get depth() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.mainContainer.parent)
            {
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr0037);
               }
            }
            return -1;
         }
         addr0037:
         return this.mainContainer.parent.getChildIndex(this.mainContainer);
      }
      
      public function get container() : Sprite
      {
         return this.mainContainer;
      }
   }
}

