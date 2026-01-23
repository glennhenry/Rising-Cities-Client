package com.baseoneonline.flash.tile
{
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   
   public class AStarTile
   {
      
      private var _types:Vector.<String>;
      
      public var id:int;
      
      public function AStarTile(param1:Vector.<String>, param2:int = -1)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super();
            if(_loc4_)
            {
               this.id = param2;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0044:
                  this._types = param1;
               }
               return;
            }
         }
         §§goto(addr0044);
      }
      
      public function getUsable(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(this._types.length)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(param1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(Terrain.TYPE_ALL_TERRAINS);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0073:
                              §§push(this._types.indexOf(param1) == -1);
                              if(!_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 §§goto(addr00b2);
                              }
                           }
                           else
                           {
                              addr009d:
                              addr00a4:
                              addr009e:
                              §§push(param1 == Terrain.TYPE_ALL_TERRAINS);
                              if(_loc3_ || _loc3_)
                              {
                                 addr00b2:
                                 return §§pop();
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr009d);
            }
            else
            {
               §§push(false);
            }
            addr00b4:
            return §§pop();
         }
         §§goto(addr0073);
      }
      
      public function addType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  if(this._types.indexOf(param1) == -1)
                  {
                     if(!_loc3_)
                     {
                        addr0037:
                        this._types.push(param1);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      public function removeType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(this._types.indexOf(param1) != -1)
         {
            this._types.splice(this._types.indexOf(param1),1);
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      public function cleanTile() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._types = new Vector.<String>();
         }
      }
   }
}

