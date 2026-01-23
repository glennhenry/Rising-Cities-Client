package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNeedRequireDTO
   {
      
      private var _configOutputList:Vector.<ConfigOutputDTO>;
      
      private var _requiredConfigBuildingIds:Vector.<Number>;
      
      public function ConfigNeedRequireDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         if(!(_loc6_ && Boolean(this)))
         {
            super();
            if(_loc7_)
            {
               addr0033:
               this._requiredConfigBuildingIds = new Vector.<Number>();
               if(!(_loc6_ && Boolean(param1)))
               {
                  this._configOutputList = new Vector.<ConfigOutputDTO>();
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = param1.nid;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc5_,_loc4_));
               if(!_loc7_)
               {
                  break;
               }
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc4_,_loc5_);
                  if(_loc7_ || Boolean(param1))
                  {
                     this._requiredConfigBuildingIds.push(_loc2_);
                  }
                  continue;
               }
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  if(_loc7_)
                  {
                     if(_loc7_)
                     {
                        _loc4_ = 0;
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           _loc5_ = param1.a;
                           while(true)
                           {
                              §§push(§§hasnext(_loc5_,_loc4_));
                              break loop0;
                           }
                           addr010f:
                           addr0108:
                        }
                        addr0111:
                     }
                     return;
                  }
                  §§goto(addr0111);
               }
               §§goto(addr010f);
            }
            while(§§pop())
            {
               _loc3_ = §§nextvalue(_loc4_,_loc5_);
               if(_loc7_)
               {
                  this._configOutputList.push(new ConfigOutputDTO(_loc3_));
               }
               §§goto(addr0108);
            }
            §§goto(addr010f);
         }
         §§goto(addr0033);
      }
      
      public function get configOutputList() : Vector.<ConfigOutputDTO>
      {
         return this._configOutputList;
      }
      
      public function get requiredConfigBuildingIds() : Vector.<Number>
      {
         return this._requiredConfigBuildingIds;
      }
   }
}

