/**
 * This file is part of OXID eShop Azure Theme.
 *
 * OXID eShop Azure Theme is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * OXID eShop Azure Theme is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OXID eShop Azure Theme.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @link      http://www.oxid-esales.com
 * @copyright (C) OXID eSales AG 2003-2017
 * @version   OXID eShop Azure Theme
 */
( function ( $ ) {

    /**
     * Beta note handler
     */
    oxCompareLinks = {

        /**
         * Update compare links, hide add link and show remove link.
         *
         * @param {Array} list
         */
        updateLinks: function(list)
        {
            if (list) {
                $.each(list, function(id) {
                    $("a.compare.add[data-aid='"+id+"']").css('display','none');
                    $("a.compare.remove[data-aid='"+id+"']").css('display','block');
                });
            }
        }
    };

    /**
     * CompareLinks widget
     */
    $.widget("ui.oxCompareLinks", oxCompareLinks );

})( jQuery );
