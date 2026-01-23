package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.core.IIsoContainer;
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.graphics.SolidColorFill;
   
   public class PlaneGridView extends IsoGroup
   {
      
      private var _tileWidthNumber:int;
      
      private var _tileHeightNumber:int;
      
      private var _tileSize:Number;
      
      private var _color:uint = 65280;
      
      private var _paramsSet:Boolean;
      
      public function PlaneGridView()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function setGridSize(param1:int, param2:int, param3:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this._tileWidthNumber);
            if(_loc5_ || Boolean(param2))
            {
               §§push(param1);
               if(_loc5_ || Boolean(param3))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     if(!_loc6_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(_loc5_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    addr006a:
                                    addr0069:
                                    §§push(this._tileWidthNumber == param1);
                                    if(!(_loc6_ && Boolean(param2)))
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          addr0095:
                                          var _temp_6:* = §§pop();
                                          addr0096:
                                          §§push(_temp_6);
                                          if(!_temp_6)
                                          {
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§goto(addr00a8);
                                             }
                                             §§goto(addr00bb);
                                          }
                                          §§goto(addr00bc);
                                       }
                                    }
                                    §§goto(addr00a8);
                                 }
                                 §§goto(addr00af);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0096);
                     }
                     addr00a8:
                     §§pop();
                     if(_loc5_)
                     {
                        addr00bc:
                        addr00af:
                        §§push(this._tileSize == param3);
                        if(!_loc6_)
                        {
                           addr00bb:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§goto(addr00ce);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr0120);
                     }
                     addr00ce:
                     this._tileWidthNumber = param1;
                     if(_loc5_ || Boolean(param3))
                     {
                        this._tileHeightNumber = param2;
                        if(!(_loc6_ && Boolean(param3)))
                        {
                           addr0101:
                           this._tileSize = param3;
                           if(_loc5_ || Boolean(this))
                           {
                              addr0114:
                              this.drawBuildingGrid();
                              if(!_loc6_)
                              {
                                 addr0120:
                                 this._paramsSet = true;
                              }
                              §§goto(addr0126);
                           }
                           §§goto(addr0120);
                        }
                     }
                     addr0126:
                     return;
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr006a);
            }
            §§goto(addr0069);
         }
         §§goto(addr0101);
      }
      
      private function drawBuildingGrid() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IsoRectangle = null;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            this.removeAllChildren();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(this._tileWidthNumber);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        _loc3_ = §§pop();
                        if(_loc4_)
                        {
                           addr0147:
                           this.render();
                           break;
                        }
                        do
                        {
                           §§push(_loc3_);
                        }
                        while(_loc5_ || Boolean(_loc2_));
                        
                        continue loop1;
                        addr00ed:
                     }
                     while(true)
                     {
                        §§push(this._tileHeightNumber);
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              _loc2_++;
                              if(!_loc5_)
                              {
                                 break loop2;
                              }
                           }
                           continue loop0;
                        }
                        _loc1_ = new IsoRectangle();
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           _loc1_.width = this._tileSize;
                           if(_loc5_)
                           {
                              _loc1_.length = this._tileSize;
                              if(!_loc4_)
                              {
                                 _loc1_.x = _loc2_ * this._tileSize;
                                 if(_loc5_ || Boolean(this))
                                 {
                                    _loc1_.y = _loc3_ * this._tileSize;
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                       addr00b8:
                                       _loc1_.fill = new SolidColorFill(this._color,0.5);
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          this.addChild(_loc1_);
                                          if(!(_loc4_ && Boolean(_loc3_)))
                                          {
                                             addr00eb:
                                             _loc3_++;
                                          }
                                       }
                                       §§goto(addr00ed);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00b8);
                           }
                        }
                        §§goto(addr00eb);
                     }
                     continue;
                  }
                  if(_loc4_ && Boolean(_loc2_))
                  {
                     break;
                  }
                  §§goto(addr0147);
               }
               break;
            }
            break;
         }
      }
      
      public function set color(param1:uint) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:IIsoContainer = null;
         if(_loc5_ || Boolean(_loc2_))
         {
            this._color = param1;
            if(_loc5_)
            {
               addr0032:
               if(this._paramsSet)
               {
                  if(!_loc6_)
                  {
                     this.drawBuildingGrid();
                  }
                  §§goto(addr0056);
               }
               §§goto(addr00b3);
            }
            addr0056:
            for each(_loc2_ in this.displayListChildrenArray)
            {
               if(_loc5_)
               {
                  if(_loc2_ is IsoRectangle)
                  {
                     if(_loc5_)
                     {
                        (_loc2_ as IsoRectangle).fill = new SolidColorFill(this._color,0.5);
                     }
                  }
               }
            }
            if(_loc5_)
            {
               addr00b3:
               this.render();
            }
            return;
         }
         §§goto(addr0032);
      }
      
      public function set visible(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.container.visible = param1;
         }
      }
   }
}

