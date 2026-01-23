package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class CinemaFieldObjectVo extends SpecialFieldObjectVo
   {
      
      private var _viewsToday:uint = 0;
      
      private var _maxViews:uint = 0;
      
      private var _disabled:Boolean;
      
      private var _inMaintenance:Boolean;
      
      public function CinemaFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      override public function get useConstructionAsset() : Boolean
      {
         return false;
      }
      
      override public function isUnderConstruction() : Boolean
      {
         return false;
      }
      
      public function get videoAvailable() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.disabled);
            if(_loc2_ || _loc1_)
            {
               §§push(!§§pop());
               if(!(_loc1_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0057:
                           §§push(this.inMaintenance);
                           if(!_loc1_)
                           {
                              §§push(!§§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 addr0078:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr0089:
                                       §§push(this._viewsToday < this._maxViews);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§goto(addr00a0);
                                       }
                                    }
                                    else
                                    {
                                       addr00a1:
                                       §§push(false);
                                    }
                                    §§goto(addr00a2);
                                 }
                                 §§goto(addr00a1);
                              }
                              addr00a2:
                              return §§pop();
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr0078);
               }
               addr00a0:
               return §§pop();
            }
            §§goto(addr0078);
         }
         §§goto(addr0057);
      }
      
      public function set viewsToday(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._viewsToday = param1;
         }
      }
      
      public function set maxViews(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._maxViews = param1;
         }
      }
      
      public function get disabled() : Boolean
      {
         return this._disabled;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._disabled = param1;
         }
      }
      
      public function get inMaintenance() : Boolean
      {
         return this._inMaintenance;
      }
      
      public function set inMaintenance(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._inMaintenance = param1;
         }
      }
   }
}

