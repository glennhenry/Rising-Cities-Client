package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManagerClientObjects;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HitZoneAssistant;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class ClientFieldObject extends SpriteMatrixObject3d implements IInteraction, IEstablishedManagerImplementation
   {
      
      protected var _hitzoneContainer:Sprite;
      
      protected var _hitzoneAssistant:HitZoneAssistant;
      
      protected var _billboardObjectContainer:SmartObjectContainer;
      
      protected var _assetCollection:PreloadableDisplayObject;
      
      protected var _concreteComposition:Sprite;
      
      private var _establishedManager:EstablishedManagerClientFieldObject;
      
      private var _clientFieldObjectVo:ClientFieldObjectVo;
      
      private var _highlightManager:IHighlightManager;
      
      private var _tolerancePoint:Point;
      
      private var _clickLock:Boolean;
      
      public function ClientFieldObject(param1:PreloadableDisplayObject, param2:MatrixObject3dVo)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:DisplayObject = null;
         if(!_loc6_)
         {
            this._hitzoneContainer = new Sprite();
            if(_loc7_)
            {
               this._billboardObjectContainer = new SmartObjectContainer();
               if(!(_loc6_ && Boolean(param2)))
               {
                  this._concreteComposition = new Sprite();
                  if(_loc7_)
                  {
                     addr0055:
                     super(this._concreteComposition,param2);
                     if(_loc7_ || Boolean(this))
                     {
                        addr006b:
                        this._hitzoneAssistant = new HitZoneAssistant(this._hitzoneContainer,this._billboardObjectContainer);
                        if(_loc7_)
                        {
                           this._clientFieldObjectVo = param2 as ClientFieldObjectVo;
                           if(_loc7_)
                           {
                              addr0093:
                              this._assetCollection = param1;
                              if(_loc7_)
                              {
                                 addr00aa:
                                 this.prepareEstablishedManager();
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr00bd:
                                    this.invalidateEstablishedManager();
                                    if(_loc7_)
                                    {
                                       this.addContainer(this._hitzoneContainer,true);
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             addr00fe:
                                             this.prepareHighlightManager();
                                          }
                                          addr0103:
                                          for each(_loc3_ in this.sprites)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc3_ is Sprite)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      (_loc3_ as Sprite).mouseEnabled = false;
                                                   }
                                                }
                                             }
                                          }
                                          if(!_loc6_)
                                          {
                                             this._hitzoneContainer.mouseEnabled = true;
                                             if(!_loc6_)
                                             {
                                                addr0162:
                                                this.usePreciseValues = true;
                                             }
                                             return;
                                          }
                                          §§goto(addr0162);
                                       }
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr0103);
                                 }
                                 §§goto(addr00fe);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0093);
            }
            §§goto(addr0055);
         }
         §§goto(addr0093);
      }
      
      protected function addContainer(param1:Sprite, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            param1.mouseChildren = param3;
            if(_loc5_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0044);
         }
         addr0031:
         param1.mouseEnabled = param2;
         if(_loc5_ || param3)
         {
            addr0044:
            this._concreteComposition.addChild(param1);
         }
      }
      
      public function prepareHighlightManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._highlightManager);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this._highlightManager = new HighlightManagerClientObjects();
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0068:
                        this._highlightManager.prepareHighlightManager(this._clientFieldObjectVo,this._billboardObjectContainer);
                        addr0064:
                     }
                  }
                  return;
               }
               §§goto(addr0064);
            }
            §§goto(addr0068);
         }
         §§goto(addr0064);
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this._highlightManager.invalidateHighlightManager(param1,param2);
         }
      }
      
      public function invalidateEstablishedManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._establishedManager.invalidate();
         }
      }
      
      public function prepareEstablishedManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._establishedManager);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     if(this._hitzoneAssistant == null)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           throw new RamaCityError("Please instantiate _hitzoneAssistant first");
                        }
                        addr00ad:
                        this._establishedManager.prepare(this._clientFieldObjectVo,this._billboardObjectContainer,this._assetCollection);
                        addr00a9:
                     }
                     else
                     {
                        this.addContainer(this._billboardObjectContainer);
                        addr0079:
                        if(_loc2_ || _loc2_)
                        {
                           this._establishedManager = new EstablishedManagerClientFieldObject();
                           if(_loc2_)
                           {
                              §§goto(addr00a9);
                           }
                        }
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00a9);
               }
               addr00bd:
               return;
            }
            §§goto(addr00ad);
         }
         §§goto(addr0079);
      }
      
      public function dispatchRollOver(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this);
         if(_loc3_)
         {
            _loc2_.iconEvent = param1;
            if(_loc3_)
            {
               addr0036:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0036);
      }
      
      public function dispatchMouseClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
         }
      }
      
      private function onMouseRollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc2_)
            {
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(_loc2_ || Boolean(param1))
               {
                  this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(_loc2_ || _loc2_)
                  {
                     this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(_loc2_)
                     {
                        this._hitzoneContainer.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                        if(_loc2_)
                        {
                           addr00b3:
                           this._hitzoneContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                           if(!_loc3_)
                           {
                              addr00c8:
                              this.dispatchRollOver();
                           }
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr00c8);
               }
            }
         }
         addr00cd:
      }
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc3_)
            {
               this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(_loc3_ || _loc3_)
               {
                  this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(_loc3_)
                  {
                     addr0082:
                     this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00a0:
                        this.dispatchRollOut();
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0082);
            }
            §§goto(addr00a0);
         }
         addr00a5:
      }
      
      public function dispatchRollOut(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this);
         if(_loc4_ || param1)
         {
            _loc2_.iconEvent = param1;
            if(!(_loc3_ && param1))
            {
               addr0050:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(_loc3_)
         {
            if(Point.distance(this._tolerancePoint,_loc2_) > 30)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0056:
                  this._clickLock = true;
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._tolerancePoint = new Point(param1.stageX,param1.stageY);
            if(_loc3_)
            {
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            }
         }
      }
      
      protected function onMouseClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!this._clickLock)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this.dispatchMouseClick();
                  if(!_loc2_)
                  {
                     this.dispatchRollOut();
                     if(!_loc2_)
                     {
                        addr0057:
                        this._clickLock = false;
                     }
                     §§goto(addr005c);
                  }
                  §§goto(addr0057);
               }
               §§goto(addr005c);
            }
            §§goto(addr0057);
         }
         addr005c:
      }
      
      public function changeInteractionstate(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._hitzoneContainer.mouseEnabled = param1;
         }
      }
   }
}

