package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigGroundRestrictionDTO
   {
      
      private var _id:Number;
      
      private var _playfieldId:Number;
      
      private var _configGroundRestrictionShapes:Vector.<ConfigGroundRestrictionShapeDTO>;
      
      private var _whiteList:Boolean;
      
      private var _blackList:Boolean;
      
      private var _configTagIds:Vector.<Number>;
      
      private var _groundType:String;
      
      public function ConfigGroundRestrictionDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:ConfigGroundRestrictionShapeDTO = null;
         if(!_loc7_)
         {
            super();
            if(!(_loc7_ && Boolean(param1)))
            {
               this._id = param1.id;
               if(!(_loc7_ && Boolean(param1)))
               {
                  this._playfieldId = param1.pid;
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     this._whiteList = param1.bw;
                     if(_loc8_ || Boolean(this))
                     {
                        addr0081:
                        §§push(this);
                        §§push(this._whiteList);
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§push(!§§pop());
                        }
                        §§pop()._blackList = §§pop();
                        if(!_loc7_)
                        {
                           this._groundType = param1.gt;
                           addr009f:
                           if(!_loc7_)
                           {
                              addr00bd:
                              this._configGroundRestrictionShapes = new Vector.<ConfigGroundRestrictionShapeDTO>();
                           }
                        }
                     }
                     addr00cc:
                     var _loc5_:int = 0;
                     var _loc6_:* = param1.shape;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc5_,_loc6_);
                           _loc4_ = new ConfigGroundRestrictionShapeDTO(_loc2_);
                           if(_loc8_)
                           {
                              this._configGroundRestrictionShapes.push(_loc4_);
                           }
                           continue;
                        }
                        if(!_loc7_)
                        {
                           if(_loc8_)
                           {
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 this._configTagIds = new Vector.<Number>();
                                 if(!_loc7_)
                                 {
                                    _loc5_ = 0;
                                    if(_loc8_)
                                    {
                                       addr0157:
                                       _loc6_ = param1.gid;
                                       if(_loc7_)
                                       {
                                       }
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc6_,_loc5_));
                                          break loop0;
                                       }
                                       addr0186:
                                       addr017f:
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr0157);
                        }
                        §§goto(addr0186);
                     }
                     while(§§pop())
                     {
                        _loc3_ = §§nextvalue(_loc5_,_loc6_);
                        if(!_loc7_)
                        {
                           this._configTagIds.push(_loc3_);
                        }
                        §§goto(addr017f);
                     }
                     §§goto(addr0186);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr0081);
            }
            §§goto(addr009f);
         }
         §§goto(addr00cc);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get playfieldId() : Number
      {
         return this._playfieldId;
      }
      
      public function get configGroundRestrictionShapes() : Vector.<ConfigGroundRestrictionShapeDTO>
      {
         return this._configGroundRestrictionShapes;
      }
      
      public function get whiteList() : Boolean
      {
         return this._whiteList;
      }
      
      public function get configTagIds() : Vector.<Number>
      {
         return this._configTagIds;
      }
      
      public function get groundType() : String
      {
         return this._groundType;
      }
      
      public function get blackList() : Boolean
      {
         return this._blackList;
      }
   }
}

