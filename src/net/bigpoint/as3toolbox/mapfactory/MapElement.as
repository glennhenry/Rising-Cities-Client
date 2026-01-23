package net.bigpoint.as3toolbox.mapfactory
{
   public class MapElement implements IMapElement
   {
      
      internal var tileIDs:Vector.<int>;
      
      public function MapElement()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.tileIDs = new Vector.<int>();
            if(_loc2_ || _loc2_)
            {
               super();
            }
         }
      }
      
      public function getTileIDs() : Vector.<int>
      {
         return this.tileIDs;
      }
      
      public function getTileID(param1:int = 0) : int
      {
         return this.tileIDs[param1];
      }
      
      public function setTileID(param1:int, param2:int = 0) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.tileIDs[param2] = param1;
         }
      }
      
      public function addTileID(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.tileIDs.push(param1);
         }
      }
      
      public function removeTileID(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.tileIDs.length)
            {
               if(this.tileIDs[_loc2_] == param1)
               {
                  if(_loc4_ && Boolean(this))
                  {
                     continue loop0;
                  }
                  this.tileIDs.splice(_loc2_,1);
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§push(§§pop() - 1);
                     if(_loc4_)
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
               _loc2_++;
               if(_loc4_ && Boolean(this))
               {
                  break;
               }
               continue loop0;
            }
            break;
         }
      }
   }
}

