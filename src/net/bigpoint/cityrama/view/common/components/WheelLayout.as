package net.bigpoint.cityrama.view.common.components
{
   import mx.core.IVisualElement;
   import spark.layouts.supportClasses.LayoutBase;
   
   public class WheelLayout extends LayoutBase
   {
      
      private var _scrollPosition:Number = 0;
      
      private var _elementWidth:Number = 100;
      
      public function WheelLayout()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function set elementWidth(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._elementWidth = param1;
         }
      }
      
      public function get scrollPosition() : Number
      {
         return this._scrollPosition;
      }
      
      public function set scrollPosition(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(1);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(param1);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr0056:
                           §§push(§§pop() - Math.floor(param1));
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && _loc2_))
                              {
                                 param1 = §§pop();
                                 if(!_loc2_)
                                 {
                                    addr00d4:
                                    addr00d8:
                                    if(this._scrollPosition != param1)
                                    {
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          addr00ea:
                                          this._scrollPosition = param1;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             target.invalidateDisplayList();
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              addr00bc:
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 addr00c2:
                                 param1 = §§pop();
                                 if(_loc3_)
                                 {
                                    §§goto(addr00d4);
                                 }
                                 §§goto(addr00ea);
                              }
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr00d4);
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0097:
                        if(§§pop() < 0)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              addr00a8:
                              §§push(Math.ceil(Math.abs(param1)) - param1);
                              if(!_loc2_)
                              {
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr00d4);
                     }
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr0097);
            }
            §§goto(addr0056);
         }
         §§goto(addr00a8);
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:IVisualElement = null;
         if(!(_loc6_ && Boolean(this)))
         {
            super.updateDisplayList(param1,param2);
         }
         var _loc3_:int = int(target.numElements);
         var _loc5_:int = 0;
         while(_loc5_ < target.numElements)
         {
            _loc4_ = target.getElementAt(_loc5_) as IVisualElement;
            _loc4_.x = param1 * 0.5 + (_loc5_ - 0.5) * this._elementWidth - this._scrollPosition * this._elementWidth * _loc3_;
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               if(_loc4_.x > param1)
               {
                  if(!(_loc7_ || Boolean(param2)))
                  {
                     continue;
                  }
                  _loc4_.x -= this._elementWidth * _loc3_;
                  if(_loc7_)
                  {
                     addr00be:
                     if(_loc4_.x + this._elementWidth < 0)
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        addr00e0:
                        _loc4_.x += this._elementWidth * _loc3_;
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     _loc5_++;
                     continue;
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr00be);
            }
            §§goto(addr00e0);
         }
      }
   }
}

