package as3isolib.display.scene
{
   import as3isolib.bounds.IBounds;
   import as3isolib.bounds.SceneBounds;
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.core.IsoContainer;
   import as3isolib.core.as3isolib_internal;
   import as3isolib.data.INode;
   import as3isolib.display.renderers.DefaultSceneLayoutRenderer;
   import as3isolib.display.renderers.ISceneLayoutRenderer;
   import as3isolib.display.renderers.ISceneRenderer;
   import as3isolib.events.IsoEvent;
   import flash.display.DisplayObjectContainer;
   import mx.core.ClassFactory;
   import mx.core.IFactory;
   
   use namespace as3isolib_internal;
   
   public class IsoScene extends IsoContainer implements IIsoScene
   {
      
      private var _isoBounds:IBounds;
      
      protected var host:DisplayObjectContainer;
      
      protected var invalidatedChildrenArray:Array;
      
      public var layoutEnabled:Boolean = true;
      
      private var bLayoutIsFactory:Boolean = true;
      
      private var layoutObject:Object;
      
      public var stylingEnabled:Boolean = true;
      
      private var styleRendererFactories:Vector.<IFactory>;
      
      public function IsoScene()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.invalidatedChildrenArray = [];
            if(!_loc2_)
            {
               this.styleRendererFactories = new Vector.<IFactory>();
               addr0032:
               if(_loc1_ || _loc2_)
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     this.layoutObject = new ClassFactory(DefaultSceneLayoutRenderer);
                  }
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      public function get isoBounds() : IBounds
      {
         return new SceneBounds(this);
      }
      
      public function get hostContainer() : DisplayObjectContainer
      {
         return this.host;
      }
      
      public function set hostContainer(param1:DisplayObjectContainer) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Boolean(param1));
            if(!_loc3_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               §§push(_temp_1);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.host == param1);
                           if(_loc2_ || Boolean(this))
                           {
                              addr004d:
                              §§push(!§§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr005b);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr0076);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr004d);
                  }
                  addr005b:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(Boolean(this.host));
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0076:
                           var _temp_6:* = §§pop();
                           addr0077:
                           §§push(_temp_6);
                           if(_temp_6)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§pop();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00ad:
                                    if(this.host.contains(container))
                                    {
                                       if(!_loc3_)
                                       {
                                          this.host.removeChild(container);
                                          if(_loc2_)
                                          {
                                             addr00c6:
                                             as3isolib_internal::ownerObject = null;
                                             if(_loc2_)
                                             {
                                                addr0100:
                                                this.host = param1;
                                                if(_loc2_)
                                                {
                                                   addr010a:
                                                   if(this.host)
                                                   {
                                                      if(_loc2_ || Boolean(param1))
                                                      {
                                                         this.host.addChild(container);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            as3isolib_internal::ownerObject = this.host;
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr015b:
                                                               as3isolib_internal::parentNode = null;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0162);
                                                }
                                             }
                                          }
                                          §§goto(addr015b);
                                       }
                                       §§goto(addr00c6);
                                    }
                                    else if(hasParent)
                                    {
                                       if(_loc2_ || Boolean(param1))
                                       {
                                          parent.removeChild(this);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§goto(addr0100);
                                          }
                                       }
                                       §§goto(addr015b);
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr0162);
                              }
                           }
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00c6);
                  }
                  addr0162:
                  return;
               }
               §§goto(addr0077);
            }
            §§goto(addr0076);
         }
         §§goto(addr0100);
      }
      
      public function get invalidatedChildren() : Array
      {
         return this.invalidatedChildrenArray;
      }
      
      override public function addChildAt(param1:INode, param2:uint) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!(param1 is IIsoDisplayObject))
            {
               throw new Error("parameter child is not of type IIsoDisplayObject");
            }
            if(!(_loc3_ && _loc3_))
            {
               super.addChildAt(param1,param2);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0065);
               }
               §§goto(addr0082);
            }
            addr0065:
            param1.addEventListener(IsoEvent.INVALIDATE,this.child_invalidateHandler);
            if(_loc4_ || Boolean(this))
            {
               addr0082:
               as3isolib_internal::bIsInvalidated = true;
               if(_loc4_)
               {
               }
            }
            §§goto(addr009f);
         }
         addr009f:
      }
      
      override public function setChildIndex(param1:INode, param2:uint) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super.setChildIndex(param1,param2);
            if(!_loc3_)
            {
               as3isolib_internal::bIsInvalidated = true;
            }
         }
      }
      
      override public function removeChildByID(param1:String) : INode
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:INode = super.removeChildByID(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0041:
                  _loc2_.removeEventListener(IsoEvent.INVALIDATE,this.child_invalidateHandler);
                  if(!_loc3_)
                  {
                     addr0055:
                     as3isolib_internal::bIsInvalidated = true;
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0055);
            }
            addr005c:
            return _loc2_;
         }
         §§goto(addr0041);
      }
      
      override public function removeAllChildren() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:INode = null;
         for each(_loc1_ in children)
         {
            if(!_loc5_)
            {
               _loc1_.removeEventListener(IsoEvent.INVALIDATE,this.child_invalidateHandler);
            }
         }
         if(_loc4_)
         {
            super.removeAllChildren();
            if(!_loc5_)
            {
               as3isolib_internal::bIsInvalidated = true;
            }
         }
      }
      
      protected function child_invalidateHandler(param1:IsoEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = param1.target;
         if(_loc3_ || Boolean(this))
         {
            §§push(this.invalidatedChildrenArray);
            if(_loc3_)
            {
               if(§§pop().indexOf(_loc2_) == -1)
               {
                  if(_loc3_)
                  {
                     §§goto(addr004f);
                  }
               }
               §§goto(addr0059);
            }
            addr004f:
            this.invalidatedChildrenArray.push(_loc2_);
            if(!_loc4_)
            {
               addr0059:
               as3isolib_internal::bIsInvalidated = true;
            }
            §§goto(addr0060);
         }
         addr0060:
      }
      
      public function get layoutRenderer() : Object
      {
         return this.layoutObject;
      }
      
      public function set layoutRenderer(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  this.layoutObject = new ClassFactory(DefaultSceneLayoutRenderer);
                  if(_loc2_)
                  {
                     this.bLayoutIsFactory = true;
                     if(_loc2_ || Boolean(this))
                     {
                        as3isolib_internal::bIsInvalidated = true;
                        if(_loc2_ || _loc2_)
                        {
                           addr005a:
                           §§push(Boolean(param1));
                           if(!_loc3_)
                           {
                              var _temp_3:* = §§pop();
                              §§push(_temp_3);
                              if(_temp_3)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(this.layoutObject == param1);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(!§§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§goto(addr00a5);
                                          }
                                          §§goto(addr00c0);
                                       }
                                       §§goto(addr00a5);
                                    }
                                    §§goto(addr0117);
                                 }
                              }
                              addr00a5:
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(param1 is IFactory);
                                    if(_loc2_)
                                    {
                                       addr00c0:
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             addr00c9:
                                             this.bLayoutIsFactory = true;
                                             if(_loc3_)
                                             {
                                                addr00f8:
                                                this.bLayoutIsFactory = false;
                                                if(_loc2_)
                                                {
                                                }
                                             }
                                          }
                                          addr0117:
                                          this.layoutObject = param1;
                                          if(_loc2_)
                                          {
                                             addr0121:
                                             as3isolib_internal::bIsInvalidated = true;
                                          }
                                          §§goto(addr0128);
                                       }
                                       else
                                       {
                                          addr00dc:
                                          if(!(param1 is ISceneLayoutRenderer))
                                          {
                                             throw new Error("value for layoutRenderer is not of type IFactory or ISceneLayoutRenderer");
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§goto(addr00f8);
                                          }
                                       }
                                       §§goto(addr0121);
                                    }
                                    §§goto(addr00dc);
                                 }
                                 §§goto(addr00f8);
                              }
                              addr0128:
                              return;
                           }
                           §§goto(addr00dc);
                        }
                     }
                  }
                  §§goto(addr0117);
               }
               §§goto(addr0121);
            }
            §§goto(addr005a);
         }
         §§goto(addr00c9);
      }
      
      public function get styleRenderers() : Array
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IFactory = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.styleRendererFactories)
         {
            if(_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function set styleRenderers(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this.styleRendererFactories = Vector.<IFactory>(param1);
                  addr0036:
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006d:
                     as3isolib_internal::bIsInvalidated = true;
                  }
               }
            }
            else
            {
               this.styleRendererFactories = null;
               if(!_loc2_)
               {
                  §§goto(addr006d);
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      public function invalidateScene() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            as3isolib_internal::bIsInvalidated = true;
         }
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:ISceneRenderer = null;
         var _loc3_:IFactory = null;
         var _loc4_:ISceneLayoutRenderer = null;
         if(_loc8_)
         {
            super.renderLogic(param1);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§goto(addr003e);
            }
            §§goto(addr0078);
         }
         addr003e:
         if(as3isolib_internal::bIsInvalidated)
         {
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§push(this.layoutEnabled);
               if(_loc8_ || Boolean(_loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        addr0078:
                        §§push(this.bLayoutIsFactory);
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 _loc4_ = IFactory(this.layoutObject).newInstance();
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    addr00cd:
                                    if(_loc4_)
                                    {
                                       if(!_loc7_)
                                       {
                                          _loc4_.renderScene(this);
                                       }
                                    }
                                 }
                                 addr00e0:
                                 §§push(this.stylingEnabled);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && param1))
                                    {
                                       addr00fa:
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       if(_temp_8)
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr0105);
                                          }
                                       }
                                       §§goto(addr0115);
                                    }
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr0115);
                              }
                              §§goto(addr0127);
                           }
                           else
                           {
                              _loc4_ = ISceneLayoutRenderer(this.layoutObject);
                           }
                           §§goto(addr00cd);
                        }
                        addr0105:
                        §§pop();
                        if(_loc8_)
                        {
                           addr0115:
                           addr010c:
                           if(this.styleRendererFactories.length > 0)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 addr0127:
                                 mainContainer.graphics.clear();
                              }
                              §§goto(addr0131);
                           }
                           §§goto(addr0187);
                        }
                        §§goto(addr0131);
                     }
                     addr0131:
                     for each(_loc3_ in this.styleRendererFactories)
                     {
                        _loc2_ = _loc3_.newInstance();
                        if(_loc8_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc7_)
                              {
                                 _loc2_.renderScene(this);
                              }
                           }
                        }
                     }
                     if(!_loc7_)
                     {
                        addr0187:
                        as3isolib_internal::bIsInvalidated = false;
                     }
                     §§goto(addr018e);
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr00fa);
            }
            §§goto(addr010c);
         }
         addr018e:
      }
      
      override protected function postRenderLogic() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.invalidatedChildrenArray = [];
            if(!_loc2_)
            {
               super.postRenderLogic();
               if(_loc1_ || Boolean(this))
               {
                  this.sceneRendered();
               }
            }
         }
      }
      
      protected function sceneRendered() : void
      {
      }
   }
}

